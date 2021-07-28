--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Fri Jul 23 08:45:56 2021
--Host        : DESKTOP-QIIVLD9 running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_iic_scl_io : inout STD_LOGIC;
    cam_iic_sda_io : inout STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_scl_io : inout STD_LOGIC;
    hdmi_out_ddc_sda_io : inout STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    hdmi_out_clk_p : out STD_LOGIC;
    hdmi_out_clk_n : out STD_LOGIC;
    hdmi_out_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_out_ddc_sda_i : in STD_LOGIC;
    hdmi_out_ddc_sda_o : out STD_LOGIC;
    hdmi_out_ddc_sda_t : out STD_LOGIC;
    hdmi_out_ddc_scl_i : in STD_LOGIC;
    hdmi_out_ddc_scl_o : out STD_LOGIC;
    hdmi_out_ddc_scl_t : out STD_LOGIC;
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sys_clock : in STD_LOGIC;
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal cam_iic_scl_i : STD_LOGIC;
  signal cam_iic_scl_o : STD_LOGIC;
  signal cam_iic_scl_t : STD_LOGIC;
  signal cam_iic_sda_i : STD_LOGIC;
  signal cam_iic_sda_o : STD_LOGIC;
  signal cam_iic_sda_t : STD_LOGIC;
  signal hdmi_out_ddc_scl_i : STD_LOGIC;
  signal hdmi_out_ddc_scl_o : STD_LOGIC;
  signal hdmi_out_ddc_scl_t : STD_LOGIC;
  signal hdmi_out_ddc_sda_i : STD_LOGIC;
  signal hdmi_out_ddc_sda_o : STD_LOGIC;
  signal hdmi_out_ddc_sda_t : STD_LOGIC;
begin
cam_iic_scl_iobuf: component IOBUF
     port map (
      I => cam_iic_scl_o,
      IO => cam_iic_scl_io,
      O => cam_iic_scl_i,
      T => cam_iic_scl_t
    );
cam_iic_sda_iobuf: component IOBUF
     port map (
      I => cam_iic_sda_o,
      IO => cam_iic_sda_io,
      O => cam_iic_sda_i,
      T => cam_iic_sda_t
    );
hdmi_out_ddc_scl_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_scl_o,
      IO => hdmi_out_ddc_scl_io,
      O => hdmi_out_ddc_scl_i,
      T => hdmi_out_ddc_scl_t
    );
hdmi_out_ddc_sda_iobuf: component IOBUF
     port map (
      I => hdmi_out_ddc_sda_o,
      IO => hdmi_out_ddc_sda_io,
      O => hdmi_out_ddc_sda_i,
      T => hdmi_out_ddc_sda_t
    );
system_i: component system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED0(0) => LED0(0),
      LED1(0) => LED1(0),
      LED2(0) => LED2(0),
      cam_gpio(0) => cam_gpio(0),
      cam_iic_scl_i => cam_iic_scl_i,
      cam_iic_scl_o => cam_iic_scl_o,
      cam_iic_scl_t => cam_iic_scl_t,
      cam_iic_sda_i => cam_iic_sda_i,
      cam_iic_sda_o => cam_iic_sda_o,
      cam_iic_sda_t => cam_iic_sda_t,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_data_hs_n(1 downto 0) => dphy_data_hs_n(1 downto 0),
      dphy_data_hs_p(1 downto 0) => dphy_data_hs_p(1 downto 0),
      dphy_data_lp_n(1 downto 0) => dphy_data_lp_n(1 downto 0),
      dphy_data_lp_p(1 downto 0) => dphy_data_lp_p(1 downto 0),
      hdmi_out_clk_n => hdmi_out_clk_n,
      hdmi_out_clk_p => hdmi_out_clk_p,
      hdmi_out_data_n(2 downto 0) => hdmi_out_data_n(2 downto 0),
      hdmi_out_data_p(2 downto 0) => hdmi_out_data_p(2 downto 0),
      hdmi_out_ddc_scl_i => hdmi_out_ddc_scl_i,
      hdmi_out_ddc_scl_o => hdmi_out_ddc_scl_o,
      hdmi_out_ddc_scl_t => hdmi_out_ddc_scl_t,
      hdmi_out_ddc_sda_i => hdmi_out_ddc_sda_i,
      hdmi_out_ddc_sda_o => hdmi_out_ddc_sda_o,
      hdmi_out_ddc_sda_t => hdmi_out_ddc_sda_t,
      sys_clock => sys_clock
    );
end STRUCTURE;
