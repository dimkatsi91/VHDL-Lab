// megafunction wizard: %LPM_COUNTER%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_counter 

// ============================================================
// File Name: lpm_counter_dim.v
// Megafunction Name(s):
// 			lpm_counter
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 7.2 Build 151 09/26/2007 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2007 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_counter DEVICE_FAMILY="Stratix" lpm_port_updown="PORT_USED" lpm_width=8 aclr aload clk_en clock cnt_en data q updown
//VERSION_BEGIN 7.2 cbx_cycloneii 2007:06:14:10:47:32:SJ cbx_lpm_add_sub 2007:08:07:11:01:34:SJ cbx_lpm_compare 2007:06:22:10:54:06:SJ cbx_lpm_counter 2007:08:07:20:40:08:SJ cbx_lpm_decode 2007:03:13:14:01:52:SJ cbx_mgl 2007:08:04:10:48:12:SJ cbx_stratix 2007:05:03:11:27:14:SJ cbx_stratixii 2007:06:29:12:26:26:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 8 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  lpm_counter_dim_cntr
	( 
	aclr,
	aload,
	clk_en,
	clock,
	cnt_en,
	data,
	q,
	updown) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   aload;
	input   clk_en;
	input   clock;
	input   cnt_en;
	input   [7:0]  data;
	output   [7:0]  q;
	input   updown;

	wire  [0:0]   wire_counter_cella_0cout;
	wire  [0:0]   wire_counter_cella_1cout;
	wire  [0:0]   wire_counter_cella_2cout;
	wire  [0:0]   wire_counter_cella_3cout;
	wire  [0:0]   wire_counter_cella_4cout;
	wire  [0:0]   wire_counter_cella_5cout;
	wire  [0:0]   wire_counter_cella_6cout;
	wire  [7:0]   wire_counter_cella_dataa;
	wire  [7:0]   wire_counter_cella_datac;
	wire  [7:0]   wire_counter_cella_regout;
	wire  aclr_actual;
	wire  [7:0]  safe_q;
	wire sclr;
	wire sload;
	wire sset;
	wire  updownDir;

	stratix_lcell   counter_cella_0
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_0cout[0:0]),
	.dataa(wire_counter_cella_dataa[0:0]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[0:0]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[0:0]),
	.sclr(sclr),
	.sload(sload),
	.cin(1'b0),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_0.cin_used = "false",
		counter_cella_0.lut_mask = "5599",
		counter_cella_0.operation_mode = "arithmetic",
		counter_cella_0.synch_mode = "on",
		counter_cella_0.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_1
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_0cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_1cout[0:0]),
	.dataa(wire_counter_cella_dataa[1:1]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[1:1]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[1:1]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_1.cin_used = "true",
		counter_cella_1.lut_mask = "5a90",
		counter_cella_1.operation_mode = "arithmetic",
		counter_cella_1.sum_lutc_input = "cin",
		counter_cella_1.synch_mode = "on",
		counter_cella_1.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_2
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_1cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_2cout[0:0]),
	.dataa(wire_counter_cella_dataa[2:2]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[2:2]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[2:2]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_2.cin_used = "true",
		counter_cella_2.lut_mask = "5a90",
		counter_cella_2.operation_mode = "arithmetic",
		counter_cella_2.sum_lutc_input = "cin",
		counter_cella_2.synch_mode = "on",
		counter_cella_2.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_3
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_2cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_3cout[0:0]),
	.dataa(wire_counter_cella_dataa[3:3]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[3:3]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[3:3]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_3.cin_used = "true",
		counter_cella_3.lut_mask = "5a90",
		counter_cella_3.operation_mode = "arithmetic",
		counter_cella_3.sum_lutc_input = "cin",
		counter_cella_3.synch_mode = "on",
		counter_cella_3.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_4
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_3cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_4cout[0:0]),
	.dataa(wire_counter_cella_dataa[4:4]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[4:4]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[4:4]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_4.cin_used = "true",
		counter_cella_4.lut_mask = "5a90",
		counter_cella_4.operation_mode = "arithmetic",
		counter_cella_4.sum_lutc_input = "cin",
		counter_cella_4.synch_mode = "on",
		counter_cella_4.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_5
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_4cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_5cout[0:0]),
	.dataa(wire_counter_cella_dataa[5:5]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[5:5]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[5:5]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_5.cin_used = "true",
		counter_cella_5.lut_mask = "5a90",
		counter_cella_5.operation_mode = "arithmetic",
		counter_cella_5.sum_lutc_input = "cin",
		counter_cella_5.synch_mode = "on",
		counter_cella_5.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_6
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_5cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(wire_counter_cella_6cout[0:0]),
	.dataa(wire_counter_cella_dataa[6:6]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[6:6]),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[6:6]),
	.sclr(sclr),
	.sload(sload),
	.datad(1'b1),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_6.cin_used = "true",
		counter_cella_6.lut_mask = "5a90",
		counter_cella_6.operation_mode = "arithmetic",
		counter_cella_6.sum_lutc_input = "cin",
		counter_cella_6.synch_mode = "on",
		counter_cella_6.lpm_type = "stratix_lcell";
	stratix_lcell   counter_cella_7
	( 
	.aclr(aclr_actual),
	.aload(aload),
	.cin(wire_counter_cella_6cout[0:0]),
	.clk(clock),
	.combout(),
	.cout(),
	.dataa(wire_counter_cella_dataa[7:7]),
	.datab(updownDir),
	.datac(wire_counter_cella_datac[7:7]),
	.datad(1'b1),
	.ena((clk_en & (((cnt_en | sclr) | sset) | sload))),
	.regout(wire_counter_cella_regout[7:7]),
	.sclr(sclr),
	.sload(sload),
	.inverta(1'b0),
	.regcascin(1'b0)
	// synopsys translate_off
	,
	.cin0(1'b0),
	.cin1(1'b1),
	.cout0(),
	.cout1(),
	.devclrn(1'b1),
	.devpor(1'b1)
	// synopsys translate_on
	);
	defparam
		counter_cella_7.cin_used = "true",
		counter_cella_7.lut_mask = "5a90",
		counter_cella_7.operation_mode = "normal",
		counter_cella_7.sum_lutc_input = "cin",
		counter_cella_7.synch_mode = "on",
		counter_cella_7.lpm_type = "stratix_lcell";
	assign
		wire_counter_cella_dataa = safe_q,
		wire_counter_cella_datac = data;
	assign
		aclr_actual = aclr,
		q = safe_q,
		safe_q = wire_counter_cella_regout,
		sclr = 1'b0,
		sload = 1'b0,
		sset = 1'b0,
		updownDir = updown;
endmodule //lpm_counter_dim_cntr
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_counter_dim (
	aclr,
	aload,
	clk_en,
	clock,
	cnt_en,
	data,
	updown,
	q)/* synthesis synthesis_clearbox = 1 */;

	input	  aclr;
	input	  aload;
	input	  clk_en;
	input	  clock;
	input	  cnt_en;
	input	[7:0]  data;
	input	  updown;
	output	[7:0]  q;

	wire [7:0] sub_wire0;
	wire [7:0] q = sub_wire0[7:0];

	lpm_counter_dim_cntr	lpm_counter_dim_cntr_component (
				.aload (aload),
				.clk_en (clk_en),
				.aclr (aclr),
				.clock (clock),
				.data (data),
				.updown (updown),
				.cnt_en (cnt_en),
				.q (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "1"
// Retrieval info: PRIVATE: ALOAD NUMERIC "1"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
// Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: Direction NUMERIC "2"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix"
// Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
// Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
// Retrieval info: PRIVATE: SCLR NUMERIC "0"
// Retrieval info: PRIVATE: SLOAD NUMERIC "0"
// Retrieval info: PRIVATE: SSET NUMERIC "0"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: nBit NUMERIC "8"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_USED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL aclr
// Retrieval info: USED_PORT: aload 0 0 0 0 INPUT NODEFVAL aload
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL clk_en
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL cnt_en
// Retrieval info: USED_PORT: data 0 0 8 0 INPUT NODEFVAL data[7..0]
// Retrieval info: USED_PORT: q 0 0 8 0 OUTPUT NODEFVAL q[7..0]
// Retrieval info: USED_PORT: updown 0 0 0 0 INPUT NODEFVAL updown
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: q 0 0 8 0 @q 0 0 8 0
// Retrieval info: CONNECT: @updown 0 0 0 0 updown 0 0 0 0
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @aload 0 0 0 0 aload 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 8 0 data 0 0 8 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim_inst.vhd FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim_wave*.jpg TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter_dim_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
