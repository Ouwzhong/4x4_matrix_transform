;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.4 *
;* Date/Time created: Thu Jan 07 10:49:59 2021                                *
;******************************************************************************
	.compiler_opts --abi=coffabi --c64p_l1d_workaround=default --endian=little --hll_source=on --long_precision_bits=40 --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --object_format=coff --silicon_version=6400 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 2                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o2, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 0                           *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug for Program Analysis w/Optimization      *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v7.4.4 Copyright (c) 1996-2013 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fclose")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_fclose")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_fopen")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$25)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$25)
	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_printf")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$25)
$C$DW$8	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("fread")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_fread")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$3)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$80)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$80)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$9


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("fwrite")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_fwrite")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$33)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$80)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$80)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$22)
	.dwendtag $C$DW$14


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("calloc")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_calloc")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.global	_iFileName
	.sect	".const:.string:_iFileName"
	.clink
	.align	8
_iFileName:
	.bits	100,8			; _iFileName[0] @ 0
	.bits	97,8			; _iFileName[1] @ 8
	.bits	116,8			; _iFileName[2] @ 16
	.bits	97,8			; _iFileName[3] @ 24
	.bits	46,8			; _iFileName[4] @ 32
	.bits	121,8			; _iFileName[5] @ 40
	.bits	117,8			; _iFileName[6] @ 48
	.bits	118,8			; _iFileName[7] @ 56
	.bits	0,8			; _iFileName[8] @ 64

$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("iFileName")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_iFileName")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _iFileName]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$20, DW_AT_external
	.global	_oFileName
	.sect	".const:.string:_oFileName"
	.clink
	.align	8
_oFileName:
	.bits	114,8			; _oFileName[0] @ 0
	.bits	101,8			; _oFileName[1] @ 8
	.bits	115,8			; _oFileName[2] @ 16
	.bits	117,8			; _oFileName[3] @ 24
	.bits	108,8			; _oFileName[4] @ 32
	.bits	116,8			; _oFileName[5] @ 40
	.bits	46,8			; _oFileName[6] @ 48
	.bits	121,8			; _oFileName[7] @ 56
	.bits	117,8			; _oFileName[8] @ 64
	.bits	118,8			; _oFileName[9] @ 72
	.bits	0,8			; _oFileName[10] @ 80

$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("oFileName")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_oFileName")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _oFileName]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$21, DW_AT_external
;	F:\software\ccs\ccsv5\tools\compiler\c6000_7.4.4\bin\opt6x.exe C:\\Users\\Tom\\AppData\\Local\\Temp\\288122 C:\\Users\\Tom\\AppData\\Local\\Temp\\288124 
	.sect	".text"
	.clink
	.global	_show_mat

$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("show_mat")
	.dwattr $C$DW$22, DW_AT_low_pc(_show_mat)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_show_mat")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(0x28)
	.dwattr $C$DW$22, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr $C$DW$22, DW_AT_TI_skeletal
	.dwpsn	file "../main.c",line 258,column 49,is_stmt,address _show_mat
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg4]
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg20]
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Mat")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_Mat")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: show_mat                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,DP,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 8 Args + 0 Auto + 28 Save = 36 byte                  *
;******************************************************************************
_show_mat:
;** --------------------------------------------------------------------------*

           CMPGT   .L1     A4,0,A0           ; |260| 
||         MV      .S1X    SP,A31            ; |258| 
||         STW     .D2T2   B13,*SP--(40)     ; |258| 
||         MV      .L2     B3,B13            ; |258| 

   [!A0]   B       .S1     $C$L4             ; |260| 
||         STDW    .D2T2   B11:B10,*+SP(32)  ; |258| 
||         MV      .L2     B4,B11            ; |258| 
||         STDW    .D1T1   A11:A10,*-A31(24) ; |258| 
||         ZERO    .L1     A11               ; |260| 

           STDW    .D1T1   A13:A12,*-A31(16) ; |258| 
           MV      .L1     A6,A12            ; |258| 
           MV      .L1     A4,A13            ; |258| 
   [ A0]   CMPGT   .L2     B11,0,B0          ; |261| 
   [ B0]   MVKL    .S2     $C$SL1+0,B4
           ; BRANCHCC OCCURS {$C$L4}         ; |260| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 260,column 0,is_stmt

   [ B0]   MVKH    .S2     $C$SL1+0,B4
|| [!B0]   B       .S1     $C$L3             ; |261| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_show_mat$3$B:
   [ B0]   LDW     .D1T2   *+A12[A11],B10
   [ B0]   STW     .D2T2   B4,*+SP(4)        ; |262| 
           NOP             3
           ; BRANCHCC OCCURS {$C$L3}         ; |261| 
$C$DW$L$_show_mat$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_show_mat$4$B:
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_printf")
	.dwattr $C$DW$26, DW_AT_TI_call

           CALL    .S1     _printf           ; |262| 
||         LDH     .D2T2   *B10++,B4         ; |262| 

           MV      .L1X    B11,A10           ; |262| 
	.dwpsn	file "../main.c",line 261,column 0,is_stmt
           NOP             2
$C$DW$L$_show_mat$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_show_mat$5$B:
           ADDKPC  .S2     $C$RL0,B3,0       ; |262| 
           STW     .D2T2   B4,*+SP(8)        ; |262| 
$C$RL0:    ; CALL OCCURS {_printf} {0}       ; |262| 
$C$DW$L$_show_mat$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_show_mat$6$B:

           SUB     .L1     A10,1,A0          ; |261| 
||         MVKL    .S2     $C$SL1+0,B4

   [ A0]   B       .S1     $C$L2             ; |261| 
||         MVKH    .S2     $C$SL1+0,B4

   [ A0]   STW     .D2T2   B4,*+SP(4)        ; |262| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_printf")
	.dwattr $C$DW$27, DW_AT_TI_call

   [ A0]   CALL    .S1     _printf           ; |262| 
|| [ A0]   LDH     .D2T2   *B10++,B4         ; |262| 

           SUB     .L1     A10,1,A10         ; |261| 
	.dwpsn	file "../main.c",line 263,column 0,is_stmt
           NOP             2
           ; BRANCHCC OCCURS {$C$L2}         ; |261| 
$C$DW$L$_show_mat$6$E:
;** --------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_show_mat$7$B:
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_printf")
	.dwattr $C$DW$28, DW_AT_TI_call
           CALL    .S1     _printf           ; |264| 
           MVKL    .S2     $C$SL2+0,B4
           MVKH    .S2     $C$SL2+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |264| 
           ADDKPC  .S2     $C$RL1,B3,1       ; |264| 
$C$RL1:    ; CALL OCCURS {_printf} {0}       ; |264| 
$C$DW$L$_show_mat$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_show_mat$8$B:

           SUB     .L1     A13,1,A0          ; |260| 
||         CMPGT   .L2     B11,0,B0          ; |261| 
||         ADD     .S1     1,A11,A11         ; |260| 
||         SUB     .D1     A13,1,A13         ; |260| 

   [ A0]   BNOP    .S1     $C$L1,2           ; |260| 
|| [!A0]   MVK     .L2     0x1,B0            ; |261| nullify predicate

   [ B0]   MVKL    .S2     $C$SL1+0,B4
   [ B0]   MVKH    .S2     $C$SL1+0,B4
	.dwpsn	file "../main.c",line 265,column 0,is_stmt
   [!B0]   B       .S1     $C$L3             ; |261| 
           ; BRANCHCC OCCURS {$C$L1}         ; |260| 
$C$DW$L$_show_mat$8$E:
;** --------------------------------------------------------------------------*
$C$L4:    

           MV      .L2     B13,B3            ; |266| 
||         MV      .L1X    SP,A31            ; |266| 

$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

           RET     .S2     B3                ; |266| 
||         LDDW    .D1T1   *+A31(24),A13:A12 ; |266| 
||         LDDW    .D2T2   *+SP(32),B11:B10  ; |266| 

           LDDW    .D1T1   *+A31(16),A11:A10 ; |266| 
||         LDW     .D2T2   *++SP(40),B13     ; |266| 

	.dwpsn	file "../main.c",line 266,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |266| 

$C$DW$30	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$30, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L1:1:1609987799")
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x104)
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x109)
$C$DW$31	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$31, DW_AT_low_pc($C$DW$L$_show_mat$3$B)
	.dwattr $C$DW$31, DW_AT_high_pc($C$DW$L$_show_mat$3$E)
$C$DW$32	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$32, DW_AT_low_pc($C$DW$L$_show_mat$4$B)
	.dwattr $C$DW$32, DW_AT_high_pc($C$DW$L$_show_mat$4$E)
$C$DW$33	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$33, DW_AT_low_pc($C$DW$L$_show_mat$7$B)
	.dwattr $C$DW$33, DW_AT_high_pc($C$DW$L$_show_mat$7$E)
$C$DW$34	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$34, DW_AT_low_pc($C$DW$L$_show_mat$8$B)
	.dwattr $C$DW$34, DW_AT_high_pc($C$DW$L$_show_mat$8$E)

$C$DW$35	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$35, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L2:2:1609987799")
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x107)
$C$DW$36	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$36, DW_AT_low_pc($C$DW$L$_show_mat$5$B)
	.dwattr $C$DW$36, DW_AT_high_pc($C$DW$L$_show_mat$5$E)
$C$DW$37	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$37, DW_AT_low_pc($C$DW$L$_show_mat$6$B)
	.dwattr $C$DW$37, DW_AT_high_pc($C$DW$L$_show_mat$6$E)
	.dwendtag $C$DW$35

	.dwendtag $C$DW$30

	.dwattr $C$DW$22, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x10a)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	_saveMat

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("saveMat")
	.dwattr $C$DW$38, DW_AT_low_pc(_saveMat)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_saveMat")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x18)
	.dwattr $C$DW$38, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$38, DW_AT_TI_skeletal
	.dwpsn	file "../main.c",line 60,column 60,is_stmt,address _saveMat
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg4]
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg20]
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Y")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_Y")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg6]
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("poFile")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_poFile")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: saveMat                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_saveMat:
;** --------------------------------------------------------------------------*

           CMPGT   .L1     A4,0,A0           ; |62| 
||         STW     .D2T2   B13,*SP--(24)     ; |60| 
||         MV      .L2     B3,B13            ; |60| 

   [!A0]   BNOP    .S1     $C$L6,2           ; |62| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |60| 
||         MV      .L1     A6,A10            ; |60| 
||         MV      .D1X    B4,A11            ; |60| 

           STDW    .D2T1   A13:A12,*+SP(16)  ; |60| 
           MV      .L1X    B6,A12            ; |60| 
           MV      .L1     A4,A13            ; |60| 
           ; BRANCHCC OCCURS {$C$L6}         ; |62| 
;** --------------------------------------------------------------------------*
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_fwrite")
	.dwattr $C$DW$43, DW_AT_TI_call
           CALL    .S1     _fwrite           ; |63| 
           LDW     .D1T1   *A10++,A4         ; |63| 
           MVK     .L2     0x2,B4            ; |63| 
           MV      .L1     A11,A6            ; |63| 
	.dwpsn	file "../main.c",line 62,column 0,is_stmt
           MV      .L2X    A12,B6            ; |63| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_saveMat$3$B:
           ADDKPC  .S2     $C$RL2,B3,0       ; |63| 
$C$RL2:    ; CALL OCCURS {_fwrite} {0}       ; |63| 
$C$DW$L$_saveMat$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_saveMat$4$B:
           SUB     .L1     A13,1,A0          ; |62| 

   [ A0]   B       .S1     $C$L5             ; |62| 
|| [ A0]   LDW     .D1T1   *A10++,A4         ; |63| 

$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_fwrite")
	.dwattr $C$DW$44, DW_AT_TI_call
   [ A0]   CALL    .S1     _fwrite           ; |63| 
   [ A0]   MVK     .L2     0x2,B4            ; |63| 
   [ A0]   MV      .L1     A11,A6            ; |63| 
   [ A0]   MV      .L2X    A12,B6            ; |63| 
	.dwpsn	file "../main.c",line 64,column 0,is_stmt
           SUB     .L1     A13,1,A13         ; |62| 
           ; BRANCHCC OCCURS {$C$L5}         ; |62| 
$C$DW$L$_saveMat$4$E:
;** --------------------------------------------------------------------------*
$C$L6:    

           MV      .L2     B13,B3            ; |65| 
||         LDDW    .D2T1   *+SP(16),A13:A12  ; |65| 

$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

           RET     .S2     B3                ; |65| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |65| 

           LDW     .D2T2   *++SP(24),B13     ; |65| 
	.dwpsn	file "../main.c",line 65,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |65| 

$C$DW$46	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$46, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L5:1:1609987799")
	.dwattr $C$DW$46, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x40)
$C$DW$47	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$47, DW_AT_low_pc($C$DW$L$_saveMat$3$B)
	.dwattr $C$DW$47, DW_AT_high_pc($C$DW$L$_saveMat$3$E)
$C$DW$48	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$48, DW_AT_low_pc($C$DW$L$_saveMat$4$B)
	.dwattr $C$DW$48, DW_AT_high_pc($C$DW$L$_saveMat$4$E)
	.dwendtag $C$DW$46

	.dwattr $C$DW$38, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$38

	.sect	".text"
	.clink
	.global	_initMat

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("initMat")
	.dwattr $C$DW$49, DW_AT_low_pc(_initMat)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_initMat")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x20)
	.dwattr $C$DW$49, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$49, DW_AT_TI_skeletal
	.dwpsn	file "../main.c",line 43,column 51,is_stmt,address _initMat
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg4]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg20]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("piFile")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_piFile")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: initMat                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,*
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 8 Args + 0 Auto + 24 Save = 32 byte                  *
;******************************************************************************
_initMat:
;** --------------------------------------------------------------------------*
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_calloc")
	.dwattr $C$DW$53, DW_AT_TI_call
           CALL    .S1     _calloc           ; |45| 
           STW     .D2T2   B13,*SP--(32)     ; |43| 
           STDW    .D2T1   A13:A12,*+SP(24)  ; |43| 
           STDW    .D2T1   A11:A10,*+SP(16)  ; |43| 
           MV      .L2     B3,B13            ; |43| 

           STW     .D2T1   A14,*+SP(12)      ; |43| 
||         MV      .L1X    B4,A11            ; |43| 
||         MV      .S1     A4,A10            ; |43| 
||         MV      .D1     A6,A12            ; |43| 
||         MVK     .L2     0x4,B4            ; |45| 
||         ADDKPC  .S2     $C$RL3,B3,0       ; |45| 

$C$RL3:    ; CALL OCCURS {_calloc} {0}       ; |45| 
;** --------------------------------------------------------------------------*
           CMPGT   .L1     A10,0,A0          ; |47| 
   [!A0]   BNOP    .S1     $C$L10,4          ; |47| 

           ZERO    .L1     A13               ; |47| 
||         MV      .S1     A4,A14            ; |45| 

           ; BRANCHCC OCCURS {$C$L10}        ; |47| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 47,column 0,is_stmt
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_calloc")
	.dwattr $C$DW$54, DW_AT_TI_call
           CALL    .S1     _calloc           ; |48| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_initMat$4$B:
           ADDKPC  .S2     $C$RL4,B3,3       ; |48| 

           MV      .L1     A11,A4            ; |48| 
||         MVK     .L2     0x1,B4            ; |48| 

$C$RL4:    ; CALL OCCURS {_calloc} {0}       ; |48| 
$C$DW$L$_initMat$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_initMat$5$B:
           MV      .L1     A4,A0             ; |48| 
   [ A0]   B       .S1     $C$L8             ; |49| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_fread")
	.dwattr $C$DW$55, DW_AT_TI_call
   [ A0]   CALL    .S1     _fread            ; |51| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_printf")
	.dwattr $C$DW$56, DW_AT_TI_call
   [!A0]   CALL    .S1     _printf           ; |54| 
   [!A0]   MVKL    .S2     $C$SL3+0,B4
   [!A0]   MVKH    .S2     $C$SL3+0,B4
           NOP             1
           ; BRANCHCC OCCURS {$C$L8}         ; |49| 
$C$DW$L$_initMat$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_initMat$6$B:
           STW     .D2T2   B4,*+SP(4)        ; |54| 
           ADDKPC  .S2     $C$RL5,B3,0       ; |54| 
$C$RL5:    ; CALL OCCURS {_printf} {0}       ; |54| 
$C$DW$L$_initMat$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_initMat$7$B:

           B       .S2     $C$L9             ; |54| 
||         SUB     .L1     A10,1,A0          ; |47| 
||         ADD     .S1     1,A13,A13         ; |47| 
||         SUB     .D1     A10,1,A10         ; |47| 

   [ A0]   BNOP    .S1     $C$L7,4           ; |47| 
           ; BRANCH OCCURS {$C$L9}           ; |54| 
$C$DW$L$_initMat$7$E:
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_initMat$8$B:

           MV      .L1     A11,A6            ; |51| 
||         STW     .D1T1   A0,*+A14[A13]     ; |50| 
||         MV      .L2X    A12,B6            ; |51| 
||         MVK     .D2     0x1,B4            ; |51| 
||         ADDKPC  .S2     $C$RL6,B3,0       ; |51| 

$C$RL6:    ; CALL OCCURS {_fread} {0}        ; |51| 

           SUB     .L1     A10,1,A0          ; |47| 
||         ADD     .S1     1,A13,A13         ; |47| 
||         SUB     .D1     A10,1,A10         ; |47| 

   [ A0]   BNOP    .S1     $C$L7,4           ; |47| 
$C$DW$L$_initMat$8$E:
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_initMat$9$B:
	.dwpsn	file "../main.c",line 56,column 0,is_stmt
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_calloc")
	.dwattr $C$DW$57, DW_AT_TI_call
   [ A0]   CALL    .S1     _calloc           ; |48| 
           ; BRANCHCC OCCURS {$C$L7}         ; |47| 
$C$DW$L$_initMat$9$E:
;** --------------------------------------------------------------------------*
$C$L10:    
           LDDW    .D2T1   *+SP(16),A11:A10  ; |58| 

           MV      .L2     B13,B3            ; |58| 
||         LDDW    .D2T1   *+SP(24),A13:A12  ; |58| 

$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

           RET     .S2     B3                ; |58| 
||         MV      .L1     A14,A4            ; |57| 
||         LDW     .D2T1   *+SP(12),A14      ; |58| 

           LDW     .D2T2   *++SP(32),B13     ; |58| 
	.dwpsn	file "../main.c",line 58,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |58| 

$C$DW$59	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$59, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L7:1:1609987799")
	.dwattr $C$DW$59, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x38)
$C$DW$60	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$60, DW_AT_low_pc($C$DW$L$_initMat$4$B)
	.dwattr $C$DW$60, DW_AT_high_pc($C$DW$L$_initMat$4$E)
$C$DW$61	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$61, DW_AT_low_pc($C$DW$L$_initMat$5$B)
	.dwattr $C$DW$61, DW_AT_high_pc($C$DW$L$_initMat$5$E)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_initMat$6$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_initMat$6$E)
$C$DW$63	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$63, DW_AT_low_pc($C$DW$L$_initMat$7$B)
	.dwattr $C$DW$63, DW_AT_high_pc($C$DW$L$_initMat$7$E)
$C$DW$64	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$64, DW_AT_low_pc($C$DW$L$_initMat$8$B)
	.dwattr $C$DW$64, DW_AT_high_pc($C$DW$L$_initMat$8$E)
$C$DW$65	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$65, DW_AT_low_pc($C$DW$L$_initMat$9$B)
	.dwattr $C$DW$65, DW_AT_high_pc($C$DW$L$_initMat$9$E)
	.dwendtag $C$DW$59

	.dwattr $C$DW$49, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$49

	.sect	".text"
	.clink
	.global	_H_transform

$C$DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("H_transform")
	.dwattr $C$DW$66, DW_AT_low_pc(_H_transform)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_H_transform")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$66, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x43)
	.dwattr $C$DW$66, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(0x30)
	.dwattr $C$DW$66, DW_AT_frame_base[DW_OP_breg31 48]
	.dwattr $C$DW$66, DW_AT_TI_skeletal
	.dwpsn	file "../main.c",line 67,column 52,is_stmt,address _H_transform
$C$DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_height")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg4]
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_width")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg20]
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("X")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_X")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: H_transform                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************
_H_transform:
;** --------------------------------------------------------------------------*
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_calloc")
	.dwattr $C$DW$70, DW_AT_TI_call
           CALL    .S1     _calloc           ; |80| 

           STW     .D2T1   A11,*SP--(48)     ; |67| 
||         MV      .L1X    SP,A31            ; |67| 

           STW     .D1T1   A10,*-A31(4)      ; |67| 
||         STDW    .D2T2   B13:B12,*+SP(32)  ; |67| 

           STDW    .D1T1   A13:A12,*-A31(40) ; |67| 
||         STW     .D2T2   B3,*+SP(40)       ; |67| 

           STDW    .D1T1   A15:A14,*-A31(32) ; |67| 
||         STDW    .D2T2   B11:B10,*+SP(24)  ; |67| 

           ADDKPC  .S2     $C$RL7,B3,0       ; |80| 
||         MVK     .L1     0x4,A4            ; |80| 
||         MV      .S1     A6,A10            ; |67| 
||         MV      .D1     A4,A13            ; |67| 
||         MVK     .L2     0x2,B4            ; |80| 
||         MV      .D2     B4,B13            ; |67| 

$C$RL7:    ; CALL OCCURS {_calloc} {0}       ; |80| 
;** --------------------------------------------------------------------------*
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_calloc")
	.dwattr $C$DW$71, DW_AT_TI_call
           CALL    .S1     _calloc           ; |81| 
           ADDKPC  .S2     $C$RL8,B3,3       ; |81| 

           MVK     .L2     0x2,B4            ; |81| 
||         MV      .L1     A4,A12            ; |80| 
||         MVK     .S1     0x4,A4            ; |81| 

$C$RL8:    ; CALL OCCURS {_calloc} {0}       ; |81| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_calloc")
	.dwattr $C$DW$72, DW_AT_TI_call
           CALL    .S1     _calloc           ; |82| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |82| 

           MV      .L1     A4,A15            ; |81| 
||         MVK     .S1     0x4,A4            ; |82| 
||         MVK     .L2     0x2,B4            ; |82| 

$C$RL9:    ; CALL OCCURS {_calloc} {0}       ; |82| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_calloc")
	.dwattr $C$DW$73, DW_AT_TI_call
           CALL    .S1     _calloc           ; |83| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |83| 

           MV      .L2X    A4,B12            ; |82| 
||         MVK     .L1     0x4,A4            ; |83| 
||         MVK     .S2     0x2,B4            ; |83| 

$C$RL10:   ; CALL OCCURS {_calloc} {0}       ; |83| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_calloc")
	.dwattr $C$DW$74, DW_AT_TI_call
           CALL    .S1     _calloc           ; |84| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |84| 

           MV      .L1     A4,A14            ; |83| 
||         MVK     .S1     0x4,A4            ; |84| 
||         MVK     .L2     0x4,B4            ; |84| 

$C$RL11:   ; CALL OCCURS {_calloc} {0}       ; |84| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_calloc")
	.dwattr $C$DW$75, DW_AT_TI_call
           CALL    .S1     _calloc           ; |90| 
           MV      .L1     A4,A11            ; |84| 

           STW     .D1T1   A12,*A11          ; |85| 
||         ADD     .L2X    4,A4,B11          ; |86| 

           ADD     .L2X    8,A4,B10          ; |87| 
||         STW     .D2T1   A15,*B11          ; |86| 

           ADD     .L1     12,A11,A15        ; |88| 
||         STW     .D2T2   B12,*B10          ; |87| 

           STW     .D1T1   A14,*A15          ; |88| 
||         ADDKPC  .S2     $C$RL12,B3,0      ; |90| 
||         MVK     .L2     0x4,B4            ; |90| 
||         MV      .L1     A13,A4            ; |67| 

$C$RL12:   ; CALL OCCURS {_calloc} {0}       ; |90| 
;** --------------------------------------------------------------------------*

           CMPGT   .L1     A13,0,A0          ; |91| 
||         MV      .L2X    A13,B12           ; |67| 
||         MV      .S1X    B13,A13           ; |67| 
||         MV      .D1     A4,A14            ; |90| 

   [!A0]   BNOP    .S1     $C$L12,5          ; |91| 
||         MV      .L1     A4,A12            ; |90| 

           ; BRANCHCC OCCURS {$C$L12}        ; |91| 
;** --------------------------------------------------------------------------*
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_calloc")
	.dwattr $C$DW$76, DW_AT_TI_call
           CALL    .S1     _calloc           ; |92| 
           MVK     .L2     0x2,B4            ; |92| 
           MV      .L1     A13,A4            ; |92| 
	.dwpsn	file "../main.c",line 91,column 0,is_stmt
           NOP             2
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_H_transform$5$B:
           ADDKPC  .S2     $C$RL13,B3,0      ; |92| 
$C$RL13:   ; CALL OCCURS {_calloc} {0}       ; |92| 
$C$DW$L$_H_transform$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_H_transform$6$B:
           SUB     .L1X    B12,1,A0          ; |91| 
   [ A0]   B       .S1     $C$L11            ; |91| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_calloc")
	.dwattr $C$DW$77, DW_AT_TI_call
   [ A0]   CALL    .S1     _calloc           ; |92| 
   [ A0]   MVK     .L2     0x2,B4            ; |92| 
           STW     .D1T1   A4,*A12++         ; |92| 
   [ A0]   MV      .L1     A13,A4            ; |92| 
	.dwpsn	file "../main.c",line 93,column 0,is_stmt
           SUB     .L2     B12,1,B12         ; |91| 
           ; BRANCHCC OCCURS {$C$L11}        ; |91| 
$C$DW$L$_H_transform$6$E:
;** --------------------------------------------------------------------------*
$C$L12:    

           CMPGT   .L1     A13,0,A0          ; |99| 
||         MVKL    .S2     0x10001,B4
||         ADD     .D1     3,A13,A5
||         SHL     .S1     A3,2,A4

   [!A0]   B       .S1     $C$L14            ; |99| 
||         MVKH    .S2     0x10001,B4
|| [ A0]   LDW     .D1T1   *+A10[A3],A7

           SHR     .S2X    A5,2,B0
||         ADD     .L1     A4,A14,A5
||         MV      .L2     B4,B20
||         ADD     .S1     A4,A10,A4
|| [ A0]   LDW     .D1T1   *+A14[A3],A9

   [ A0]   LDW     .D1T1   *+A4(8),A8
   [ A0]   LDW     .D1T1   *+A4(4),A16
   [ A0]   LDW     .D1T1   *+A4(12),A4
   [ A0]   LDW     .D1T1   *+A5(8),A6
           ; BRANCHCC OCCURS {$C$L14}        ; |99| 
;** --------------------------------------------------------------------------*

           LDW     .D1T1   *+A5(4),A3
||         SUB     .L2X    A9,8,B9
||         SUB     .L1     A7,4,A7
||         LDW     .D2T2   *B10,B7

           LDW     .D1T1   *+A5(12),A5
||         SUB     .L1     A8,4,A18

           LDW     .D1T1   *A15,A16
||         SUB     .L2X    A16,4,B8

           SUB     .L2X    A4,4,B17
||         LDW     .D2T1   *B11,A17
||         LDW     .D1T2   *A11,B6

           SUB     .L2X    A6,8,B16
           SUB     .L1     A3,8,A8
	.dwpsn	file "../main.c",line 99,column 0,is_stmt
           SUB     .L1     A5,8,A9
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_H_transform$9$B:

           LDB     .D1T1   *++A18(4),A3      ; |123| 
||         LDB     .D2T2   *++B17(4),B5      ; |123| 

           LDB     .D1T1   *++A7(4),A4       ; |123| 
||         LDB     .D2T2   *++B8(4),B4       ; |123| 

           NOP             3
           PACK2   .L2X    B5,A3,B5          ; |123| 
           PACK2   .L2X    B4,A4,B4          ; |123| 
           ADD2    .L2     B4,B5,B4          ; |123| 
           DOTP2   .M2     B4,B20,B4         ; |123| 
           NOP             3
           STH     .D2T2   B4,*B6            ; |123| 

           LDB     .D1T1   *+A18(1),A3       ; |124| 
||         LDB     .D2T2   *+B17(1),B5       ; |124| 

           LDB     .D1T1   *+A7(1),A4        ; |124| 
||         LDB     .D2T2   *+B8(1),B4        ; |124| 

           NOP             3
           PACK2   .L2X    B5,A3,B5          ; |124| 
           PACK2   .L2X    B4,A4,B4          ; |124| 
           ADD2    .L2     B4,B5,B4          ; |124| 
           DOTP2   .M2     B4,B20,B4         ; |124| 
           NOP             3
           STH     .D2T2   B4,*+B6(2)        ; |124| 

           LDB     .D1T1   *+A18(2),A3       ; |125| 
||         LDB     .D2T2   *+B17(2),B4       ; |125| 

           LDB     .D1T1   *+A7(2),A4        ; |125| 
||         LDB     .D2T2   *+B8(2),B5        ; |125| 

           NOP             3
           PACK2   .L2X    B4,A3,B4          ; |125| 
           PACK2   .L2X    B5,A4,B5          ; |125| 
           ADD2    .L2     B5,B4,B4          ; |125| 
           DOTP2   .M2     B4,B20,B4         ; |125| 
           NOP             3
           STH     .D2T2   B4,*+B6(4)        ; |125| 

           LDB     .D1T1   *+A18(3),A3       ; |126| 
||         LDB     .D2T2   *+B17(3),B5       ; |126| 

           LDB     .D1T1   *+A7(3),A4        ; |126| 
||         LDB     .D2T2   *+B8(3),B4        ; |126| 

           NOP             3
           PACK2   .L2X    B5,A3,B5          ; |126| 
           PACK2   .L2X    B4,A4,B4          ; |126| 
           ADD2    .L2     B4,B5,B4          ; |126| 
           DOTP2   .M2     B4,B20,B4         ; |126| 
           NOP             3
           STH     .D2T2   B4,*+B6(6)        ; |126| 
           LDB     .D2T2   *B8,B19           ; |128| 
           LDB     .D1T2   *A7,B18           ; |128| 
           LDB     .D1T2   *A18,B5           ; |128| 
           LDB     .D2T2   *B17,B4           ; |128| 
           NOP             2
           ADDAH   .D2     B19,B18,B18       ; |128| 
           SUB     .L2     B18,B5,B5         ; |128| 
           SUBAH   .D2     B5,B4,B4          ; |128| 
           STH     .D1T2   B4,*A17           ; |128| 
           LDB     .D2T2   *+B8(1),B19       ; |129| 
           LDB     .D1T2   *+A7(1),B18       ; |129| 
           LDB     .D1T2   *+A18(1),B5       ; |129| 
           LDB     .D2T2   *+B17(1),B4       ; |129| 
           NOP             2
           ADDAH   .D2     B19,B18,B18       ; |129| 
           SUB     .L2     B18,B5,B5         ; |129| 
           SUBAH   .D2     B5,B4,B4          ; |129| 
           STH     .D1T2   B4,*+A17(2)       ; |129| 
           LDB     .D2T1   *+B8(2),A5        ; |130| 
           LDB     .D1T1   *+A7(2),A4        ; |130| 
           LDB     .D1T2   *+A18(2),B4       ; |130| 
           LDB     .D2T1   *+B17(2),A3       ; |130| 
           NOP             2
           ADDAH   .D1     A5,A4,A4          ; |130| 
           SUB     .L1X    A4,B4,A4          ; |130| 
           SUBAH   .D1     A4,A3,A3          ; |130| 
           STH     .D1T1   A3,*+A17(4)       ; |130| 
           LDB     .D2T1   *+B8(3),A6        ; |131| 
           LDB     .D1T1   *+A7(3),A5        ; |131| 
           LDB     .D1T1   *+A18(3),A4       ; |131| 
           LDB     .D2T1   *+B17(3),A3       ; |131| 
           NOP             2
           ADDAH   .D1     A6,A5,A5          ; |131| 
           SUB     .L1     A5,A4,A4          ; |131| 
           SUBAH   .D1     A4,A3,A3          ; |131| 
           STH     .D1T1   A3,*+A17(6)       ; |131| 

           LDB     .D1T1   *A7,A4            ; |133| 
||         LDB     .D2T2   *B8,B4            ; |133| 

           LDB     .D1T1   *A18,A3           ; |133| 
           LDB     .D2T2   *B17,B5           ; |133| 
           NOP             2
           SUB     .L1X    A4,B4,A4          ; |133| 
           SUB     .L1     A4,A3,A3          ; |133| 
           NOP             1
           ADD     .L2X    B5,A3,B4          ; |133| 
           STH     .D2T2   B4,*B7            ; |133| 
           LDB     .D2T1   *+B8(1),A3        ; |134| 
           LDB     .D1T1   *+A7(1),A4        ; |134| 
           LDB     .D1T1   *+A18(1),A5       ; |134| 
           LDB     .D2T2   *+B17(1),B4       ; |134| 
           NOP             2
           SUB     .L1     A4,A3,A3          ; |134| 
           SUB     .L1     A3,A5,A3          ; |134| 
           ADD     .L1X    B4,A3,A3          ; |134| 
           STH     .D2T1   A3,*+B7(2)        ; |134| 
           LDB     .D2T2   *+B8(2),B4        ; |135| 
           LDB     .D1T2   *+A7(2),B5        ; |135| 
           LDB     .D1T1   *+A18(2),A3       ; |135| 
           LDB     .D2T2   *+B17(2),B18      ; |135| 
           NOP             2
           SUB     .L2     B5,B4,B4          ; |135| 
           SUB     .L2X    B4,A3,B4          ; |135| 
           ADD     .L2     B18,B4,B4         ; |135| 
           STH     .D2T2   B4,*+B7(4)        ; |135| 

           LDB     .D1T1   *+A7(3),A4        ; |136| 
||         LDB     .D2T2   *+B8(3),B5        ; |136| 

           LDB     .D1T1   *+A18(3),A3       ; |136| 
           LDB     .D2T2   *+B17(3),B4       ; |136| 
           NOP             2
           SUB     .L1X    A4,B5,A4          ; |136| 
           SUB     .L1     A4,A3,A3          ; |136| 
           NOP             1
           ADD     .L2X    B4,A3,B4          ; |136| 
           STH     .D2T2   B4,*+B7(6)        ; |136| 
           LDB     .D2T2   *B8,B5            ; |138| 
           LDB     .D1T2   *A7,B18           ; |138| 
           LDB     .D1T2   *A18,B4           ; |138| 
           LDB     .D2T1   *B17,A3           ; |138| 
           NOP             2
           SUBAH   .D2     B18,B5,B5         ; |138| 
           ADDAH   .D2     B5,B4,B4          ; |138| 
           SUB     .L2X    B4,A3,B4          ; |138| 
           STH     .D1T2   B4,*A16           ; |138| 
           LDB     .D2T1   *+B8(1),A4        ; |139| 
           LDB     .D1T1   *+A7(1),A5        ; |139| 
           LDB     .D1T1   *+A18(1),A3       ; |139| 
           LDB     .D2T2   *+B17(1),B4       ; |139| 
           NOP             2
           SUBAH   .D1     A5,A4,A4          ; |139| 
           ADDAH   .D1     A4,A3,A3          ; |139| 
           SUB     .L1X    A3,B4,A3          ; |139| 
           STH     .D1T1   A3,*+A16(2)       ; |139| 
           LDB     .D2T2   *+B8(2),B5        ; |140| 
           LDB     .D1T2   *+A7(2),B18       ; |140| 
           LDB     .D1T2   *+A18(2),B4       ; |140| 
           LDB     .D2T2   *+B17(2),B19      ; |140| 
           NOP             2
           SUBAH   .D2     B18,B5,B5         ; |140| 
           ADDAH   .D2     B5,B4,B4          ; |140| 
           SUB     .L2     B4,B19,B4         ; |140| 
           STH     .D1T2   B4,*+A16(4)       ; |140| 
           LDB     .D2T1   *+B8(3),A4        ; |141| 
           LDB     .D1T1   *+A7(3),A5        ; |141| 
           LDB     .D1T1   *+A18(3),A3       ; |141| 
           LDB     .D2T2   *+B17(3),B4       ; |141| 
           NOP             2
           SUBAH   .D1     A5,A4,A4          ; |141| 
           ADDAH   .D1     A4,A3,A3          ; |141| 
           SUB     .L1X    A3,B4,A3          ; |141| 
           STH     .D1T1   A3,*+A16(6)       ; |141| 
           LDNDW   .D2T2   *B6,B5:B4         ; |144| 
           NOP             4
           ADD2    .L2     B4,B5,B4          ; |144| 
           DOTP2   .M2     B4,B20,B4         ; |144| 
           NOP             3
           STH     .D2T2   B4,*++B9(8)       ; |144| 
           LDNDW   .D1T1   *A17,A5:A4        ; |145| 
           NOP             4
           ADD2    .L1     A4,A5,A3          ; |145| 
           DOTP2   .M1X    A3,B20,A3         ; |145| 
           NOP             3
           STH     .D1T1   A3,*++A8(8)       ; |145| 
           LDNDW   .D2T2   *B7,B5:B4         ; |146| 
           NOP             4
           ADD2    .L2     B4,B5,B4          ; |146| 
           DOTP2   .M2     B4,B20,B4         ; |146| 
           NOP             3
           STH     .D2T2   B4,*++B16(8)      ; |146| 
           LDNDW   .D1T1   *A16,A5:A4        ; |147| 
           NOP             4
           ADD2    .L1     A4,A5,A3          ; |147| 
           DOTP2   .M1X    A3,B20,A3         ; |147| 
           NOP             3
           STH     .D1T1   A3,*++A9(8)       ; |147| 
           LDH     .D2T1   *B6,A4            ; |149| 
           LDH     .D2T1   *+B6(2),A5        ; |149| 
           LDH     .D2T2   *+B6(4),B4        ; |149| 
           LDH     .D2T1   *+B6(6),A3        ; |149| 
           NOP             2
           ADDAH   .D1     A5,A4,A4          ; |149| 
           SUB     .L1X    A4,B4,A4          ; |149| 
           SUBAH   .D1     A4,A3,A3          ; |149| 
           STH     .D2T1   A3,*+B9(2)        ; |149| 
           LDH     .D1T1   *A17,A4           ; |150| 
           LDH     .D1T1   *+A17(2),A5       ; |150| 
           LDH     .D1T1   *+A17(4),A3       ; |150| 
           LDH     .D1T1   *+A17(6),A6       ; |150| 
           NOP             2
           ADDAH   .D1     A5,A4,A4          ; |150| 
           SUB     .L1     A4,A3,A3          ; |150| 
           SUBAH   .D1     A3,A6,A3          ; |150| 
           STH     .D1T1   A3,*+A8(2)        ; |150| 
           LDH     .D2T2   *B7,B18           ; |151| 
           LDH     .D2T2   *+B7(2),B19       ; |151| 
           LDH     .D2T2   *+B7(4),B5        ; |151| 
           LDH     .D2T2   *+B7(6),B4        ; |151| 
           NOP             2
           ADDAH   .D2     B19,B18,B18       ; |151| 
           SUB     .L2     B18,B5,B5         ; |151| 
           SUBAH   .D2     B5,B4,B4          ; |151| 
           STH     .D2T2   B4,*+B16(2)       ; |151| 
           LDH     .D1T1   *A16,A5           ; |152| 
           LDH     .D1T1   *+A16(2),A6       ; |152| 
           LDH     .D1T1   *+A16(4),A4       ; |152| 
           LDH     .D1T1   *+A16(6),A3       ; |152| 
           NOP             2
           ADDAH   .D1     A6,A5,A5          ; |152| 
           SUB     .L1     A5,A4,A4          ; |152| 
           SUBAH   .D1     A4,A3,A3          ; |152| 
           STH     .D1T1   A3,*+A9(2)        ; |152| 
           LDH     .D2T2   *B6,B18           ; |154| 
           LDH     .D2T2   *+B6(2),B5        ; |154| 
           LDH     .D2T2   *+B6(4),B4        ; |154| 
           LDH     .D2T2   *+B6(6),B19       ; |154| 
           NOP             2
           SUB     .L2     B18,B5,B5         ; |154| 
           SUB     .L2     B5,B4,B4          ; |154| 
           ADD     .L2     B19,B4,B4         ; |154| 
           STH     .D2T2   B4,*+B9(4)        ; |154| 
           LDH     .D1T1   *+A17(2),A4       ; |155| 
           LDH     .D1T1   *A17,A5           ; |155| 
           LDH     .D1T1   *+A17(4),A3       ; |155| 
           LDH     .D1T1   *+A17(6),A6       ; |155| 
           NOP             2
           SUB     .L1     A5,A4,A4          ; |155| 
           SUB     .L1     A4,A3,A3          ; |155| 
           ADD     .L1     A6,A3,A3          ; |155| 
           STH     .D1T1   A3,*+A8(4)        ; |155| 
           LDH     .D2T2   *+B7(2),B18       ; |156| 
           LDH     .D2T2   *B7,B19           ; |156| 
           LDH     .D2T2   *+B7(4),B4        ; |156| 
           LDH     .D2T2   *+B7(6),B5        ; |156| 
           NOP             2
           SUB     .L2     B19,B18,B18       ; |156| 
           SUB     .L2     B18,B4,B4         ; |156| 
           ADD     .L2     B5,B4,B4          ; |156| 
           STH     .D2T2   B4,*+B16(4)       ; |156| 
           LDH     .D1T1   *A16,A3           ; |157| 
           LDH     .D1T1   *+A16(2),A4       ; |157| 
           NOP             4

           SUB     .L1     A3,A4,A4          ; |157| 
||         LDH     .D1T1   *+A16(4),A3       ; |157| 

           NOP             4
$C$DW$L$_H_transform$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_H_transform$10$B:
           LDH     .D1T1   *+A16(6),A5       ; |157| 
           SUB     .L1     A4,A3,A3          ; |157| 
           SUB     .L2     B0,1,B0           ; |99| 
           NOP             2
           ADD     .L1     A5,A3,A3          ; |157| 
           STH     .D1T1   A3,*+A9(4)        ; |157| 
           LDH     .D2T2   *B6,B19           ; |159| 
           LDH     .D2T2   *+B6(2),B18       ; |159| 
           LDH     .D2T2   *+B6(4),B5        ; |159| 
           LDH     .D2T2   *+B6(6),B4        ; |159| 
           NOP             2
           SUBAH   .D2     B19,B18,B18       ; |159| 
           ADDAH   .D2     B18,B5,B5         ; |159| 
           SUB     .L2     B5,B4,B4          ; |159| 
           STH     .D2T2   B4,*+B9(6)        ; |159| 
           LDH     .D1T1   *+A17(2),A5       ; |160| 
           LDH     .D1T1   *A17,A6           ; |160| 
           LDH     .D1T1   *+A17(4),A4       ; |160| 
           LDH     .D1T1   *+A17(6),A3       ; |160| 
           NOP             2
           SUBAH   .D1     A6,A5,A5          ; |160| 
           ADDAH   .D1     A5,A4,A4          ; |160| 
           SUB     .L1     A4,A3,A3          ; |160| 
           STH     .D1T1   A3,*+A8(6)        ; |160| 
           LDH     .D2T2   *B7,B19           ; |161| 
           LDH     .D2T2   *+B7(2),B18       ; |161| 
           LDH     .D2T2   *+B7(4),B5        ; |161| 
           LDH     .D2T2   *+B7(6),B4        ; |161| 
           NOP             2
           SUBAH   .D2     B19,B18,B18       ; |161| 
           ADDAH   .D2     B18,B5,B5         ; |161| 
           SUB     .L2     B5,B4,B4          ; |161| 
           STH     .D2T2   B4,*+B16(6)       ; |161| 
           LDH     .D1T1   *A16,A6           ; |162| 
           LDH     .D1T1   *+A16(2),A5       ; |162| 
           LDH     .D1T1   *+A16(4),A4       ; |162| 
           LDH     .D1T1   *+A16(6),A3       ; |162| 
   [ B0]   BNOP    .S1     $C$L13,1          ; |99| 
           SUBAH   .D1     A6,A5,A5          ; |162| 
           ADDAH   .D1     A5,A4,A4          ; |162| 
           SUB     .L1     A4,A3,A3          ; |162| 
	.dwpsn	file "../main.c",line 187,column 0,is_stmt
           STH     .D1T1   A3,*+A9(6)        ; |162| 
           ; BRANCHCC OCCURS {$C$L13}        ; |99| 
$C$DW$L$_H_transform$10$E:
;** --------------------------------------------------------------------------*
$C$L14:    
           LDW     .D2T2   *+SP(40),B3       ; |190| 
           MV      .L1X    SP,A31            ; |190| 
           LDDW    .D1T1   *+A31(8),A13:A12  ; |190| 
           LDW     .D1T1   *+A31(44),A10     ; |190| 
           LDDW    .D2T2   *+SP(32),B13:B12  ; |190| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

           RET     .S2     B3                ; |190| 
||         MV      .L1     A14,A4            ; |189| 
||         LDDW    .D1T1   *+A31(16),A15:A14 ; |190| 
||         LDDW    .D2T2   *+SP(24),B11:B10  ; |190| 

           LDW     .D2T1   *++SP(48),A11     ; |190| 
	.dwpsn	file "../main.c",line 190,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |190| 

$C$DW$79	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$79, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L13:1:1609987799")
	.dwattr $C$DW$79, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$79, DW_AT_TI_end_line(0xbb)
$C$DW$80	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$80, DW_AT_low_pc($C$DW$L$_H_transform$9$B)
	.dwattr $C$DW$80, DW_AT_high_pc($C$DW$L$_H_transform$9$E)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_H_transform$10$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_H_transform$10$E)
	.dwendtag $C$DW$79


$C$DW$82	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$82, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L11:1:1609987799")
	.dwattr $C$DW$82, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x5d)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_H_transform$5$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_H_transform$5$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$_H_transform$6$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$_H_transform$6$E)
	.dwendtag $C$DW$82

	.dwattr $C$DW$66, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0xbe)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$66

	.sect	".text"
	.clink
	.global	_main

$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$85, DW_AT_low_pc(_main)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$85, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0x13)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(0x18)
	.dwattr $C$DW$85, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$85, DW_AT_TI_skeletal
	.dwpsn	file "../main.c",line 19,column 16,is_stmt,address _main

;******************************************************************************
;* FUNCTION NAME: main                                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                  *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_fopen")
	.dwattr $C$DW$86, DW_AT_TI_call
           CALL    .S1     _fopen            ; |24| 
           MVKL    .S2     $C$SL4+0,B4
           STW     .D2T2   B10,*SP--(24)     ; |19| 
           MVKL    .S1     _iFileName,A4

           STDW    .D2T1   A13:A12,*+SP(16)  ; |19| 
||         MVKH    .S2     $C$SL4+0,B4

           MV      .L1X    B3,A13            ; |19| 
||         ADDKPC  .S2     $C$RL14,B3,0      ; |24| 
||         MVKH    .S1     _iFileName,A4
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |19| 

$C$RL14:   ; CALL OCCURS {_fopen} {0}        ; |24| 
;** --------------------------------------------------------------------------*
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_fopen")
	.dwattr $C$DW$87, DW_AT_TI_call
           CALL    .S1     _fopen            ; |25| 
           MVKL    .S2     $C$SL5+0,B4
           MV      .L1     A4,A12            ; |24| 
           MVKL    .S1     _oFileName,A4
           MVKH    .S2     $C$SL5+0,B4

           ADDKPC  .S2     $C$RL15,B3,0      ; |25| 
||         MVKH    .S1     _oFileName,A4

$C$RL15:   ; CALL OCCURS {_fopen} {0}        ; |25| 
;** --------------------------------------------------------------------------*
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_initMat")
	.dwattr $C$DW$88, DW_AT_TI_call
           CALL    .S1     _initMat          ; |29| 
           MVK     .S2     0x48,B4           ; |28| 
           MVK     .S2     0x160,B10
           MV      .L1     A4,A11            ; |25| 
	.dwpsn	file "../main.c",line 28,column 0,is_stmt

           MV      .L1X    B4,A10            ; |28| 
||         MV      .L2     B10,B4            ; |29| 
||         MVK     .S1     0x4,A4            ; |29| 
||         MV      .D1     A12,A6            ; |29| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*----------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_main$4$B:
           ADDKPC  .S2     $C$RL16,B3,0      ; |29| 
$C$RL16:   ; CALL OCCURS {_initMat} {0}      ; |29| 
$C$DW$L$_main$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_main$5$B:
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_H_transform")
	.dwattr $C$DW$89, DW_AT_TI_call
           CALL    .S1     _H_transform      ; |30| 
           ADDKPC  .S2     $C$RL17,B3,3      ; |30| 

           MV      .L2     B10,B4            ; |30| 
||         MV      .L1     A4,A6             ; |29| 
||         MVK     .S1     0x4,A4            ; |30| 

$C$RL17:   ; CALL OCCURS {_H_transform} {0}  ; |30| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_saveMat")
	.dwattr $C$DW$90, DW_AT_TI_call
           CALL    .S1     _saveMat          ; |31| 
           ADDKPC  .S2     $C$RL18,B3,3      ; |31| 

           MV      .L2X    A11,B6            ; |31| 
||         MV      .L1     A4,A6             ; |30| 
||         MVK     .S1     0x4,A4            ; |31| 
||         MV      .S2     B10,B4            ; |31| 

$C$RL18:   ; CALL OCCURS {_saveMat} {0}      ; |31| 
$C$DW$L$_main$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_main$6$B:

           SUB     .L1     A10,1,A0          ; |28| 
||         SUB     .S1     A10,1,A10         ; |28| 

   [ A0]   B       .S1     $C$L15            ; |28| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_initMat")
	.dwattr $C$DW$91, DW_AT_TI_call
   [ A0]   CALL    .S1     _initMat          ; |29| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_fclose")
	.dwattr $C$DW$92, DW_AT_TI_call
   [!A0]   CALL    .S1     _fclose           ; |38| 
   [ A0]   MV      .L1     A12,A6            ; |29| 
   [ A0]   MV      .L2     B10,B4            ; |29| 
	.dwpsn	file "../main.c",line 32,column 0,is_stmt
   [ A0]   MVK     .L1     0x4,A4            ; |29| 
           ; BRANCHCC OCCURS {$C$L15}        ; |28| 
$C$DW$L$_main$6$E:
;** --------------------------------------------------------------------------*
           MV      .L1     A12,A4            ; |38| 
           ADDKPC  .S2     $C$RL19,B3,0      ; |38| 
$C$RL19:   ; CALL OCCURS {_fclose} {0}       ; |38| 
;** --------------------------------------------------------------------------*
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_fclose")
	.dwattr $C$DW$93, DW_AT_TI_call
           CALL    .S1     _fclose           ; |39| 
           ADDKPC  .S2     $C$RL20,B3,3      ; |39| 
           MV      .L1     A11,A4            ; |39| 
$C$RL20:   ; CALL OCCURS {_fclose} {0}       ; |39| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A13,B3            ; |41| 
||         LDDW    .D2T1   *+SP(8),A11:A10   ; |41| 

$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

           RET     .S2     B3                ; |41| 
||         LDDW    .D2T1   *+SP(16),A13:A12  ; |41| 

           LDW     .D2T2   *++SP(24),B10     ; |41| 
           ZERO    .L1     A4                ; |40| 
	.dwpsn	file "../main.c",line 41,column 1,is_stmt
           NOP             3
           ; BRANCH OCCURS {B3}              ; |41| 

$C$DW$95	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$95, DW_AT_name("D:\Learning Material\Finished\dsp\ccs\mine\4x4_matrix_transform\Release\main.asm:$C$L15:1:1609987799")
	.dwattr $C$DW$95, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x20)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$_main$4$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$_main$4$E)
$C$DW$97	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$97, DW_AT_low_pc($C$DW$L$_main$5$B)
	.dwattr $C$DW$97, DW_AT_high_pc($C$DW$L$_main$5$E)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$_main$6$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$_main$6$E)
	.dwendtag $C$DW$95

	.dwattr $C$DW$85, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$85

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"%d",9,0
$C$SL2:	.string	10,0
$C$SL3:	.string	"Out of memory!",0
$C$SL4:	.string	"rb",0
$C$SL5:	.string	"wb",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_fclose
	.global	_fopen
	.global	_printf
	.global	_fread
	.global	_fwrite
	.global	_calloc

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "TI", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x18)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$99, DW_AT_name("fd")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("buf")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("pos")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("bufend")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("buff_stop")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$104, DW_AT_name("flags")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x20)
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_const_type
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("BYTE")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("WORD")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$23	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$23, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$23, DW_AT_name("signed char")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x20)

$C$DW$T$88	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x09)
$C$DW$105	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$105, DW_AT_upper_bound(0x08)
	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x0b)
$C$DW$106	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$106, DW_AT_upper_bound(0x0a)
	.dwendtag $C$DW$T$89

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg1]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg2]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg3]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg4]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg5]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg6]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg7]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg8]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg9]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg10]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg11]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg13]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg14]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg15]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg16]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg17]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg18]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg19]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg20]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg21]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg22]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg23]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg24]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg25]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg26]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg27]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg28]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg29]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg30]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg31]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x20]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x21]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x22]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x23]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x24]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x25]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x26]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x27]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x28]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x29]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x30]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x31]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x32]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x33]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x34]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x35]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x36]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x37]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x38]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x39]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x40]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x41]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x42]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x43]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x44]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x45]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x46]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x47]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x48]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x49]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x50]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x51]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x52]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x53]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x54]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x55]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x56]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x57]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x58]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x59]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x60]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x61]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x62]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x63]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x64]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x65]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x66]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x67]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x68]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x69]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x70]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x71]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x72]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x73]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x74]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x75]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x76]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x77]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x78]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x79]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

