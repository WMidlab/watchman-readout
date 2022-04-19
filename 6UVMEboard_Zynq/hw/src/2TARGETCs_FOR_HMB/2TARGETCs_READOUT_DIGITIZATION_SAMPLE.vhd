library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TARGETC_pkg.all;

entity TwoTARGETC_RDAD_WL_SMPL is
	Port (
	--RST : 			in	STD_Logic;

	DISCH_PERIOD :	in	std_logic_vector(15 downto 0);
	INCR_WAIT_PERIOD:	in std_logic_vector(15 downto 0);

	ClockBus:		in T_ClockBus;
	--TimeCounter:	in std_logic_vector(63 downto 0);

	RDAD_CLK:		out	std_logic;		-- Pin#61
	RDAD_SIN:		out	std_logic;		-- Pin#62
	RDAD_DIR:		out	std_logic;		-- Pin#63

	-- Fifo from storage
    RDAD_ReadEn  :	out	std_logic;
    RDAD_DataOut : 	in	std_logic_vector(8 downto 0); 
    --RDAD_CLK     :	out	std_logic;	-- RDAD CLK
    RDAD_Empty	: 	in 	std_logic;

	-- FIFO IN for Digiting
    DIG_Full	: in	std_logic;
    DIG_DataIn	: out	std_logic_vector(8 downto 0);
    DIG_WriteEn	: out	std_logic;
    --DIG_CLK   	: in	std_logic

	RAMP:			out	std_logic;
	GCC_RESET:		out	std_logic;

	HSCLK : 			out  STD_LOGIC;

	DO_A_B : 			in std_logic_vector(31 downto 0);
	
	SS_INCR:		out std_logic;
	SS_RESET:		out std_logic;

	CtrlBus_IxSL:		in 	T_CtrlBus_IxSL; --Outputs from Control Master
	--CtrlBus_OxSL:		out	T_CtrlBus_OxSL; --Outputs from Control Master

	--Output for control
	WindowBusy:		out std_logic;
	RAMP_CNT:		out std_logic;
	DO_BUS:			out eDO_BUS_TYPE_2TC;
	SSvalid:		out std_logic;

	--Channels
	A_CH0 :			out	std_logic_vector(11 downto 0);
	A_CH1 :			out	std_logic_vector(11 downto 0);
	A_CH2 :			out	std_logic_vector(11 downto 0);
	A_CH3 :			out	std_logic_vector(11 downto 0);

	A_CH4 :			out	std_logic_vector(11 downto 0);
	A_CH5 :			out	std_logic_vector(11 downto 0);
	A_CH6 :			out	std_logic_vector(11 downto 0);
	A_CH7 :			out	std_logic_vector(11 downto 0);

	A_CH8 :			out	std_logic_vector(11 downto 0);
	A_CH9 :			out	std_logic_vector(11 downto 0);
	A_CH10 :			out	std_logic_vector(11 downto 0);
	A_CH11 :			out	std_logic_vector(11 downto 0);

	A_CH12 :			out	std_logic_vector(11 downto 0);
	A_CH13 :			out	std_logic_vector(11 downto 0);
	A_CH14 :			out	std_logic_vector(11 downto 0);
	A_CH15 :			out	std_logic_vector(11 downto 0);

	B_CH0 :			out	std_logic_vector(11 downto 0);
	B_CH1 :			out	std_logic_vector(11 downto 0);
	B_CH2 :			out	std_logic_vector(11 downto 0);
	B_CH3 :			out	std_logic_vector(11 downto 0);

	B_CH4 :			out	std_logic_vector(11 downto 0);
	B_CH5 :			out	std_logic_vector(11 downto 0);
	B_CH6 :			out	std_logic_vector(11 downto 0);
	B_CH7 :			out	std_logic_vector(11 downto 0);

	B_CH8 :			out	std_logic_vector(11 downto 0);
	B_CH9 :			out	std_logic_vector(11 downto 0);
	B_CH10 :			out	std_logic_vector(11 downto 0);
	B_CH11 :			out	std_logic_vector(11 downto 0);

	B_CH12 :			out	std_logic_vector(11 downto 0);
	B_CH13 :			out	std_logic_vector(11 downto 0);
	B_CH14 :			out	std_logic_vector(11 downto 0);
	B_CH15 :			out	std_logic_vector(11 downto 0);

	--Request and Acknowledge -
	Handshake_IxSEND:	in 	T_Handshake_IxSEND;
	Handshake_Data:		out T_Handshake_SS_FIFO;
	Handshake_OxSEND:	out T_Handshake_OxSEND
	);

end TwoTARGETC_RDAD_WL_SMPL;

architecture Behavioral of TwoTARGETC_RDAD_WL_SMPL is

	component clkcrossing_buf is
		generic(
			NBITS : integer := 32
		);
		port (
			nrst:	in	std_logic;
			DA: 	in	std_logic_vector(NBITS-1 downto 0);
			QB:		out	std_logic_vector(NBITS-1 downto 0);
			ClkA:	in	std_logic;
			ClkB:	in	std_logic
		);
	end component clkcrossing_buf;


      component SyncBit is 
           generic (
              SYNC_STAGES_G  : integer := 2;
              CLK_POL_G      : std_logic := '1';
              RST_POL_G      : std_logic := '1';
              INIT_STATE_G   : std_logic := '0';
              GATE_DELAY_G   : time := 1 ns
           );
           port ( 
              -- Clock and reset
              clk         : in  std_logic;
              rst         : in  std_logic := '0';
              -- Incoming bit, asynchronous
              asyncBit    : in  std_logic;
              -- Outgoing bit, synced to clk
              syncBit     : out std_logic
           ); 
        end component;


component SyncBuffer is 
 generic(
		NBITS : integer := 32
	);
	port (
	      -- Clock and reset
		Clk:	in	std_logic;
		nrst:	in	std_logic;
      -- Incoming buffer, asynchronous
		asyncBuffer:	in	std_logic_vector(NBITS-1 downto 0);
      -- Outgoing buffer, synced to clk
		syncBuffer:     out	std_logic_vector(NBITS-1 downto 0)
--		ClkA:	in	std_logic;
	);
           end component;



	--State
	type state_type is (
		IDLE,
		READY,
		RESPREADY,
		SET_RDAD_ADDR,

		INCRWAIT,
		LOW_SET0,
		LOW_SET1,
		HIGH_SET1,
		HIGH_SET0,

		REQUEST,
		RESP_ACK,
		REQ_GRANT,
		IDLERESET,
		FIFOTEST_DATA,
		FIFOTEST_REQUEST,
		FIFOTEST_RESP_ACK,
		FIFOTEST_REQ_GRANT
	);
	signal hsout_stm : state_type := IDLE;

	-- RDAD : Reading the window for Digitazition STM
	type rdad_state_type is (
		IDLE,
		READY,

		FIFOREAD,
		FIFOEVAL,
		WDO_SET_RDAD_ADDR,
		WDO_LOW_SET0, WDO_LOW_SET1, WDO_HIGH_SET1, WDO_HIGH_SET0,
		WDO_VALID,
		WDO_RESPVALID
	);
	signal rdad_stm : rdad_state_type := IDLE;


			--State
	type wilkinson_type is (
		IDLE,
		READY,
		RESPREADY,

		CLEAR,
		START,

		VALID,
		RESPVALID,
		SAMPLE_END,
		RAMP_DISCH
	);
	signal wlstate : wilkinson_type := IDLE;

	signal StoAddr : std_logic_vector(7 downto 0) := (others => '0');

	signal RDAD_Addr_s	:std_logic_vector(8 downto 0) := (others => '0');
	signal RDADEndWindow:std_logic_vector(8 downto 0) := (others => '0');

	signal BitCnt : integer := 8;
	signal StorageBusy : std_logic := '1';

	signal RDAD_CLK_intl:	std_logic;
	signal RDAD_SIN_intl:	std_logic;
	signal RDAD_DIR_intl:	std_logic;

	signal RAMP_intl:		std_logic;
	signal GCC_RESET_intl:	std_logic;

	signal SS_RESET_intl: std_logic;
	signal SS_INCR_intl: std_logic;
	signal HSCLK_intl :	std_logic := '0';

	type T_HANDSHAKE is record
		busy:		std_logic;
		valid:		std_logic;
		ready:		std_logic;
		response:	std_logic;
	end record;

	signal STO:		T_HANDSHAKE;
	signal RDAD:	T_HANDSHAKE;
	signal WL:		T_HANDSHAKE;
	signal SS:		T_HANDSHAKE;

	signal WindowCnt : std_logic_vector(8 downto 0);
	signal WL_CNT_EN : std_logic := '0';
	signal WL_CNT_INTL	: UNSIGNED(15 downto 0) := x"0000";

	signal SS_CNT_EN : std_logic := '0';
	signal SS_CNT_INTL	: UNSIGNED(15 downto 0) := x"0000";

  	signal SSBitCnt :	integer := 0;
  	signal SSCnt :	integer := 0;
	signal ss_incr_flg : std_logic := '0';


	signal CtrlDO_intl :	eDO_BUS_TYPE_2TC;
	signal TestFIFO_window : integer;
	signal TestFIFO_cnt : integer;

	type fiforec is record
		wr1 : std_logic;
		wr2 : std_logic;
		addr: std_logic_vector(7 downto 0);
	end record;
	signal fifo_intl : fiforec;
	signal NBRWINDOW_clkd : std_logic_vector(31 downto 0);

	--Ack Request signals sets
	signal acknowledge_intl : 	std_logic;
	signal busy_intl : 			std_logic;
	signal Handshake_SEND_intl: T_Handshake_SEND_intl;

	signal A_CH0_intl : std_logic_vector(11 downto 0);
	signal A_CH1_intl : std_logic_vector(11 downto 0);
	signal A_CH2_intl : std_logic_vector(11 downto 0);
	signal A_CH3_intl : std_logic_vector(11 downto 0);

	signal A_CH4_intl : std_logic_vector(11 downto 0);
	signal A_CH5_intl : std_logic_vector(11 downto 0);
	signal A_CH6_intl : std_logic_vector(11 downto 0);
	signal A_CH7_intl : std_logic_vector(11 downto 0);

	signal A_CH8_intl : std_logic_vector(11 downto 0);
	signal A_CH9_intl : std_logic_vector(11 downto 0);
	signal A_CH10_intl : std_logic_vector(11 downto 0);
	signal A_CH11_intl : std_logic_vector(11 downto 0);

	signal A_CH12_intl : std_logic_vector(11 downto 0);
	signal A_CH13_intl : std_logic_vector(11 downto 0);
	signal A_CH14_intl : std_logic_vector(11 downto 0);
	signal A_CH15_intl : std_logic_vector(11 downto 0);
	
	signal B_CH0_intl : std_logic_vector(11 downto 0);
	signal B_CH1_intl : std_logic_vector(11 downto 0);
	signal B_CH2_intl : std_logic_vector(11 downto 0);
	signal B_CH3_intl : std_logic_vector(11 downto 0);

	signal B_CH4_intl : std_logic_vector(11 downto 0);
	signal B_CH5_intl : std_logic_vector(11 downto 0);
	signal B_CH6_intl : std_logic_vector(11 downto 0);
	signal B_CH7_intl : std_logic_vector(11 downto 0);

	signal B_CH8_intl : std_logic_vector(11 downto 0);
	signal B_CH9_intl : std_logic_vector(11 downto 0);
	signal B_CH10_intl : std_logic_vector(11 downto 0);
	signal B_CH11_intl : std_logic_vector(11 downto 0);

	signal B_CH12_intl : std_logic_vector(11 downto 0);
	signal B_CH13_intl : std_logic_vector(11 downto 0);
	signal B_CH14_intl : std_logic_vector(11 downto 0);
	signal B_CH15_intl : std_logic_vector(11 downto 0);

	signal state_num : std_logic_vector(4 downto 0);
	signal rdad_num  : std_logic_vector(3 downto 0);
	signal wilkin_num : std_logic_vector(3 downto 0);

    attribute mark_debug : string;
        attribute syn_keep : string;
attribute keep_hierarchy : string;

attribute keep_hierarchy of Behavioral : architecture is "yes";
    
    attribute mark_debug of HSCLK: signal is "true";
    attribute mark_debug of SS_CNT_INTL: signal is "true";
    attribute mark_debug of RAMP: signal is "true";
--    attribute mark_debug of RAMP_CNT: signal is "true";
--    attribute mark_debug of RDAD_CLK: signal is "true";
--    attribute mark_debug of RDAD_SIN: signal is "true";
--    attribute mark_debug of RDAD_DIR: signal is "true";
--    attribute mark_debug of CH0: signal is "true";
--    attribute mark_debug of GCC_RESET: signal is "true";
    attribute mark_debug of SS_INCR: signal is "true";
    attribute mark_debug of WL_CNT_INTL: signal is "true";
--    attribute mark_debug of DO_A_B: signal is "true";
	attribute mark_debug of state_num: signal is "true";
	attribute mark_debug of rdad_num: signal is "true";
	attribute mark_debug of wilkin_num: signal is "true";    
--	attribute syn_keep of DO_A_B: signal is "true";
--    attribute mark_debug of SSBitCnt: signal is "true";    
--	attribute mark_debug of SSCnt: signal is "true"; 
--	attribute mark_debug of A_CH0_intl: signal is "true"; 
   

	

	attribute syn_keep of A_CH0_intl: signal is "true";
	attribute syn_keep of A_CH1_intl: signal is "true";
	attribute syn_keep of A_CH2_intl: signal is "true";
	attribute syn_keep of A_CH3_intl: signal is "true";
	attribute syn_keep of A_CH4_intl: signal is "true";
	attribute syn_keep of A_CH5_intl: signal is "true";
	attribute syn_keep of A_CH6_intl: signal is "true";
	attribute syn_keep of A_CH7_intl: signal is "true";
	attribute syn_keep of A_CH8_intl: signal is "true";
	attribute syn_keep of A_CH9_intl: signal is "true";
	attribute syn_keep of A_CH10_intl: signal is "true";
	attribute syn_keep of A_CH11_intl: signal is "true";
	attribute syn_keep of A_CH12_intl: signal is "true";
	attribute syn_keep of A_CH13_intl: signal is "true";
	attribute syn_keep of A_CH14_intl: signal is "true";
	attribute syn_keep of A_CH15_intl: signal is "true";
	
	attribute syn_keep of B_CH0_intl: signal is "true";
	attribute syn_keep of B_CH1_intl: signal is "true";
	attribute syn_keep of B_CH2_intl: signal is "true";
	attribute syn_keep of B_CH3_intl: signal is "true";
	attribute syn_keep of B_CH4_intl: signal is "true";
	attribute syn_keep of B_CH5_intl: signal is "true";
	attribute syn_keep of B_CH6_intl: signal is "true";
	attribute syn_keep of B_CH7_intl: signal is "true";
	attribute syn_keep of B_CH8_intl: signal is "true";
	attribute syn_keep of B_CH9_intl: signal is "true";
	attribute syn_keep of B_CH10_intl: signal is "true";
	attribute syn_keep of B_CH11_intl: signal is "true";
	attribute syn_keep of B_CH12_intl: signal is "true";
	attribute syn_keep of B_CH13_intl: signal is "true";
	attribute syn_keep of B_CH14_intl: signal is "true";
	attribute syn_keep of B_CH15_intl: signal is "true";



    




	
begin
	state_num <= "00000" when hsout_stm	= IDLE else
				 "00001" when hsout_stm = READY else
				 "00010" when hsout_stm = RESPREADY else
				 "00011" when hsout_stm = SET_RDAD_ADDR else
				 "00100" when hsout_stm = INCRWAIT  else
				 "00101" when hsout_stm = LOW_SET0 else
				 "00110" when hsout_stm = LOW_SET1 else
				 "00111" when hsout_stm = HIGH_SET1 else
				 "01000" when hsout_stm = HIGH_SET0 else
				 "01001" when hsout_stm = REQUEST else
				 "01010" when hsout_stm = RESP_ACK else
				 "01011" when hsout_stm = REQ_GRANT else
				 "01100" when hsout_stm = IDLERESET else
				 "01101" when hsout_stm = FIFOTEST_DATA else
				 "01110" when hsout_stm = FIFOTEST_REQUEST else
				 "01111" when hsout_stm = FIFOTEST_RESP_ACK else
				 "10000" when hsout_stm = FIFOTEST_REQ_GRANT else
				 "11111";
	
	rdad_num <= "0000" when rdad_stm = IDLE else
				"0001" when rdad_stm = READY else
				"0010" when rdad_stm = FIFOREAD else
				"0011" when rdad_stm = FIFOEVAL else
				"0100" when rdad_stm = WDO_SET_RDAD_ADDR else
				"0101" when rdad_stm = WDO_LOW_SET0 else
				"0110" when rdad_stm = WDO_LOW_SET1 else
				"0111" when rdad_stm = WDO_HIGH_SET1 else
				"1000" when rdad_stm = WDO_HIGH_SET0 else
				"1001" when rdad_stm = WDO_VALID else
				"1010" when rdad_stm = WDO_RESPVALID else
				"1111";

	wilkin_num <= 	"0000" when wlstate = IDLE else
					"0001" when wlstate = READY else
					"0010" when wlstate = RESPREADY else
					"0011" when wlstate = CLEAR else
					"0100" when wlstate = START else
					"0101" when wlstate = VALID else
					"0110" when wlstate = RESPVALID else 
					"0111" when wlstate = SAMPLE_END else
					"1000" when wlstate = RAMP_DISCH else
					"1111";

	--Clock Domain Handshake
	ACK_CLKBUF : clkcrossing_buf
		generic map(
			NBITS => 1
		)
		port map (
			nrst	=> CtrlBus_IxSL.SW_nRST,
			DA(0)	=> Handshake_IxSEND.ACK,
			QB(0)	=> acknowledge_intl,
			ClkA	=> Handshake_IxSEND.ACLK, --foreign clock
			ClkB	=> ClockBus.HSCLK
		);
		
-- CHECK: WHEN THE CDC IS DONE FOR ACK WITH  SYNCBIT MODULE, TPG FAILS IN PS.
	--Clock Domain Handshake

--SyncBitACKNOWLEDGE: SyncBit
--       generic map (
--          SYNC_STAGES_G  => 2,
--          CLK_POL_G      => '1',
--          RST_POL_G      => '1',
--          INIT_STATE_G   => '0',
--          GATE_DELAY_G   => 1 ns
--       )
       
--       port map ( 
--          -- Clock and reset
--          clk  => ClockBus.HSCLK,
--          rst   => CtrlBus_IxSL.SW_nRST,
--          -- Incoming bit, asynchronous
--          asyncBit =>  Handshake_IxSEND.ACK,
--          -- Outgoing bit, synced to clk
--          syncBit   => acknowledge_intl
--       ); 



--	BUSY_CLKBUF : clkcrossing_buf
--			generic map(
--				NBITS => 1
--			)
--			port map (
--				nrst	=> CtrlBus_IxSL.SW_nRST,
--				DA(0)	=> Handshake_IxSEND.BUSY,
--				QB(0)	=> busy_intl,
--				ClkA	=> Handshake_IxSEND.ACLK, --foreign clock
--				ClkB	=> ClockBus.HSCLK
--			);


  SyncBitBUSY: SyncBit
       generic map (
          SYNC_STAGES_G  => 2,
          CLK_POL_G      => '1',
          RST_POL_G      => '1',
          INIT_STATE_G   => '0',
          GATE_DELAY_G   => 1 ns
       )
       
       port map ( 
          -- Clock and reset
          clk  => ClockBus.HSCLK,
          rst   => CtrlBus_IxSL.SW_nRST,
          -- Incoming bit, asynchronous
          asyncBit =>  Handshake_IxSEND.BUSY,
          -- Outgoing bit, synced to clk
          syncBit   => busy_intl
       ); 






	Handshake_OxSEND.Req	<= Handshake_SEND_intl.REQ;
	Handshake_OxSEND.RClk	<= ClockBus.HSCLK;

	-- -- --------------------------------------------------------------------------------
	-- -- Unused signals from Bus
	-- CtrlBus_OxSL.TC_BUS	<= (others => 'Z');
	-- CtrlBus_OxSL.BUSY	<= 'Z';
	-- CtrlBus_OxSL.PLL_LOCKED <= 'Z';
	-- CtrlBus_OxSL.FIFOBusy <= 'Z';
	-- CtrlBus_OxSL.Cnt_AXIS <= (others => 'Z');
	-- CtrlBus_OxSL.RBNbrOfPackets <= (others => 'Z');
	--
	-- -- --------------------------------------------------------------------------------

--	BUF_NBRWINDOWS : clkcrossing_buf
--		generic map(
--			NBITS => 32
--		)
--		port map(
--			nrst	=>	CtrlBus_IxSL.SW_nRST,
--			DA		=>	CtrlBus_IxSL.NBRWINDOW,
--			QB		=> 	NBRWINDOW_clkd,
--			ClkA	=> 	ClockBus.CLK125MHz,
--			ClkB	=> ClockBus.HSCLK
--		);
		
		
        SyncBuffer_NBRWINDOWS : SyncBuffer
                generic map(
                    NBITS => 32
                )
                port map(
                    clk    =>    ClockBus.AXI_CLK,
                    nrst        =>     CtrlBus_IxSL.SW_nRST, 
                    asyncBuffer    =>     CtrlBus_IxSL.NBRWINDOW,
                    syncBUffer    => NBRWINDOW_clkd
                );

	--counter process
	process (ClockBus.WL_CLK,WL_CNT_EN) begin
		if (WL_CNT_EN = '0') then
			WL_CNT_INTL <= (others => '0');
		elsif (rising_edge(ClockBus.WL_CLK)) then
			if WL_CNT_EN = '1' then
				WL_CNT_INTL <= WL_CNT_INTL + 1;
			end if;
		end if;
	end process;










	process(CtrlBus_IxSL.SW_nRST,ClockBus.RDAD_CLK)
	begin
		if CtrlBus_IxSL.SW_nRST = '0' then
			RDAD_ReadEn <= '0';
		else
			if falling_edge(ClockBus.RDAD_CLK) then
				case rdad_stm is
					when FIFOREAD =>
						RDAD_ReadEn <= '1';
					when others	=>
						RDAD_ReadEn <= '0';
				end case;
			end if;
		end if;
	end process;

	-- Digitilization Readout the Samples Storage Location
	process(CtrlBus_IxSL.SW_nRST,ClockBus.RDAD_CLK)
	begin
		if CtrlBus_IxSL.SW_nRST = '0' then
			RDAD_CLK_intl 	<= '0';
			RDAD_SIN_intl 	<= '0';
			RDAD_DIR_intl 	<= '0';
			BitCnt <= 8;
			StoAddr <= (others => '0');
			RDAD_Addr_s <= (others => '0');
			--CtrlBus_OxSL.RD_ADDR <= (others => '0');
			RDAD.response <= '0';
			RDAD.ready <= '0';
			RDAD.busy <= '0';
			RDAD.valid <= '0';
			RDAD_stm <= IDLE;

		else
			if rising_edge(ClockBus.RDAD_CLK) then
				case rdad_stm is
					when IDLE =>
						RDAD_CLK_intl 	<= '0';
						RDAD_SIN_intl 	<= '0';
						RDAD_DIR_intl 	<= '0';
						RDAD.ready <= '1';
						RDAD.valid <= '0';
						RDAD.busy <= '0';
						--BitCnt <= 10;
						BitCnt <= 0;
						RDAD.response <= '0';

--						if(StorageBusy = '0' and WL.busy = '0' and SS.busy = '0' and done_flg = '0') then -- Storage Done Digitilization can start
--							rdad_stm <= LOW_SET0;
--							RDAD.busy <= '1';
--						else
--							rdad_stm <= IDLE;
--						end if;

						rdad_stm <= READY;
					when READY =>
						if (RDAD_Empty = '0') then	-- Something to read from the FIFO
							rdad_stm <= FIFOREAD;
						else
							rdad_stm <= READY;
						end if;
					when FIFOREAD =>
						RDAD.response <= '1';
						RDAD.busy <= '1';

						rdad_stm <= FIFOEVAL;
					when FIFOEVAL =>
						RDAD.response <= '1';
						RDAD.busy <= '1';

						rdad_stm <= WDO_SET_RDAD_ADDR;

					when WDO_SET_RDAD_ADDR =>
						--Set Window Address to be digitized
						RDAD_Addr_s <= RDAD_DataOut; --RDAD_DataOut is the DATA COMING FROM WINDOW STORE, window number
						if(WL.ready = '1') then
							RDAD.response <= '0';
							rdad_stm <= WDO_LOW_SET0;
						else
							rdad_stm <= WDO_SET_RDAD_ADDR;
						end if;
					when WDO_LOW_SET0 =>
						RDAD_CLK_intl 	<= '0';
						RDAD_SIN_intl 	<= RDAD_Addr_s(8-BitCnt); --MSB First
						RDAD_DIR_intl 	<= '1';
						rdad_stm <= WDO_LOW_SET1;
					when WDO_LOW_SET1 =>
						RDAD_CLK_intl <= '1';
						rdad_stm <= WDO_HIGH_SET1;
					when WDO_HIGH_SET1 =>
						RDAD_CLK_intl <= '1';
						rdad_stm <= WDO_HIGH_SET0;
					when WDO_HIGH_SET0 =>
						if BitCnt >= 8 then
							BitCnt <= 0;
							RDAD_DIR_intl <= '0';
							rdad_stm <= WDO_VALID;
							RDAD.valid <= '1';
							RDAD.busy <= '1';
						else
							RDAD_DIR_intl 	<= '1';
							BitCnt <= BitCnt + 1;
							rdad_stm <= WDO_LOW_SET0;
							RDAD.busy <= '1';
						end if;
						RDAD_CLK_intl 	<= '0';

					when WDO_VALID =>
						RDAD_SIN_intl 	<= '0'; --MSB First

						if (WL.response = '1') then
							RDAD.valid <= '0';
							--rdad_stm <= WDO_VALID;
							rdad_stm <= WDO_RESPVALID;
						else
							RDAD.valid <= '1';
							--rdad_stm <= WDO_RESPVALID;
							rdad_stm <= WDO_VALID;
						end if;
					when WDO_RESPVALID =>
						if (WL.response = '0') then	--Wilkinson
							-- if  fifo_intl.wr2 = '0' then	--Second window is good to go too
							-- 	rdad_stm <= WD2_SET_RDAD_ADDR;
							-- 	RDAD.valid <= '0';
							-- 	RDAD.busy <= '1';
							-- else
								RDAD.valid <= '0';
								RDAD.busy <= '0';
								rdad_stm <= IDLE;
							--end if;
						else
							RDAD.valid <= '0';
							rdad_stm <= WDO_RESPVALID;
						end if;

					when others	=>
						-- nop
				end case;
			end if;
		end if;
	end process;


	RDAD_CLK 	<= RDAD_CLK_intl;
	RDAD_SIN 	<= RDAD_SIN_intl;
	RDAD_DIR 	<= RDAD_DIR_intl;

	-- Wilkinson
	process(CtrlBus_IxSL.SW_nRST,ClockBus.WL_CLK)
	begin
		if CtrlBus_IxSL.SW_nRST = '0' then
			RAMP_intl <= '0';	--Vdischarge
			GCC_RESET_intl <= '1';

			WL.response <= '0';
			WL.ready <= '0';
			WL.busy <= '0';
			WL.valid <= '0';
			WL_CNT_EN <= '0';
			wlstate <= IDLE;

			DIG_WriteEn <= '0';
			DIG_DataIn <= (others => '0');

		else
			if rising_edge(ClockBus.WL_CLK) then
				case wlstate is
					when IDLE =>
						RAMP_intl <= '0';
						WL.response <= '0';
						WL.ready <= '1';
						wlstate <= READY;
						GCC_RESET_intl <= '1';

					when READY =>
						WL.ready <= '1';
						if (RDAD.valid = '1') then
							wlstate <= RESPREADY;
							WL.response <= '1';
						else
							wlstate <= READY;
							WL.response <= '0';
						end if;
					when RESPREADY =>
						WL.response <= '0';
						WL.ready <= '0';
						WL.busy <= '1';
						if (RDAD.valid = '0') then
							-- Save the wdo address prior to starting the WL
							DIG_DataIn <= RDAD_Addr_s;
							WL.valid <= '0';
							--WL.ready <= '0';
							GCC_RESET_intl <= '1';
							wlstate <= CLEAR;
						else
							wlstate <= RESPREADY;
						end if;

						WL_CNT_EN <= '0';

					when CLEAR =>
						WL.response <= '0';
						GCC_RESET_intl <= '0';

						RAMP_intl <= '1';

						WL_CNT_EN <= '1';

						wlstate <= START;
					when START =>
						if(WL_CNT_INTL = x"7ff" ) then
							WL.valid <= '1';
							WL.ready <= '0';
							wlstate <= VALID;
						    RAMP_intl <= '0';
					    	GCC_RESET_intl <= '0';

							WL_CNT_EN <= '0';
						else
							WL_CNT_EN <= '1';
							wlstate <= START;
						end if;
					when VALID =>
						--if SS.ready = '0' then
						if SS.response = '1' then
							WL.valid <= '0';
							wlstate <= RESPVALID;
						else
							wlstate <= VALID;
							WL.valid <= '1';
						--	DIG_WriteEn <= '1';

						end if;
					when RESPVALID =>

						--Enable FIFODIG for removing the window
						DIG_WriteEn <= '0';

--						RAMP_intl <= '1';
						--if (SS.response = '1') then
						if (SS.response = '0') then
							WL.busy <= '1';
							--WL.ready <= '1';
							WL.valid <= '0';
							wlstate <= SAMPLE_END;
						else
							WL.valid <= '0';
							wlstate <= RESPVALID;
						end if;
					when SAMPLE_END =>
						if (SS.busy = '1') then
							DIG_WriteEn <= '0';
							wlstate <= SAMPLE_END;
--							RAMP_intl <= '1';
							WL_CNT_EN <= '0';
						else
							-- Sampling is finished
							DIG_WriteEn <= '1';
							wlstate <= RAMP_DISCH;
							GCC_RESET_intl <= '0';
							WL_CNT_EN <= '1';
							RAMP_intl <= '0';
						end if;
					when RAMP_DISCH =>
						WL.ready <= '0';
						DIG_WriteEn <= '0';
						if WL_CNT_INTL > UNSIGNED(DISCH_PERIOD) then
							WL.busy <= '0';
							WL.ready <= '1';
							WL.valid <= '0';
							wlstate <= IDLE;
							GCC_RESET_intl <= '0';
							WL_CNT_EN <= '0';
						else
							WL_CNT_EN <= '1';
							wlstate <= RAMP_DISCH;
						end if;
					when others =>
						--nop
						wlstate <= IDLE;
				end case;
			end if;
		end if;
	end process;

	RAMP 		<= RAMP_intl;
	--RAMP		<= 	'1'	when WL.busy = '1' else
	--				'1' when SS.busy = '1' else
	--					'0';

	GCC_RESET 	<= GCC_RESET_intl;
	--CtrlBus_OxSL.RAMP_CNT	<= WL_CNT_EN;
	RAMP_CNT	<= WL_CNT_EN;


	process (ClockBus.HSCLK,SS_CNT_EN) begin
	if (SS_CNT_EN = '0') then
		SS_CNT_INTL <= (others => '0');
	elsif (rising_edge(ClockBus.HSCLK)) then
		if SS_CNT_EN = '1' then
			SS_CNT_INTL <= SS_CNT_INTL + 1;
		end if;
	end if;
	end process;

	-- Process for Data Out
	process(CtrlBus_IxSL.SW_nRST,ClockBus.HSCLK)
	begin
		if CtrlBus_IxSL.SW_nRST = '0' then

			SS.response <= '0';
			SS.ready <= '0';
			SS.busy <= '0';
			SS.valid <= '0';
			SS_INCR_flg <= '0';
			hsout_stm <= IDLE;
			--CtrlBus_OxSL.SS_SELECT <= (others => '0');
			SScnt <= 0;
			SSBitcnt <= 0;

			--SS_INCR_intl <= '1';
			SS_INCR_intl <= '0';

			SS_RESET_intl <= '1';

			Handshake_SEND_intl.REQ <= '0';
			Handshake_Data.testfifo <= '0';
			-- WDOTime	<= 	(others => '0');
			-- DIGTime <=(others => '0');
			-- WDONbr <= (others => '0');
			-- Trigger <= (others => '0');
		else
			if rising_edge(ClockBus.HSCLK) then

				--STM
				case hsout_stm is
					when IDLE =>
						SS.response <= '0';
						SS.ready <= '1';
						SS.valid <= '0';
						SS.busy <= '0';
						hsout_stm <= READY;

						HSCLK_intl <= '0';
						SS_RESET_intl <= '0';
			--SS_INCR_intl <= '1';
			SS_INCR_intl <= '0';

						--SScnt <= 0;
						--SSBitcnt <= 0;
					when READY =>
						if(CtrlBus_IxSL.SS_INCR = '1')then
							SS_INCR_flg <= '1';
							SS_INCR_intl <= '1';
							hsout_stm <= LOW_SET0;
							--SS_CNT_EN <= '1';
							--hsout_stm <= INCRWAIT;
						elsif (CtrlBus_IxSL.TestFIFO = '1' and CtrlBus_IxSL.SAMPLEMODE = '1') then	-- New
							Handshake_Data.TestFIFO <= '1';
							TestFIFO_cnt <= 0;
							TestFIFO_window <= 0;
							SS.busy <= '1';
							hsout_stm <= FIFOTEST_DATA;
						--	TestFIFO <= '1';
						elsif (WL.valid = '1') and (CtrlBus_IxSL.SAMPLEMODE = '1') then
							SS.response <= '1';
							Handshake_Data.TestFIFO <= '0';
							SS_RESET_intl <= '1';
							SS_INCR_flg <= '0';
							hsout_stm <= RESPREADY;
							SS.busy <= '1';
						--	TestFIFO <= '0';
						else
						--	TestFIFO <= '0';
							hsout_stm <= READY;
						end if;

						SScnt <= 0;
						SSBitcnt <= 0;

					when FIFOTEST_DATA =>
						-- WDOTime	<= 	x"00000000" & x"FFFFFFFF";
						-- DIGTime <= 	x"FFFFFFFF" & x"00000000";
						-- Trigger <= x"123";
						-- WDONbr <= "110110110";

--						CH0_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 0,CH0_intl'length));
--						CH1_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 1,CH1_intl'length));
--						CH2_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 2,CH2_intl'length));
--						CH3_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 3,CH3_intl'length));

--						CH4_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 4,CH4_intl'length));
--						CH5_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 5,CH5_intl'length));
--						CH6_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 6,CH6_intl'length));
--						CH7_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 7,CH7_intl'length));

--						CH8_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 8,CH8_intl'length));
--						CH9_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 9,CH9_intl'length));
--						CH10_intl <=std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 10,CH10_intl'length));
--						CH11_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 11,CH11_intl'length));

--						CH12_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 12,CH12_intl'length));
--						CH13_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 13,CH13_intl'length));
--						CH14_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 14,CH14_intl'length));
--						CH15_intl  <= std_logic_vector(to_unsigned(TestFIFO_window * 512 + TestFIFO_cnt*16 + 15,CH15_intl'length));

						SS.valid <= '1';
						Handshake_SEND_intl.REQ <= '1';
						hsout_stm <= FIFOTEST_REQUEST;

					when FIFOTEST_REQUEST =>
						hsout_stm <= FIFOTEST_RESP_ACK;

					when FIFOTEST_RESP_ACK =>
						if ( acknowledge_intl = '1' and CtrlBus_IxSL.SAMPLEMODE = '1') then
							SS.valid <= '0';
							Handshake_SEND_intl.REQ <= '0';
							hsout_stm <= FIFOTEST_REQ_GRANT;
						else
							hsout_stm <= FIFOTEST_RESP_ACK;
						end if;
					when FIFOTEST_REQ_GRANT =>
						if (acknowledge_intl = '0' and CtrlBus_IxSL.SAMPLEMODE = '1') then
							if (TestFIFO_cnt < 31) then
								hsout_stm <= FIFOTEST_DATA;
								TestFIFO_cnt <= TestFIFO_cnt + 1;
							else
								TestFIFO_cnt <= 0;
								if (TestFIFO_window < to_integer(unsigned(NBRWINDOW_clkd)-1)) then
									hsout_stm <= FIFOTEST_DATA;
									TestFIFO_window <= TestFIFO_window + 1;
								else
									TestFIFO_window <= 0;
									hsout_stm <= IDLE;
								end if;
							end if;
						else
							hsout_stm <= FIFOTEST_REQ_GRANT;
						end if;


					when RESPREADY =>
						SS.busy <= '1';
						if (WL.valid = '0') then
							SS.response <= '0';
							HSCLK_intl <= '0';
							SS_INCR_intl <= '1';
							--hsout_stm <= LOW_SET0;
							SS_CNT_EN <= '1';
							hsout_stm <= LOW_SET0;

							-- WDOTime	<= 	WDOTime_WL;
							-- DIGTime <= 	DIGTime_WL;
							-- Trigger <= Trigger_WL;
							-- WDONbr <= WDONbr_WL;

							--Test
						--	CtrlBus_OxSL.SS_Read <= WDONbr_WL;
						else
							SS.response <= '1';
							hsout_stm <= RESPREADY;
						end if;
--					when INCRWAIT =>
--						SS_INCR_intl <= '1';

----						if SS_CNT_INTL = UNSIGNED(INCR_WAIT_PERIOD) then
--                        SS_CNT_EN <= '0';
--                        SS_RESET_intl <= '0';
--                        hsout_stm <= LOW_SET0;
----						else
----							SS_CNT_EN <= '1';
----							hsout_stm <= INCRWAIT;
----						end if;
					when LOW_SET0 =>
						HSCLK_intl <= '1';   --'0'
						if SSBitCnt = 0  then
							SS_INCR_intl <= '1';
						else
							SS_INCR_intl <= '0';
						end if;
						SS_RESET_intl <= '0';
						hsout_stm <= LOW_SET1;
					when LOW_SET1 =>
						HSCLK_intl <= '1';
						hsout_stm <= HIGH_SET0;
				        SS_INCR_intl <= '0';

--					when HIGH_SET1 =>
--						HSCLK_intl <= '1';
--						hsout_stm <= HIGH_SET0;
					when HIGH_SET0 =>
						-- SAmple the output of TARGETC
						if SSBitCnt > 2 then

							A_CH0_intl(SSBitCnt-3) <= DO_A_B(0);
							A_CH1_intl(SSBitCnt-3) <= DO_A_B(1);
							A_CH2_intl(SSBitCnt-3) <= DO_A_B(2);
							A_CH3_intl(SSBitCnt-3) <= DO_A_B(3);

							A_CH4_intl(SSBitCnt-3) <= DO_A_B(4);
							A_CH5_intl(SSBitCnt-3) <= DO_A_B(5);
							A_CH6_intl(SSBitCnt-3) <= DO_A_B(6);
							A_CH7_intl(SSBitCnt-3) <= DO_A_B(7);

							A_CH8_intl(SSBitCnt-3) <= DO_A_B(8);
							A_CH9_intl(SSBitCnt-3) <= DO_A_B(9);
							A_CH10_intl(SSBitCnt-3) <=DO_A_B(10);
							A_CH11_intl(SSBitCnt-3) <= DO_A_B(11);

							A_CH12_intl(SSBitCnt-3) <= DO_A_B(12);
							A_CH13_intl(SSBitCnt-3) <= DO_A_B(13);
							A_CH14_intl(SSBitCnt-3) <= DO_A_B(14);
							A_CH15_intl(SSBitCnt-3) <= DO_A_B(15);
							
							B_CH0_intl(SSBitCnt-3) <= DO_A_B(16);
							B_CH1_intl(SSBitCnt-3) <= DO_A_B(17);
							B_CH2_intl(SSBitCnt-3) <= DO_A_B(18);
							B_CH3_intl(SSBitCnt-3) <= DO_A_B(19);

							B_CH4_intl(SSBitCnt-3) <= DO_A_B(20);
							B_CH5_intl(SSBitCnt-3) <= DO_A_B(21);
							B_CH6_intl(SSBitCnt-3) <= DO_A_B(22);
							B_CH7_intl(SSBitCnt-3) <= DO_A_B(23);

							B_CH8_intl(SSBitCnt-3) <= DO_A_B(24);
							B_CH9_intl(SSBitCnt-3) <= DO_A_B(25);
							B_CH10_intl(SSBitCnt-3) <=DO_A_B(26);
							B_CH11_intl(SSBitCnt-3) <= DO_A_B(27);

							B_CH12_intl(SSBitCnt-3) <= DO_A_B(28);
							B_CH13_intl(SSBitCnt-3) <= DO_A_B(29);
							B_CH14_intl(SSBitCnt-3) <= DO_A_B(30);
							B_CH15_intl(SSBitCnt-3) <= DO_A_B(31);

						end if;

						HSCLK_intl <= '0';

						if SSBitCnt = 14 then
						--if SSBitCnt = 13 then
						--if SSBitCnt = 11 then
							hsout_stm <= REQUEST;
							SSBitCnt <= 0;
							SS.busy <= '1';
							SS.valid <= '1';
							--TPG_flg <= '0';
						else
							SS.valid <= '0';
							SS.busy <= '1';
							hsout_stm <= LOW_SET1;
							SSBitCnt <= SSBitCnt + 1;
						end if;
						--WLvalidAck <= '0';
					when REQUEST =>
						if Handshake_IxSEND.Busy = '0' then
							Handshake_SEND_intl.REQ <= '1';
							HSCLK_intl <= '0';
							hsout_stm <= RESP_ACK;
						else
							Handshake_SEND_intl.REQ <= '0';
							HSCLK_intl <= '0';
							hsout_stm <= REQUEST;
						end if;
					when RESP_ACK =>
						HSCLK_intl <= '0';
						--CtrlBus_OxSL.SS_SELECT <= std_logic_vector(to_unsigned(SScnt,CtrlBus_OxSL.SS_SELECT'length));
						if (CtrlBus_IxSL.SSACK = '1' and CtrlBus_IxSL.SAMPLEMODE = '0') or (acknowledge_intl = '1' and CtrlBus_IxSL.SAMPLEMODE = '1') then
							Handshake_SEND_intl.REQ <= '0';
							SS.valid <= '0';
							hsout_stm <= REQ_GRANT;

						else
							SS.busy <= '1';
							SS.valid <= '1';
							hsout_stm <= RESP_ACK;
						end if;

					when REQ_GRANT =>
						--if CtrlBus_IxSL.SSACK = '0' then
						if (CtrlBus_IxSL.SSACK = '0' and CtrlBus_IxSL.SAMPLEMODE = '0') or (acknowledge_intl = '0' and CtrlBus_IxSL.SAMPLEMODE = '1') then
							if (SS_INCR_flg = '0') then
								SScnt <= SScnt + 1;
								if(SScnt < 31) then
									--hsout_stm <= LOW_SET0;
									hsout_stm	<= LOW_SET0;
									SS.busy <= '1';
								else
									--SS_RESET_intl <= '1';
									hsout_stm <= IDLERESET;
									SS.busy <= '0';
								end if;
							else
								--SS_RESET_intl <= '1';
								SS_INCR_flg <= '0';
								SS.busy <= '0';
								hsout_stm <= IDLERESET;
							end if;
						else
							hsout_stm <= REQ_GRANT;
						end if;
					when IDLERESET =>
						SS.busy <= '0';
						--SS_RESET_intl <= '1';
						hsout_stm <= IDLE;
					when others =>
						-- nop
				end case;
			end if;
		end if;
	end process;

	--CtrlBus_OxSL.DO_BUS <= CtrlDO_intl;
	DO_BUS <= CtrlDO_intl;

	SS_RESET 	<= SS_RESET_intl;
	--SS_RESET 	<= '0';
	SS_INCR 	<= SS_INCR_intl;
	HSCLK 		<= HSCLK_intl;
	-- Input/Output Refresh

	A_CH0 	<= A_CH0_intl;
	A_CH1 	<= A_CH1_intl;
	A_CH2 	<= A_CH2_intl;
	A_CH3 	<= A_CH3_intl;

	A_CH4 	<= A_CH4_intl;
	A_CH5 	<= A_CH5_intl;
	A_CH6 	<= A_CH6_intl;
	A_CH7 	<= A_CH7_intl;

	A_CH8 	<= A_CH8_intl;
	A_CH9 	<= A_CH9_intl;
	A_CH10 	<= A_CH10_intl;
	A_CH11 	<= A_CH11_intl;

	A_CH12 	<= A_CH12_intl;
	A_CH13 	<= A_CH13_intl;
	A_CH14 	<= A_CH14_intl;
	A_CH15 	<= A_CH15_intl;
	
	B_CH0 	<= B_CH0_intl;
	B_CH1 	<= B_CH1_intl;
	B_CH2 	<= B_CH2_intl;
	B_CH3 	<= B_CH3_intl;

	B_CH4 	<= B_CH4_intl;
	B_CH5 	<= B_CH5_intl;
	B_CH6 	<= B_CH6_intl;
	B_CH7 	<= B_CH7_intl;

	B_CH8 	<= B_CH8_intl;
	B_CH9 	<= B_CH9_intl;
	B_CH10 	<= B_CH10_intl;
	B_CH11 	<= B_CH11_intl;

	B_CH12 	<= B_CH12_intl;
	B_CH13 	<= B_CH13_intl;
	B_CH14 	<= B_CH14_intl;
	B_CH15 	<= B_CH15_intl;


	--CtrlBus_OxSL.SSvalid	<= SS.valid;	-- Status on AXI Lite
	SSvalid	<= SS.valid;	-- Status on AXI Lite
	--CtrlBus_OxSL.WindowBusy <= 	'1' when RDAD.busy = '1' else
	WindowBusy <= 	'1' when RDAD.busy = '1' else
								'1' when WL.busy = '1' else
								'1' when SS.busy = '1' else
								 '0';
end Behavioral;
