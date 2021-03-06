; Imported symbols
	.global AUDCTL
	.global FILDAT
	.global SKCTL
	.globalzp CLS
	.globalzp COLOR
	.globalzp DRAWLN
	.globalzp FILLIN

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_CSTRING
	.importzp	TOK_VAR_ADDR
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_SHL8
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_NUM
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_0
	.importzp	TOK_PUSH_1
	.importzp	TOK_NEG
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_DIV
	.importzp	TOK_MOD
	.importzp	TOK_ADD_VAR
	.importzp	TOK_BIT_AND
	.importzp	TOK_BIT_OR
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_BYTE_PEEK
	.importzp	TOK_RAND
	.importzp	TOK_L_NOT
	.importzp	TOK_L_OR
	.importzp	TOK_L_AND
	.importzp	TOK_LT
	.importzp	TOK_GT
	.importzp	TOK_NEQ
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_MOVE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_DECVAR
	.importzp	TOK_BYTE_POKE
	.importzp	TOK_NUM_POKE
	.importzp	TOK_VAR_STORE_0
	.importzp	TOK_POSITION
	.importzp	TOK_GRAPHICS
	.importzp	TOK_DRAWTO
	.importzp	TOK_PMGRAPHICS
	.importzp	TOK_PRINT_STR
	.importzp	TOK_PRINT_TAB
	.importzp	TOK_CLOSE
	.importzp	TOK_PUT
	.importzp	TOK_IOCHN
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_CNJUMP
	.importzp	TOK_CALL
	.importzp	TOK_RET
	.importzp	TOK_CRET
	.importzp	TOK_CNRET
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_DIM
	.importzp	TOK_USHL
	.importzp	TOK_COPY_STR
	.importzp	TOK_INT_STR
	.importzp	TOK_PAUSE
	.importzp	TOK_INT_FP
	.importzp	TOK_FLOAT
	.importzp	TOK_FP_DIV
	.importzp	TOK_FP_MUL
	.importzp	TOK_FP_SUB
	.importzp	TOK_FP_ADD
	.importzp	TOK_FP_STORE
	.importzp	TOK_FP_LOAD
	.importzp	TOK_FP_INT
	.importzp	TOK_FP_CMP
	.importzp	TOK_FP_IPOW
	.importzp	TOK_FP_STR
;-----------------------------
; Variables
NUM_VARS = 51
	.import heap_start
	.export fb_var_A
	.export fb_var_ARRAYSTRING
	.export fb_var_B
	.export fb_var_BDLY
	.export fb_var_BRST
	.export fb_var_C
	.export fb_var_CNT
	.export fb_var_CURRENT_LEVEL
	.export fb_var_D
	.export fb_var_DL
	.export fb_var_GAME_OPTION_SHOW
	.export fb_var_GAME_TYPE
	.export fb_var_H
	.export fb_var_HEIGHT
	.export fb_var_HIGH_SCORE
	.export fb_var_HLS
	.export fb_var_HLV
	.export fb_var_HOZDLY
	.export fb_var_HP
	.export fb_var_L
	.export fb_var_LS
	.export fb_var_M
	.export fb_var_N
	.export fb_var_NEXT_PIECE
	.export fb_var_NLS
	.export fb_var_P
	.export fb_var_PROT
	.export fb_var_PUZZLE_PIECE
	.export fb_var_Q
	.export fb_var_R
	.export fb_var_ROT
	.export fb_var_ROWSGOT
	.export fb_var_ROWS_CLEAR_REMAINING
	.export fb_var_SC
	.export fb_var_SCORE
	.export fb_var_SPD
	.export fb_var_SPE
	.export fb_var_SPL
	.export fb_var_T
	.export fb_var_TM
	.export fb_var_W
	.export fb_var_X
	.export fb_var_Y
fb_var_A	= heap_start + 6	; Word variable
fb_var_ARRAYSTRING	= heap_start + 62	; String Array variable
fb_var_B	= heap_start + 8	; Word variable
fb_var_BDLY	= heap_start + 90	; Word variable
fb_var_BRST	= heap_start + 74	; Word variable
fb_var_C	= heap_start + 10	; Word variable
fb_var_CNT	= heap_start + 98	; Word variable
fb_var_CURRENT_LEVEL	= heap_start + 52	; Float variable
fb_var_D	= heap_start + 12	; Word variable
fb_var_DL	= heap_start + 100	; Word variable
fb_var_GAME_OPTION_SHOW	= heap_start + 0	; String Array variable
fb_var_GAME_TYPE	= heap_start + 4	; Word variable
fb_var_H	= heap_start + 14	; Word variable
fb_var_HEIGHT	= heap_start + 32	; Float variable
fb_var_HIGH_SCORE	= heap_start + 38	; Float variable
fb_var_HLS	= heap_start + 24	; Word variable
fb_var_HLV	= heap_start + 2	; Word variable
fb_var_HOZDLY	= heap_start + 82	; Word variable
fb_var_HP	= heap_start + 64	; Word variable
fb_var_L	= heap_start + 16	; Word variable
fb_var_LS	= heap_start + 22	; Word variable
fb_var_M	= heap_start + 30	; Word variable
fb_var_N	= heap_start + 28	; Word variable
fb_var_NEXT_PIECE	= heap_start + 50	; Word variable
fb_var_NLS	= heap_start + 26	; Word variable
fb_var_P	= heap_start + 88	; Word variable
fb_var_PROT	= heap_start + 48	; Word variable
fb_var_PUZZLE_PIECE	= heap_start + 58	; Word variable
fb_var_Q	= heap_start + 96	; Word variable
fb_var_R	= heap_start + 18	; Word variable
fb_var_ROT	= heap_start + 46	; Word variable
fb_var_ROWSGOT	= heap_start + 68	; Word variable
fb_var_ROWS_CLEAR_REMAINING	= heap_start + 60	; Word variable
fb_var_SC	= heap_start + 66	; Word variable
fb_var_SCORE	= heap_start + 76	; Float variable
fb_var_SPD	= heap_start + 70	; Word variable
fb_var_SPE	= heap_start + 72	; Word variable
fb_var_SPL	= heap_start + 86	; Word variable
fb_var_T	= heap_start + 92	; Word variable
fb_var_TM	= heap_start + 44	; Word variable
fb_var_W	= heap_start + 20	; Word variable
fb_var_X	= heap_start + 94	; Word variable
fb_var_Y	= heap_start + 84	; Word variable
;-----------------------------
; Bytecode
	.segment "BYTECODE"
bytecode_start:
@FastBasic_LINE_6:	; LINE 6
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_DIM
	.byte	0
@FastBasic_LINE_7:	; LINE 7
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "         PLAY FOR HIGH SCORE      "
	.byte	TOK_COPY_STR
@FastBasic_LINE_8:	; LINE 8
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "         WIPE OUT 25 LINES        "
	.byte	TOK_COPY_STR
@FastBasic_LINE_9:	; LINE 9
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "     NEW SCREEN FOR EVERY LEVEL   "
	.byte	TOK_COPY_STR
@FastBasic_LINE_10:	; LINE 10
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, " WIPEOUT MORE LINES FOR NEW LEVEL "
	.byte	TOK_COPY_STR
@FastBasic_LINE_11:	; LINE 11
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "         WIPE OUT 50 LINES        "
	.byte	TOK_COPY_STR
@FastBasic_LINE_12:	; LINE 12
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "         WIPE OUT 100 LINES       "
	.byte	TOK_COPY_STR
@FastBasic_LINE_13:	; LINE 13
	.byte	TOK_BYTE
	.byte	14
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_CSTRING
	.byte	34, "  PLAY FOR HIGH SCORE WITH HIGHT  "
	.byte	TOK_COPY_STR
@FastBasic_LINE_17:	; LINE 17
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_VAR_STORE
	.byte	1
@FastBasic_LINE_18:	; LINE 18
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	2
@FastBasic_LINE_19:	; LINE 19
	.byte	TOK_VAR_STORE_0
	.byte	3
@FastBasic_LINE_20:	; LINE 20
	.byte	TOK_VAR_STORE_0
	.byte	4
@FastBasic_LINE_21:	; LINE 21
	.byte	TOK_VAR_STORE_0
	.byte	5
@FastBasic_LINE_22:	; LINE 22
	.byte	TOK_VAR_STORE_0
	.byte	6
@FastBasic_LINE_23:	; LINE 23
	.byte	TOK_VAR_STORE_0
	.byte	7
@FastBasic_LINE_24:	; LINE 24
	.byte	TOK_VAR_STORE_0
	.byte	8
@FastBasic_LINE_25:	; LINE 25
	.byte	TOK_VAR_STORE_0
	.byte	9
@FastBasic_LINE_26:	; LINE 26
	.byte	TOK_VAR_STORE_0
	.byte	10
@FastBasic_LINE_27:	; LINE 27
	.byte	TOK_VAR_STORE_0
	.byte	11
@FastBasic_LINE_28:	; LINE 28
	.byte	TOK_VAR_STORE_0
	.byte	12
@FastBasic_LINE_29:	; LINE 29
	.byte	TOK_VAR_STORE_0
	.byte	13
@FastBasic_LINE_30:	; LINE 30
	.byte	TOK_VAR_STORE_0
	.byte	14
@FastBasic_LINE_31:	; LINE 31
	.byte	TOK_VAR_STORE_0
	.byte	15
@FastBasic_LINE_32:	; LINE 32
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_33:	; LINE 33
	.byte	TOK_VAR_SADDR
	.byte	19
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_34:	; LINE 34
	.byte	TOK_VAR_STORE_0
	.byte	22
@FastBasic_LINE_35:	; LINE 35
	.byte	TOK_VAR_STORE_0
	.byte	23
@FastBasic_LINE_36:	; LINE 36
	.byte	TOK_VAR_STORE_0
	.byte	24
@FastBasic_LINE_37:	; LINE 37
	.byte	TOK_VAR_STORE_0
	.byte	25
@FastBasic_LINE_38:	; LINE 38
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_39:	; LINE 39
	.byte	TOK_VAR_STORE_0
	.byte	29
@FastBasic_LINE_40:	; LINE 40
	.byte	TOK_VAR_STORE_0
	.byte	30
@FastBasic_LINE_41:	; LINE 41
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_DIM
	.byte	31
@FastBasic_LINE_42:	; LINE 42
	.export	jump_lbl_3
jump_lbl_3:
@FastBasic_LINE_44:	; LINE 44
	.byte	TOK_CALL
	.word	fb_lbl_TITLE_SCREEN
@FastBasic_LINE_45:	; LINE 45
	.byte	TOK_CALL
	.word	fb_lbl_INITIALIZE
@FastBasic_LINE_46:	; LINE 46
	.byte	TOK_BYTE
	.byte	30
	.byte	TOK_VAR_STORE
	.byte	32
@FastBasic_LINE_47:	; LINE 47
	.byte	TOK_VAR_STORE_0
	.byte	11
@FastBasic_LINE_48:	; LINE 48
	.byte	TOK_VAR_STORE_0
	.byte	33
@FastBasic_LINE_49:	; LINE 49
	.byte	TOK_VAR_STORE_0
	.byte	34
@FastBasic_LINE_50:	; LINE 50
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_4
	.byte	TOK_VAR_STORE_0
	.byte	32
	.export	jump_lbl_4
jump_lbl_4:
@FastBasic_LINE_51:	; LINE 51
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_5
@FastBasic_LINE_52:	; LINE 52
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
@FastBasic_LINE_53:	; LINE 53
	.byte	TOK_CALL
	.word	fb_lbl_PUT_RANDOM_SQUARES
@FastBasic_LINE_54:	; LINE 54
	.export	jump_lbl_5
jump_lbl_5:
@FastBasic_LINE_55:	; LINE 55
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_56:	; LINE 56
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	35
@FastBasic_LINE_57:	; LINE 57
	.byte	TOK_VAR_LOAD
	.byte	35
	.byte	TOK_VAR_STORE
	.byte	36
@FastBasic_LINE_58:	; LINE 58
	.byte	TOK_CALL
	.word	fb_lbl_S_850
@FastBasic_LINE_59:	; LINE 59
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_VAR_STORE
	.byte	37
@FastBasic_LINE_60:	; LINE 60
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $07, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_6
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_VAR_STORE
	.byte	37
	.export	jump_lbl_6
jump_lbl_6:
@FastBasic_LINE_61:	; LINE 61
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $15, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_7
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_VAR_STORE
	.byte	37
	.export	jump_lbl_7
jump_lbl_7:
@FastBasic_LINE_62:	; LINE 62
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_63:	; LINE 63
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	30
@FastBasic_LINE_64:	; LINE 64
	.byte	TOK_VAR_LOAD
	.byte	35
	.byte	TOK_VAR_STORE
	.byte	36
@FastBasic_LINE_65:	; LINE 65
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_66:	; LINE 66
	.byte	TOK_VAR_STORE_0
	.byte	41
@FastBasic_LINE_68:	; LINE 68
	.export	jump_lbl_8
jump_lbl_8:
@FastBasic_LINE_69:	; LINE 69
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_70:	; LINE 70
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_9
@FastBasic_LINE_71:	; LINE 71
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_72:	; LINE 72
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_9
jump_lbl_9:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_11
@FastBasic_LINE_73:	; LINE 73
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_74:	; LINE 74
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_11
jump_lbl_11:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_13
@FastBasic_LINE_75:	; LINE 75
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_76:	; LINE 76
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_13
jump_lbl_13:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_15
@FastBasic_LINE_77:	; LINE 77
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_78:	; LINE 78
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_15
jump_lbl_15:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_17
@FastBasic_LINE_79:	; LINE 79
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_80:	; LINE 80
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_17
jump_lbl_17:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_19
@FastBasic_LINE_81:	; LINE 81
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_82:	; LINE 82
	.byte	TOK_JUMP
	.word	jump_lbl_22
	.export	jump_lbl_19
jump_lbl_19:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_22
@FastBasic_LINE_83:	; LINE 83
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_86:	; LINE 86
	.export	jump_lbl_22
jump_lbl_22:
@FastBasic_LINE_87:	; LINE 87
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_88:	; LINE 88
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_23
@FastBasic_LINE_89:	; LINE 89
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_90:	; LINE 90
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_23
jump_lbl_23:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_25
@FastBasic_LINE_91:	; LINE 91
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_92:	; LINE 92
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_25
jump_lbl_25:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_27
@FastBasic_LINE_93:	; LINE 93
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_94:	; LINE 94
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_27
jump_lbl_27:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_29
@FastBasic_LINE_95:	; LINE 95
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_96:	; LINE 96
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_29
jump_lbl_29:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_31
@FastBasic_LINE_97:	; LINE 97
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_98:	; LINE 98
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_31
jump_lbl_31:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_33
@FastBasic_LINE_99:	; LINE 99
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_100:	; LINE 100
	.byte	TOK_JUMP
	.word	jump_lbl_24
	.export	jump_lbl_33
jump_lbl_33:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_24
@FastBasic_LINE_101:	; LINE 101
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_102:	; LINE 102
	.export	jump_lbl_24
jump_lbl_24:
@FastBasic_LINE_103:	; LINE 103
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_VAR_STORE
	.byte	42
@FastBasic_LINE_104:	; LINE 104
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_VAR_STORE
	.byte	43
@FastBasic_LINE_105:	; LINE 105
	.export	jump_lbl_36
jump_lbl_36:
@FastBasic_LINE_106:	; LINE 106
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	33
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_37
	.byte	TOK_CALL
	.word	fb_lbl_S_900
	.export	jump_lbl_37
jump_lbl_37:
@FastBasic_LINE_107:	; LINE 107
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	44
@FastBasic_LINE_108:	; LINE 108
	.byte	TOK_CALL
	.word	fb_lbl_S_500
@FastBasic_LINE_109:	; LINE 109
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_38
@FastBasic_LINE_110:	; LINE 110
	.byte	TOK_VAR_STORE_0
	.byte	45
@FastBasic_LINE_111:	; LINE 111
	.byte	TOK_JUMP
	.word	jump_lbl_39
	.export	jump_lbl_38
jump_lbl_38:
@FastBasic_LINE_112:	; LINE 112
	.byte	TOK_VAR_LOAD
	.byte	45
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	45
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_40
	.byte	TOK_CALL
	.word	fb_lbl_S_550
	.export	jump_lbl_40
jump_lbl_40:
@FastBasic_LINE_113:	; LINE 113
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	45
	.byte	TOK_VAR_STORE
	.byte	45
	.byte	TOK_VAR_LOAD
	.byte	45
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_39
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_114:	; LINE 114
	.export	jump_lbl_39
jump_lbl_39:
@FastBasic_LINE_115:	; LINE 115
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_42
@FastBasic_LINE_116:	; LINE 116
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_117:	; LINE 117
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_42
jump_lbl_42:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_44
@FastBasic_LINE_118:	; LINE 118
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_119:	; LINE 119
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_44
jump_lbl_44:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_46
@FastBasic_LINE_120:	; LINE 120
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_121:	; LINE 121
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_46
jump_lbl_46:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_48
@FastBasic_LINE_122:	; LINE 122
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_123:	; LINE 123
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_48
jump_lbl_48:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_50
@FastBasic_LINE_124:	; LINE 124
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_125:	; LINE 125
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_50
jump_lbl_50:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_52
@FastBasic_LINE_126:	; LINE 126
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_127:	; LINE 127
	.byte	TOK_JUMP
	.word	jump_lbl_43
	.export	jump_lbl_52
jump_lbl_52:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_43
@FastBasic_LINE_128:	; LINE 128
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_129:	; LINE 129
	.export	jump_lbl_43
jump_lbl_43:
@FastBasic_LINE_130:	; LINE 130
	.byte	TOK_BYTE_PEEK
	.byte	20
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_LT
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_NEQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_36
@FastBasic_LINE_131:	; LINE 131
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_55
	.byte	TOK_CALL
	.word	fb_lbl_FAST_DROP_PIECE
	.export	jump_lbl_55
jump_lbl_55:
@FastBasic_LINE_132:	; LINE 132
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	20
@FastBasic_LINE_133:	; LINE 133
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_22
@FastBasic_LINE_134:	; LINE 134
	.byte	TOK_CALL
	.word	fb_lbl_S_700
@FastBasic_LINE_135:	; LINE 135
	.byte	TOK_CALL
	.word	fb_lbl_S_850
@FastBasic_LINE_138:	; LINE 138
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_56
@FastBasic_LINE_139:	; LINE 139
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_1
@FastBasic_LINE_140:	; LINE 140
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_56
jump_lbl_56:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_58
@FastBasic_LINE_141:	; LINE 141
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_2
@FastBasic_LINE_142:	; LINE 142
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_58
jump_lbl_58:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_60
@FastBasic_LINE_143:	; LINE 143
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_3
@FastBasic_LINE_144:	; LINE 144
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_60
jump_lbl_60:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_62
@FastBasic_LINE_145:	; LINE 145
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_4
@FastBasic_LINE_146:	; LINE 146
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_62
jump_lbl_62:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_64
@FastBasic_LINE_147:	; LINE 147
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_5
@FastBasic_LINE_148:	; LINE 148
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_64
jump_lbl_64:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_66
@FastBasic_LINE_149:	; LINE 149
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_6
@FastBasic_LINE_150:	; LINE 150
	.byte	TOK_JUMP
	.word	jump_lbl_57
	.export	jump_lbl_66
jump_lbl_66:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_57
@FastBasic_LINE_151:	; LINE 151
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_7
@FastBasic_LINE_152:	; LINE 152
	.export	jump_lbl_57
jump_lbl_57:
@FastBasic_LINE_153:	; LINE 153
	.byte	TOK_NUM
	.word	53279
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_69
@FastBasic_LINE_154:	; LINE 154
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_155:	; LINE 155
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_156:	; LINE 156
	.export	jump_lbl_69
jump_lbl_69:
@FastBasic_LINE_157:	; LINE 157
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_COMP_0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_COMP_0
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_8
@FastBasic_LINE_158:	; LINE 158
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	959
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_70
	.export	jump_lbl_71
jump_lbl_71:
@FastBasic_LINE_159:	; LINE 159
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	64
	.byte	TOK_PUSH_NUM
	.word	53770
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_BIT_AND
	.byte	TOK_BIT_OR
	.byte	TOK_POKE
@FastBasic_LINE_160:	; LINE 160
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_71
	.export	jump_lbl_70
jump_lbl_70:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_161:	; LINE 161
	.byte	TOK_BYTE
	.byte	30
	.byte	TOK_PAUSE
@FastBasic_LINE_162:	; LINE 162
	.byte	TOK_JUMP
	.word	jump_lbl_3
@FastBasic_LINE_1:	; LINE 1
	.export	fb_lbl_DELAY_SET
fb_lbl_DELAY_SET:
	.byte	60
	.byte	52
	.byte	45
	.byte	39
	.byte	34
	.byte	30
	.byte	26
	.byte	23
	.byte	20
	.byte	18
	.byte	16
	.byte	14
	.byte	12
	.byte	10
@FastBasic_LINE_2:	; LINE 2
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
@FastBasic_LINE_4:	; LINE 4
	.export	fb_lbl_PETES_TETRIS_DLI
fb_lbl_PETES_TETRIS_DLI:
	.byte	72
	.byte	169
	.byte	32
	.byte	141
	.byte	10
	.byte	212
	.byte	141
	.byte	24
	.byte	208
	.byte	141
	.byte	26
	.byte	208
	.byte	141
	.byte	27
	.byte	208
	.byte	169
	.byte	12
	.byte	141
	.byte	23
	.byte	208
	.byte	104
	.byte	64
@FastBasic_LINE_164:	; LINE 164
	.export	fb_lbl_FAST_DROP_PIECE
fb_lbl_FAST_DROP_PIECE:
@FastBasic_LINE_165:	; LINE 165
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_166:	; LINE 166
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_74
@FastBasic_LINE_167:	; LINE 167
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_168:	; LINE 168
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_74
jump_lbl_74:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_76
@FastBasic_LINE_169:	; LINE 169
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_170:	; LINE 170
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_76
jump_lbl_76:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_78
@FastBasic_LINE_171:	; LINE 171
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_172:	; LINE 172
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_78
jump_lbl_78:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_80
@FastBasic_LINE_173:	; LINE 173
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_174:	; LINE 174
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_80
jump_lbl_80:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_82
@FastBasic_LINE_175:	; LINE 175
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_176:	; LINE 176
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_82
jump_lbl_82:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_84
@FastBasic_LINE_177:	; LINE 177
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_178:	; LINE 178
	.byte	TOK_JUMP
	.word	jump_lbl_75
	.export	jump_lbl_84
jump_lbl_84:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_75
@FastBasic_LINE_179:	; LINE 179
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_180:	; LINE 180
	.export	jump_lbl_75
jump_lbl_75:
@FastBasic_LINE_182:	; LINE 182
	.byte	TOK_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_89
@FastBasic_LINE_183:	; LINE 183
	.export	jump_lbl_88
jump_lbl_88:
@FastBasic_LINE_184:	; LINE 184
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_VAR_STORE
	.byte	42
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_VAR_STORE
	.byte	43
@FastBasic_LINE_185:	; LINE 185
	.byte	TOK_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_SUB
	.byte	TOK_LT
	.byte	TOK_L_NOT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_88
@FastBasic_LINE_187:	; LINE 187
	.export	jump_lbl_89
jump_lbl_89:
@FastBasic_LINE_188:	; LINE 188
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_VAR_STORE
	.byte	43
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_VAR_STORE
	.byte	42
@FastBasic_LINE_189:	; LINE 189
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_90
@FastBasic_LINE_190:	; LINE 190
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_191:	; LINE 191
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_90
jump_lbl_90:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_92
@FastBasic_LINE_192:	; LINE 192
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_193:	; LINE 193
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_92
jump_lbl_92:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_94
@FastBasic_LINE_194:	; LINE 194
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_195:	; LINE 195
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_94
jump_lbl_94:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_96
@FastBasic_LINE_196:	; LINE 196
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_197:	; LINE 197
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_96
jump_lbl_96:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_98
@FastBasic_LINE_198:	; LINE 198
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_199:	; LINE 199
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_98
jump_lbl_98:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_100
@FastBasic_LINE_200:	; LINE 200
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_201:	; LINE 201
	.byte	TOK_JUMP
	.word	jump_lbl_91
	.export	jump_lbl_100
jump_lbl_100:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_91
@FastBasic_LINE_202:	; LINE 202
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_203:	; LINE 203
	.export	jump_lbl_91
jump_lbl_91:
@FastBasic_LINE_205:	; LINE 205
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_89
@FastBasic_LINE_206:	; LINE 206
	.byte	TOK_RET
@FastBasic_LINE_208:	; LINE 208
	.export	fb_lbl_S_500
fb_lbl_S_500:
@FastBasic_LINE_209:	; LINE 209
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_NEQ
	.byte	TOK_CJUMP
	.word	jump_lbl_105
@FastBasic_LINE_210:	; LINE 210
	.byte	TOK_VAR_LOAD
	.byte	41
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	41
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_106
@FastBasic_LINE_211:	; LINE 211
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_212:	; LINE 212
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_107
@FastBasic_LINE_213:	; LINE 213
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_214:	; LINE 214
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_107
jump_lbl_107:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_109
@FastBasic_LINE_215:	; LINE 215
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_216:	; LINE 216
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_109
jump_lbl_109:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_111
@FastBasic_LINE_217:	; LINE 217
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_218:	; LINE 218
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_111
jump_lbl_111:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_113
@FastBasic_LINE_219:	; LINE 219
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_220:	; LINE 220
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_113
jump_lbl_113:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_115
@FastBasic_LINE_221:	; LINE 221
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_222:	; LINE 222
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_115
jump_lbl_115:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_117
@FastBasic_LINE_223:	; LINE 223
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_224:	; LINE 224
	.byte	TOK_JUMP
	.word	jump_lbl_108
	.export	jump_lbl_117
jump_lbl_117:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_108
@FastBasic_LINE_225:	; LINE 225
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_226:	; LINE 226
	.export	jump_lbl_108
jump_lbl_108:
@FastBasic_LINE_227:	; LINE 227
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	9
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_120
@FastBasic_LINE_228:	; LINE 228
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_VAR_STORE
	.byte	47
@FastBasic_LINE_229:	; LINE 229
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_VAR_STORE
	.byte	43
@FastBasic_LINE_230:	; LINE 230
	.export	jump_lbl_120
jump_lbl_120:
@FastBasic_LINE_231:	; LINE 231
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_106
@FastBasic_LINE_232:	; LINE 232
	.byte	TOK_DECVAR
	.byte	47
@FastBasic_LINE_233:	; LINE 233
	.byte	TOK_DECVAR
	.byte	43
@FastBasic_LINE_235:	; LINE 235
	.export	jump_lbl_106
jump_lbl_106:
@FastBasic_LINE_236:	; LINE 236
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	41
	.byte	TOK_VAR_STORE
	.byte	41
	.byte	TOK_VAR_LOAD
	.byte	41
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_123
	.byte	TOK_VAR_LOAD
	.byte	37
	.byte	TOK_VAR_STORE
	.byte	41
@FastBasic_LINE_237:	; LINE 237
	.byte	TOK_JUMP
	.word	jump_lbl_123
	.export	jump_lbl_105
jump_lbl_105:
@FastBasic_LINE_238:	; LINE 238
	.byte	TOK_VAR_STORE_0
	.byte	41
@FastBasic_LINE_239:	; LINE 239
	.export	jump_lbl_123
jump_lbl_123:
@FastBasic_LINE_240:	; LINE 240
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_241:	; LINE 241
	.byte	TOK_RET
@FastBasic_LINE_243:	; LINE 243
	.export	fb_lbl_S_550
fb_lbl_S_550:
@FastBasic_LINE_244:	; LINE 244
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	44806
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_VAR_STORE
	.byte	24
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_245:	; LINE 245
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_126
@FastBasic_LINE_246:	; LINE 246
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_247:	; LINE 247
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_126
jump_lbl_126:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_128
@FastBasic_LINE_248:	; LINE 248
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_249:	; LINE 249
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_128
jump_lbl_128:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_130
@FastBasic_LINE_250:	; LINE 250
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_251:	; LINE 251
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_130
jump_lbl_130:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_132
@FastBasic_LINE_252:	; LINE 252
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_253:	; LINE 253
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_132
jump_lbl_132:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_134
@FastBasic_LINE_254:	; LINE 254
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_255:	; LINE 255
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_134
jump_lbl_134:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_136
@FastBasic_LINE_256:	; LINE 256
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_257:	; LINE 257
	.byte	TOK_JUMP
	.word	jump_lbl_127
	.export	jump_lbl_136
jump_lbl_136:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_127
@FastBasic_LINE_258:	; LINE 258
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_259:	; LINE 259
	.export	jump_lbl_127
jump_lbl_127:
@FastBasic_LINE_260:	; LINE 260
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_BIT_AND
	.byte	TOK_VAR_STORE
	.byte	23
@FastBasic_LINE_262:	; LINE 262
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_139
@FastBasic_LINE_263:	; LINE 263
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_1
@FastBasic_LINE_264:	; LINE 264
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_139
jump_lbl_139:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_141
@FastBasic_LINE_265:	; LINE 265
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_2
@FastBasic_LINE_266:	; LINE 266
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_141
jump_lbl_141:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_143
@FastBasic_LINE_267:	; LINE 267
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_3
@FastBasic_LINE_268:	; LINE 268
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_143
jump_lbl_143:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_145
@FastBasic_LINE_269:	; LINE 269
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_4
@FastBasic_LINE_270:	; LINE 270
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_145
jump_lbl_145:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_147
@FastBasic_LINE_271:	; LINE 271
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_5
@FastBasic_LINE_272:	; LINE 272
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_147
jump_lbl_147:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_149
@FastBasic_LINE_273:	; LINE 273
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_6
@FastBasic_LINE_274:	; LINE 274
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_149
jump_lbl_149:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_140
@FastBasic_LINE_275:	; LINE 275
	.byte	TOK_CALL
	.word	fb_lbl_CHECK_PIECE_7
@FastBasic_LINE_276:	; LINE 276
	.export	jump_lbl_140
jump_lbl_140:
@FastBasic_LINE_277:	; LINE 277
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_152
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_VAR_STORE
	.byte	23
	.export	jump_lbl_152
jump_lbl_152:
@FastBasic_LINE_278:	; LINE 278
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53762
@FastBasic_LINE_279:	; LINE 279
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_280:	; LINE 280
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	7
@FastBasic_LINE_281:	; LINE 281
	.byte	TOK_RET
@FastBasic_LINE_285:	; LINE 285
	.export	fb_lbl_S_600
fb_lbl_S_600:
@FastBasic_LINE_286:	; LINE 286
	.byte	TOK_DECVAR
	.byte	30
@FastBasic_LINE_287:	; LINE 287
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD_VAR
	.byte	34
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_288:	; LINE 288
	.byte	TOK_VAR_LOAD
	.byte	30
	.byte	TOK_PUSH_1
	.byte	TOK_LT
	.byte	TOK_CRET
@FastBasic_LINE_289:	; LINE 289
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	30
@FastBasic_LINE_290:	; LINE 290
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	35
@FastBasic_LINE_291:	; LINE 291
	.byte	TOK_JUMP
	.word	fb_lbl_SET_UP_LEVEL_FONT
@FastBasic_LINE_295:	; LINE 295
	.export	fb_lbl_S_620
fb_lbl_S_620:
@FastBasic_LINE_296:	; LINE 296
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	34
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_297:	; LINE 297
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_1
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_158
	.byte	TOK_VAR_STORE_0
	.byte	11
	.export	jump_lbl_158
jump_lbl_158:
@FastBasic_LINE_298:	; LINE 298
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_FP_IPOW
	.byte	TOK_FLOAT
	.byte	$41, $10, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_NUM
	.word	1000
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_299:	; LINE 299
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_300:	; LINE 300
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_301:	; LINE 301
	.byte	TOK_CSTRING
	.byte	10, 9, 9, "SUCCESS", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_302:	; LINE 302
	.byte	TOK_RET
@FastBasic_LINE_304:	; LINE 304
	.export	fb_lbl_S_640
fb_lbl_S_640:
@FastBasic_LINE_305:	; LINE 305
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD_VAR
	.byte	34
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_306:	; LINE 306
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_LT
	.byte	TOK_CNRET
@FastBasic_LINE_307:	; LINE 307
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_308:	; LINE 308
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_NUM
	.word	1000
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_309:	; LINE 309
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	13
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_310:	; LINE 310
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_311:	; LINE 311
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_312:	; LINE 312
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	35
@FastBasic_LINE_316:	; LINE 316
	.export	fb_lbl_S_655
fb_lbl_S_655:
@FastBasic_LINE_317:	; LINE 317
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_164
	.export	jump_lbl_165
jump_lbl_165:
@FastBasic_LINE_318:	; LINE 318
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_1
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_166
	.export	jump_lbl_167
jump_lbl_167:
@FastBasic_LINE_319:	; LINE 319
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_168
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.export	jump_lbl_168
jump_lbl_168:
@FastBasic_LINE_320:	; LINE 320
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_169
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.export	jump_lbl_169
jump_lbl_169:
@FastBasic_LINE_321:	; LINE 321
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	18
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_170
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.export	jump_lbl_170
jump_lbl_170:
@FastBasic_LINE_322:	; LINE 322
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_171
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.export	jump_lbl_171
jump_lbl_171:
@FastBasic_LINE_323:	; LINE 323
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	18
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_172
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.export	jump_lbl_172
jump_lbl_172:
@FastBasic_LINE_324:	; LINE 324
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	21
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_325:	; LINE 325
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_167
	.export	jump_lbl_166
jump_lbl_166:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_326:	; LINE 326
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_165
	.export	jump_lbl_164
jump_lbl_164:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_327:	; LINE 327
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CRET
@FastBasic_LINE_328:	; LINE 328
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
@FastBasic_LINE_329:	; LINE 329
	.byte	TOK_JUMP
	.word	fb_lbl_PUT_RANDOM_SQUARES
@FastBasic_LINE_333:	; LINE 333
	.export	fb_lbl_S_670
fb_lbl_S_670:
@FastBasic_LINE_334:	; LINE 334
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_ADD_VAR
	.byte	34
	.byte	TOK_VAR_STORE
	.byte	11
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_LT
	.byte	TOK_CNRET
@FastBasic_LINE_335:	; LINE 335
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $10, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_177
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	13
	.export	jump_lbl_177
jump_lbl_177:
@FastBasic_LINE_336:	; LINE 336
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $09, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_178
	.byte	TOK_BYTE
	.byte	25
	.byte	TOK_ADD_VAR
	.byte	13
	.byte	TOK_VAR_STORE
	.byte	13
	.export	jump_lbl_178
jump_lbl_178:
@FastBasic_LINE_337:	; LINE 337
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_338:	; LINE 338
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$41, $10, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_339:	; LINE 339
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_340:	; LINE 340
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	13
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_341:	; LINE 341
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_342:	; LINE 342
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_VAR_STORE
	.byte	35
@FastBasic_LINE_343:	; LINE 343
	.byte	TOK_JUMP
	.word	fb_lbl_S_655
@FastBasic_LINE_346:	; LINE 346
	.export	fb_lbl_S_700
fb_lbl_S_700:
@FastBasic_LINE_347:	; LINE 347
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_RAND
	.byte	TOK_PUSH_BYTE
	.byte	224
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	3072
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_348:	; LINE 348
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_349:	; LINE 349
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_181
@FastBasic_LINE_350:	; LINE 350
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_351:	; LINE 351
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_181
jump_lbl_181:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_183
@FastBasic_LINE_352:	; LINE 352
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_353:	; LINE 353
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_183
jump_lbl_183:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_185
@FastBasic_LINE_354:	; LINE 354
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_355:	; LINE 355
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_185
jump_lbl_185:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_187
@FastBasic_LINE_356:	; LINE 356
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_357:	; LINE 357
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_187
jump_lbl_187:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_189
@FastBasic_LINE_358:	; LINE 358
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_359:	; LINE 359
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_189
jump_lbl_189:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_191
@FastBasic_LINE_360:	; LINE 360
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_361:	; LINE 361
	.byte	TOK_JUMP
	.word	jump_lbl_182
	.export	jump_lbl_191
jump_lbl_191:
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_182
@FastBasic_LINE_362:	; LINE 362
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_363:	; LINE 363
	.export	jump_lbl_182
jump_lbl_182:
@FastBasic_LINE_364:	; LINE 364
	.byte	TOK_VAR_STORE_0
	.byte	34
@FastBasic_LINE_365:	; LINE 365
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	77
@FastBasic_LINE_366:	; LINE 366
	.byte	TOK_BYTE
	.byte	92
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	48
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_ADD
	.byte	TOK_INT_FP
	.byte	TOK_VAR_LOAD
	.byte	36
	.byte	TOK_INT_FP
	.byte	TOK_FP_MUL
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_367:	; LINE 367
	.byte	TOK_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_194
	.byte	TOK_VAR_LOAD
	.byte	42
	.byte	TOK_VAR_STORE
	.byte	32
	.export	jump_lbl_194
jump_lbl_194:
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	48
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_195
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_VAR_STORE
	.byte	32
	.export	jump_lbl_195
jump_lbl_195:
@FastBasic_LINE_368:	; LINE 368
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	44800
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_369:	; LINE 369
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_NUM
	.word	892
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_NUM
	.word	65496
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_196
	.export	jump_lbl_197
jump_lbl_197:
@FastBasic_LINE_370:	; LINE 370
	.byte	TOK_VAR_STORE_0
	.byte	49
@FastBasic_LINE_371:	; LINE 371
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_198
	.export	jump_lbl_199
jump_lbl_199:
@FastBasic_LINE_372:	; LINE 372
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_200
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	49
	.byte	TOK_VAR_STORE
	.byte	49
	.export	jump_lbl_200
jump_lbl_200:
@FastBasic_LINE_373:	; LINE 373
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_199
	.export	jump_lbl_198
jump_lbl_198:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_374:	; LINE 374
	.byte	TOK_VAR_LOAD
	.byte	49
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_201
@FastBasic_LINE_375:	; LINE 375
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_VAR_STORE
	.byte	3
@FastBasic_LINE_376:	; LINE 376
	.byte	TOK_CALL
	.word	fb_lbl_S_780
@FastBasic_LINE_377:	; LINE 377
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_VAR_STORE
	.byte	14
@FastBasic_LINE_378:	; LINE 378
	.export	jump_lbl_201
jump_lbl_201:
@FastBasic_LINE_379:	; LINE 379
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_197
	.export	jump_lbl_196
jump_lbl_196:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_380:	; LINE 380
	.byte	TOK_VAR_LOAD
	.byte	34
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_202
@FastBasic_LINE_381:	; LINE 381
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_203
@FastBasic_LINE_382:	; LINE 382
	.byte	TOK_CALL
	.word	fb_lbl_S_600
@FastBasic_LINE_383:	; LINE 383
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_203
jump_lbl_203:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_205
@FastBasic_LINE_384:	; LINE 384
	.byte	TOK_CALL
	.word	fb_lbl_S_620
@FastBasic_LINE_385:	; LINE 385
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_205
jump_lbl_205:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_207
@FastBasic_LINE_386:	; LINE 386
	.byte	TOK_CALL
	.word	fb_lbl_S_640
@FastBasic_LINE_387:	; LINE 387
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_207
jump_lbl_207:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_209
@FastBasic_LINE_388:	; LINE 388
	.byte	TOK_CALL
	.word	fb_lbl_S_670
@FastBasic_LINE_389:	; LINE 389
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_209
jump_lbl_209:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_211
@FastBasic_LINE_390:	; LINE 390
	.byte	TOK_CALL
	.word	fb_lbl_S_620
@FastBasic_LINE_391:	; LINE 391
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_211
jump_lbl_211:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_213
@FastBasic_LINE_392:	; LINE 392
	.byte	TOK_CALL
	.word	fb_lbl_S_620
@FastBasic_LINE_393:	; LINE 393
	.byte	TOK_JUMP
	.word	jump_lbl_202
	.export	jump_lbl_213
jump_lbl_213:
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_202
@FastBasic_LINE_394:	; LINE 394
	.byte	TOK_CALL
	.word	fb_lbl_S_600
@FastBasic_LINE_396:	; LINE 396
	.export	jump_lbl_202
jump_lbl_202:
@FastBasic_LINE_397:	; LINE 397
	.byte	TOK_VAR_LOAD
	.byte	34
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_216
@FastBasic_LINE_398:	; LINE 398
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $40, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_399:	; LINE 399
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	90
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_217
	.export	jump_lbl_218
jump_lbl_218:
@FastBasic_LINE_400:	; LINE 400
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	15
@FastBasic_LINE_401:	; LINE 401
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	30
	.byte	TOK_BIT_AND
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	15
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_402:	; LINE 402
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_218
	.export	jump_lbl_217
jump_lbl_217:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_403:	; LINE 403
	.byte	TOK_JUMP
	.word	jump_lbl_219
	.export	jump_lbl_216
jump_lbl_216:
	.byte	TOK_VAR_LOAD
	.byte	34
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_220
@FastBasic_LINE_404:	; LINE 404
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$41, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_405:	; LINE 405
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	150
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_221
	.export	jump_lbl_222
jump_lbl_222:
@FastBasic_LINE_406:	; LINE 406
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	15
@FastBasic_LINE_407:	; LINE 407
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	30
	.byte	TOK_BIT_AND
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	15
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_408:	; LINE 408
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_222
	.export	jump_lbl_221
jump_lbl_221:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_409:	; LINE 409
	.byte	TOK_JUMP
	.word	jump_lbl_219
	.export	jump_lbl_220
jump_lbl_220:
	.byte	TOK_VAR_LOAD
	.byte	34
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_224
@FastBasic_LINE_410:	; LINE 410
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$41, $03, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_411:	; LINE 411
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	210
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_225
	.export	jump_lbl_226
jump_lbl_226:
@FastBasic_LINE_412:	; LINE 412
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	15
@FastBasic_LINE_413:	; LINE 413
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	31
	.byte	TOK_BIT_AND
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	15
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_414:	; LINE 414
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_226
	.export	jump_lbl_225
jump_lbl_225:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_415:	; LINE 415
	.byte	TOK_JUMP
	.word	jump_lbl_219
	.export	jump_lbl_224
jump_lbl_224:
	.byte	TOK_VAR_LOAD
	.byte	34
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_219
@FastBasic_LINE_416:	; LINE 416
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$41, $12, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_417:	; LINE 417
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_229
	.export	jump_lbl_230
jump_lbl_230:
@FastBasic_LINE_418:	; LINE 418
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	15
@FastBasic_LINE_419:	; LINE 419
	.byte	TOK_NUM
	.word	53762
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	31
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	160
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_SHL8
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
@FastBasic_LINE_420:	; LINE 420
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_230
	.export	jump_lbl_229
jump_lbl_229:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_421:	; LINE 421
	.export	jump_lbl_219
jump_lbl_219:
@FastBasic_LINE_422:	; LINE 422
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_ADD_VAR
	.byte	34
	.byte	TOK_VAR_STORE
	.byte	32
@FastBasic_LINE_423:	; LINE 423
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	34
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	48
@FastBasic_LINE_424:	; LINE 424
	.byte	TOK_JUMP
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_428:	; LINE 428
	.export	fb_lbl_S_780
fb_lbl_S_780:
@FastBasic_LINE_429:	; LINE 429
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_233
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_233
jump_lbl_233:
@FastBasic_LINE_430:	; LINE 430
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_NUM_POKE
	.word	53762
@FastBasic_LINE_431:	; LINE 431
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_NUM
	.word	65496
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_234
	.export	jump_lbl_235
jump_lbl_235:
@FastBasic_LINE_432:	; LINE 432
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_MOVE
@FastBasic_LINE_433:	; LINE 433
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_235
	.export	jump_lbl_234
jump_lbl_234:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_434:	; LINE 434
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53762
@FastBasic_LINE_435:	; LINE 435
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	34
	.byte	TOK_VAR_STORE
	.byte	34
@FastBasic_LINE_436:	; LINE 436
	.byte	TOK_RET
@FastBasic_LINE_438:	; LINE 438
	.export	fb_lbl_DISPLAY_SCORE
fb_lbl_DISPLAY_SCORE:
@FastBasic_LINE_439:	; LINE 439
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
@FastBasic_LINE_440:	; LINE 440
	.byte	TOK_CSTRING
	.byte	6, "SCORE:"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	6, "LINES:"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	7, "LEVEL:", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_441:	; LINE 441
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
@FastBasic_LINE_442:	; LINE 442
	.byte	TOK_RET
@FastBasic_LINE_444:	; LINE 444
	.export	fb_lbl_S_850
fb_lbl_S_850:
@FastBasic_LINE_445:	; LINE 445
	.byte	TOK_BYTE
	.byte	29
	.byte	TOK_VAR_STORE
	.byte	47
@FastBasic_LINE_446:	; LINE 446
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_VAR_STORE
	.byte	42
@FastBasic_LINE_447:	; LINE 447
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	43
@FastBasic_LINE_448:	; LINE 448
	.byte	TOK_VAR_STORE_0
	.byte	23
@FastBasic_LINE_449:	; LINE 449
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_450:	; LINE 450
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_240
@FastBasic_LINE_451:	; LINE 451
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_452:	; LINE 452
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_240
jump_lbl_240:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_242
@FastBasic_LINE_453:	; LINE 453
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_454:	; LINE 454
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_242
jump_lbl_242:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_244
@FastBasic_LINE_455:	; LINE 455
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_456:	; LINE 456
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_244
jump_lbl_244:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_246
@FastBasic_LINE_457:	; LINE 457
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_458:	; LINE 458
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_246
jump_lbl_246:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_248
@FastBasic_LINE_459:	; LINE 459
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_460:	; LINE 460
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_248
jump_lbl_248:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_250
@FastBasic_LINE_461:	; LINE 461
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_462:	; LINE 462
	.byte	TOK_JUMP
	.word	jump_lbl_241
	.export	jump_lbl_250
jump_lbl_250:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_241
@FastBasic_LINE_463:	; LINE 463
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_464:	; LINE 464
	.export	jump_lbl_241
jump_lbl_241:
@FastBasic_LINE_465:	; LINE 465
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	29
@FastBasic_LINE_466:	; LINE 466
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	25
@FastBasic_LINE_467:	; LINE 467
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_BYTE_POKE
	.byte	COLOR
@FastBasic_LINE_468:	; LINE 468
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_253
@FastBasic_LINE_469:	; LINE 469
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_470:	; LINE 470
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_253
jump_lbl_253:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_255
@FastBasic_LINE_471:	; LINE 471
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_472:	; LINE 472
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_255
jump_lbl_255:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_257
@FastBasic_LINE_473:	; LINE 473
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_3
@FastBasic_LINE_474:	; LINE 474
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_257
jump_lbl_257:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_259
@FastBasic_LINE_475:	; LINE 475
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_4
@FastBasic_LINE_476:	; LINE 476
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_259
jump_lbl_259:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_261
@FastBasic_LINE_477:	; LINE 477
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_5
@FastBasic_LINE_478:	; LINE 478
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_261
jump_lbl_261:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_263
@FastBasic_LINE_479:	; LINE 479
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_6
@FastBasic_LINE_480:	; LINE 480
	.byte	TOK_JUMP
	.word	jump_lbl_254
	.export	jump_lbl_263
jump_lbl_263:
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_254
@FastBasic_LINE_481:	; LINE 481
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_7
@FastBasic_LINE_482:	; LINE 482
	.export	jump_lbl_254
jump_lbl_254:
@FastBasic_LINE_483:	; LINE 483
	.byte	TOK_NUM
	.word	fb_lbl_DELAY_SET
	.byte	TOK_ADD_VAR
	.byte	35
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	22
@FastBasic_LINE_484:	; LINE 484
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_VAR_STORE
	.byte	47
@FastBasic_LINE_485:	; LINE 485
	.byte	TOK_VAR_STORE_0
	.byte	42
@FastBasic_LINE_486:	; LINE 486
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	43
@FastBasic_LINE_487:	; LINE 487
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_0
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_266
	.byte	TOK_VAR_STORE_0
	.byte	22
	.export	jump_lbl_266
jump_lbl_266:
@FastBasic_LINE_488:	; LINE 488
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_489:	; LINE 489
	.byte	TOK_VAR_LOAD
	.byte	45
	.byte	TOK_PUSH_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_GT
	.byte	TOK_CRET
	.byte	TOK_VAR_LOAD
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_490:	; LINE 490
	.byte	TOK_RET
@FastBasic_LINE_492:	; LINE 492
	.export	fb_lbl_S_900
fb_lbl_S_900:
@FastBasic_LINE_493:	; LINE 493
	.export	jump_lbl_270
jump_lbl_270:
@FastBasic_LINE_494:	; LINE 494
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_NUM_POKE
	.word	764
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_495:	; LINE 495
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_270
@FastBasic_LINE_496:	; LINE 496
	.byte	TOK_CSTRING
	.byte	7, 9, 9, "PAUSE"
	.byte	TOK_PRINT_STR
@FastBasic_LINE_497:	; LINE 497
	.export	jump_lbl_271
jump_lbl_271:
@FastBasic_LINE_498:	; LINE 498
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_BYTE_POKE
	.byte	77
	.byte	TOK_BYTE
	.byte	246
	.byte	TOK_BYTE_POKE
	.byte	78
@FastBasic_LINE_499:	; LINE 499
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	33
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_271
@FastBasic_LINE_500:	; LINE 500
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_NUM_POKE
	.word	764
@FastBasic_LINE_501:	; LINE 501
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_502:	; LINE 502
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	77
@FastBasic_LINE_503:	; LINE 503
	.byte	TOK_RET
@FastBasic_LINE_506:	; LINE 506
	.export	fb_lbl_DRAW_PIECE_1
fb_lbl_DRAW_PIECE_1:
@FastBasic_LINE_507:	; LINE 507
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_274
@FastBasic_LINE_508:	; LINE 508
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_509:	; LINE 509
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	8
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_510:	; LINE 510
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_511:	; LINE 511
	.byte	TOK_RET
	.export	jump_lbl_274
jump_lbl_274:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_276
@FastBasic_LINE_512:	; LINE 512
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_513:	; LINE 513
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_514:	; LINE 514
	.byte	TOK_BYTE
	.byte	120
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_515:	; LINE 515
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_516:	; LINE 516
	.byte	TOK_RET
	.export	jump_lbl_276
jump_lbl_276:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_278
@FastBasic_LINE_517:	; LINE 517
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_518:	; LINE 518
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	8
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_519:	; LINE 519
	.byte	TOK_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_520:	; LINE 520
	.byte	TOK_RET
	.export	jump_lbl_278
jump_lbl_278:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_521:	; LINE 521
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_522:	; LINE 522
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_523:	; LINE 523
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_524:	; LINE 524
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	79
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_526:	; LINE 526
	.byte	TOK_RET
@FastBasic_LINE_528:	; LINE 528
	.export	fb_lbl_DRAW_PIECE_2
fb_lbl_DRAW_PIECE_2:
@FastBasic_LINE_529:	; LINE 529
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_283
@FastBasic_LINE_530:	; LINE 530
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_531:	; LINE 531
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_532:	; LINE 532
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_533:	; LINE 533
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_534:	; LINE 534
	.byte	TOK_RET
	.export	jump_lbl_283
jump_lbl_283:
@FastBasic_LINE_535:	; LINE 535
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_536:	; LINE 536
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_537:	; LINE 537
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_538:	; LINE 538
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_540:	; LINE 540
	.byte	TOK_RET
@FastBasic_LINE_542:	; LINE 542
	.export	fb_lbl_DRAW_PIECE_3
fb_lbl_DRAW_PIECE_3:
@FastBasic_LINE_543:	; LINE 543
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_287
@FastBasic_LINE_544:	; LINE 544
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_545:	; LINE 545
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_546:	; LINE 546
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_547:	; LINE 547
	.byte	TOK_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_548:	; LINE 548
	.byte	TOK_RET
	.export	jump_lbl_287
jump_lbl_287:
@FastBasic_LINE_549:	; LINE 549
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_550:	; LINE 550
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_551:	; LINE 551
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_552:	; LINE 552
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_554:	; LINE 554
	.byte	TOK_RET
@FastBasic_LINE_556:	; LINE 556
	.export	fb_lbl_DRAW_PIECE_4
fb_lbl_DRAW_PIECE_4:
@FastBasic_LINE_557:	; LINE 557
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_291
@FastBasic_LINE_558:	; LINE 558
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_559:	; LINE 559
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_560:	; LINE 560
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_561:	; LINE 561
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_562:	; LINE 562
	.byte	TOK_RET
	.export	jump_lbl_291
jump_lbl_291:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_293
@FastBasic_LINE_563:	; LINE 563
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_564:	; LINE 564
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_565:	; LINE 565
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_566:	; LINE 566
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_567:	; LINE 567
	.byte	TOK_RET
	.export	jump_lbl_293
jump_lbl_293:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_295
@FastBasic_LINE_568:	; LINE 568
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_569:	; LINE 569
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_570:	; LINE 570
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_571:	; LINE 571
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_572:	; LINE 572
	.byte	TOK_RET
	.export	jump_lbl_295
jump_lbl_295:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_573:	; LINE 573
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_574:	; LINE 574
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_575:	; LINE 575
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_576:	; LINE 576
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_578:	; LINE 578
	.byte	TOK_RET
@FastBasic_LINE_580:	; LINE 580
	.export	fb_lbl_DRAW_PIECE_5
fb_lbl_DRAW_PIECE_5:
@FastBasic_LINE_581:	; LINE 581
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_300
@FastBasic_LINE_582:	; LINE 582
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_583:	; LINE 583
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_584:	; LINE 584
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_585:	; LINE 585
	.byte	TOK_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_586:	; LINE 586
	.byte	TOK_RET
	.export	jump_lbl_300
jump_lbl_300:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_302
@FastBasic_LINE_587:	; LINE 587
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_588:	; LINE 588
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_589:	; LINE 589
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_590:	; LINE 590
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_591:	; LINE 591
	.byte	TOK_RET
	.export	jump_lbl_302
jump_lbl_302:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_304
@FastBasic_LINE_592:	; LINE 592
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_593:	; LINE 593
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_594:	; LINE 594
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_595:	; LINE 595
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_596:	; LINE 596
	.byte	TOK_RET
	.export	jump_lbl_304
jump_lbl_304:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_597:	; LINE 597
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_598:	; LINE 598
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_599:	; LINE 599
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_600:	; LINE 600
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_602:	; LINE 602
	.byte	TOK_RET
@FastBasic_LINE_604:	; LINE 604
	.export	fb_lbl_DRAW_PIECE_6
fb_lbl_DRAW_PIECE_6:
@FastBasic_LINE_605:	; LINE 605
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_309
@FastBasic_LINE_606:	; LINE 606
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_607:	; LINE 607
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_608:	; LINE 608
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_609:	; LINE 609
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_610:	; LINE 610
	.byte	TOK_RET
	.export	jump_lbl_309
jump_lbl_309:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_311
@FastBasic_LINE_611:	; LINE 611
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_612:	; LINE 612
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_613:	; LINE 613
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_614:	; LINE 614
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_615:	; LINE 615
	.byte	TOK_RET
	.export	jump_lbl_311
jump_lbl_311:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_313
@FastBasic_LINE_616:	; LINE 616
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_617:	; LINE 617
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_618:	; LINE 618
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_619:	; LINE 619
	.byte	TOK_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_620:	; LINE 620
	.byte	TOK_RET
	.export	jump_lbl_313
jump_lbl_313:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_621:	; LINE 621
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_622:	; LINE 622
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	38
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_623:	; LINE 623
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_624:	; LINE 624
	.byte	TOK_BYTE
	.byte	79
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_626:	; LINE 626
	.byte	TOK_RET
@FastBasic_LINE_628:	; LINE 628
	.export	fb_lbl_DRAW_PIECE_7
fb_lbl_DRAW_PIECE_7:
@FastBasic_LINE_629:	; LINE 629
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_VAR_LOAD
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	47
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	42
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_630:	; LINE 630
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_631:	; LINE 631
	.byte	TOK_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	81
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_632:	; LINE 632
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	42
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_633:	; LINE 633
	.byte	TOK_RET
@FastBasic_LINE_637:	; LINE 637
	.export	fb_lbl_CHECK_PIECE_1
fb_lbl_CHECK_PIECE_1:
@FastBasic_LINE_638:	; LINE 638
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_320
@FastBasic_LINE_639:	; LINE 639
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_640:	; LINE 640
	.byte	TOK_RET
	.export	jump_lbl_320
jump_lbl_320:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_322
@FastBasic_LINE_641:	; LINE 641
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	120
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_642:	; LINE 642
	.byte	TOK_RET
	.export	jump_lbl_322
jump_lbl_322:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_324
@FastBasic_LINE_643:	; LINE 643
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_644:	; LINE 644
	.byte	TOK_RET
	.export	jump_lbl_324
jump_lbl_324:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_645:	; LINE 645
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	80
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_647:	; LINE 647
	.byte	TOK_RET
@FastBasic_LINE_649:	; LINE 649
	.export	fb_lbl_CHECK_PIECE_2
fb_lbl_CHECK_PIECE_2:
@FastBasic_LINE_650:	; LINE 650
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_329
@FastBasic_LINE_651:	; LINE 651
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_652:	; LINE 652
	.byte	TOK_RET
	.export	jump_lbl_329
jump_lbl_329:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_331
@FastBasic_LINE_653:	; LINE 653
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_654:	; LINE 654
	.byte	TOK_RET
	.export	jump_lbl_331
jump_lbl_331:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_333
@FastBasic_LINE_655:	; LINE 655
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_656:	; LINE 656
	.byte	TOK_RET
	.export	jump_lbl_333
jump_lbl_333:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_657:	; LINE 657
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_659:	; LINE 659
	.byte	TOK_RET
@FastBasic_LINE_661:	; LINE 661
	.export	fb_lbl_CHECK_PIECE_3
fb_lbl_CHECK_PIECE_3:
@FastBasic_LINE_662:	; LINE 662
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_338
@FastBasic_LINE_663:	; LINE 663
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_664:	; LINE 664
	.byte	TOK_RET
	.export	jump_lbl_338
jump_lbl_338:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_340
@FastBasic_LINE_665:	; LINE 665
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_666:	; LINE 666
	.byte	TOK_RET
	.export	jump_lbl_340
jump_lbl_340:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_342
@FastBasic_LINE_667:	; LINE 667
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_668:	; LINE 668
	.byte	TOK_RET
	.export	jump_lbl_342
jump_lbl_342:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_669:	; LINE 669
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_671:	; LINE 671
	.byte	TOK_RET
@FastBasic_LINE_673:	; LINE 673
	.export	fb_lbl_CHECK_PIECE_4
fb_lbl_CHECK_PIECE_4:
@FastBasic_LINE_674:	; LINE 674
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_347
@FastBasic_LINE_675:	; LINE 675
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_676:	; LINE 676
	.byte	TOK_RET
	.export	jump_lbl_347
jump_lbl_347:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_349
@FastBasic_LINE_677:	; LINE 677
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_678:	; LINE 678
	.byte	TOK_RET
	.export	jump_lbl_349
jump_lbl_349:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_351
@FastBasic_LINE_679:	; LINE 679
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_680:	; LINE 680
	.byte	TOK_RET
	.export	jump_lbl_351
jump_lbl_351:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_681:	; LINE 681
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_683:	; LINE 683
	.byte	TOK_RET
@FastBasic_LINE_685:	; LINE 685
	.export	fb_lbl_CHECK_PIECE_5
fb_lbl_CHECK_PIECE_5:
@FastBasic_LINE_686:	; LINE 686
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_356
@FastBasic_LINE_687:	; LINE 687
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_688:	; LINE 688
	.byte	TOK_RET
	.export	jump_lbl_356
jump_lbl_356:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_358
@FastBasic_LINE_689:	; LINE 689
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_690:	; LINE 690
	.byte	TOK_RET
	.export	jump_lbl_358
jump_lbl_358:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_360
@FastBasic_LINE_691:	; LINE 691
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_692:	; LINE 692
	.byte	TOK_RET
	.export	jump_lbl_360
jump_lbl_360:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_693:	; LINE 693
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_695:	; LINE 695
	.byte	TOK_RET
@FastBasic_LINE_697:	; LINE 697
	.export	fb_lbl_CHECK_PIECE_6
fb_lbl_CHECK_PIECE_6:
@FastBasic_LINE_698:	; LINE 698
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_365
@FastBasic_LINE_699:	; LINE 699
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_700:	; LINE 700
	.byte	TOK_RET
	.export	jump_lbl_365
jump_lbl_365:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_367
@FastBasic_LINE_701:	; LINE 701
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_702:	; LINE 702
	.byte	TOK_RET
	.export	jump_lbl_367
jump_lbl_367:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_369
@FastBasic_LINE_703:	; LINE 703
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_704:	; LINE 704
	.byte	TOK_RET
	.export	jump_lbl_369
jump_lbl_369:
	.byte	TOK_VAR_LOAD
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_705:	; LINE 705
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_SUB
	.byte	TOK_PEEK
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	39
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_DPEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_707:	; LINE 707
	.byte	TOK_RET
@FastBasic_LINE_709:	; LINE 709
	.export	fb_lbl_CHECK_PIECE_7
fb_lbl_CHECK_PIECE_7:
@FastBasic_LINE_710:	; LINE 710
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_PUSH_BYTE
	.byte	41
	.byte	TOK_ADD_VAR
	.byte	43
	.byte	TOK_PEEK
	.byte	TOK_BIT_OR
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_711:	; LINE 711
	.byte	TOK_RET
@FastBasic_LINE_713:	; LINE 713
	.export	fb_lbl_TITLE_SCREEN
fb_lbl_TITLE_SCREEN:
@FastBasic_LINE_714:	; LINE 714
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_715:	; LINE 715
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
@FastBasic_LINE_716:	; LINE 716
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	82
@FastBasic_LINE_717:	; LINE 717
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_NUM_POKE
	.word	710
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_NUM_POKE
	.word	709
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_718:	; LINE 718
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_POSITION
@FastBasic_LINE_719:	; LINE 719
	.byte	TOK_CSTRING
	.byte	141, "             T E T R I S", 155, 155, "             DEVELOPER: ALEXEY PAJITNOV", 155, " FAST BASIC CONVERSION: PETER J. MEYER", 155, "ORIGINAL BASIC VERSION: DAVID MASON", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_725:	; LINE 725
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	19
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_376
	.byte	TOK_VAR_SADDR
	.byte	19
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STORE
	.export	jump_lbl_376
jump_lbl_376:
@FastBasic_LINE_726:	; LINE 726
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_PUSH_VAR_LOAD
	.byte	12
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_377
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_VAR_STORE
	.byte	12
	.export	jump_lbl_377
jump_lbl_377:
@FastBasic_LINE_727:	; LINE 727
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_INT_FP
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_378
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	1
	.export	jump_lbl_378
jump_lbl_378:
@FastBasic_LINE_728:	; LINE 728
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_POSITION
@FastBasic_LINE_729:	; LINE 729
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	4, "LAST"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_CSTRING
	.byte	14, "HIGHEST", 155, "SCORE:"
	.byte	TOK_PRINT_STR
@FastBasic_LINE_730:	; LINE 730
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_ADDR
	.byte	19
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_731:	; LINE 731
	.byte	TOK_CSTRING
	.byte	6, "LINES:"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_TAB
	.byte	TOK_VAR_LOAD
	.byte	12
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_732:	; LINE 732
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_POSITION
@FastBasic_LINE_733:	; LINE 733
	.byte	TOK_CSTRING
	.byte	13, "SELECT LEVEL:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	4, "   ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_734:	; LINE 734
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_POSITION
@FastBasic_LINE_735:	; LINE 735
	.byte	TOK_CSTRING
	.byte	12, "OPTION TYPE:"
	.byte	TOK_PRINT_STR
@FastBasic_LINE_736:	; LINE 736
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_379
	.byte	TOK_CSTRING
	.byte	2, "A", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_379
jump_lbl_379:
@FastBasic_LINE_737:	; LINE 737
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_380
	.byte	TOK_CSTRING
	.byte	2, "B", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_380
jump_lbl_380:
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	6, "HIGHT:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	3, "  ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_738:	; LINE 738
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_381
	.byte	TOK_CSTRING
	.byte	2, "C", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_381
jump_lbl_381:
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_739:	; LINE 739
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_382
	.byte	TOK_CSTRING
	.byte	2, "D", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_382
jump_lbl_382:
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_740:	; LINE 740
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_383
	.byte	TOK_CSTRING
	.byte	2, "E", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_383
jump_lbl_383:
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	6, "HIGHT:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	3, "  ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_741:	; LINE 741
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_384
	.byte	TOK_CSTRING
	.byte	2, "F", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_384
jump_lbl_384:
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	6, "HIGHT:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	3, "  ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_742:	; LINE 742
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_385
	.byte	TOK_CSTRING
	.byte	2, "G", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_385
jump_lbl_385:
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	6, "HIGHT:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	3, "  ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_743:	; LINE 743
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	21
	.byte	TOK_POSITION
@FastBasic_LINE_744:	; LINE 744
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_PRINT_STR
@FastBasic_LINE_745:	; LINE 745
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
@FastBasic_LINE_747:	; LINE 747
	.export	jump_lbl_387
jump_lbl_387:
@FastBasic_LINE_748:	; LINE 748
	.byte	TOK_NUM
	.word	53279
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_BIT_AND
	.byte	TOK_VAR_STORE
	.byte	44
@FastBasic_LINE_749:	; LINE 749
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_LT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_NUM
	.word	732
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	17
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_387
@FastBasic_LINE_750:	; LINE 750
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_388
@FastBasic_LINE_751:	; LINE 751
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_752:	; LINE 752
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_INT_FP
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_388
	.byte	TOK_VAR_SADDR
	.byte	26
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_753:	; LINE 753
	.export	jump_lbl_388
jump_lbl_388:
@FastBasic_LINE_754:	; LINE 754
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_390
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_MOD
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	2
	.export	jump_lbl_390
jump_lbl_390:
@FastBasic_LINE_755:	; LINE 755
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	21
	.byte	TOK_POSITION
@FastBasic_LINE_756:	; LINE 756
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_USHL
	.byte	TOK_ADD_VAR
	.byte	0
	.byte	TOK_DPEEK
	.byte	TOK_PRINT_STR
@FastBasic_LINE_757:	; LINE 757
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_POSITION
@FastBasic_LINE_758:	; LINE 758
	.byte	TOK_CSTRING
	.byte	13, "SELECT LEVEL:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	4, "   ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_759:	; LINE 759
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_POSITION
@FastBasic_LINE_760:	; LINE 760
	.byte	TOK_CSTRING
	.byte	17, "OPTION GAME_TYPE:"
	.byte	TOK_PRINT_STR
@FastBasic_LINE_761:	; LINE 761
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_391
	.byte	TOK_CSTRING
	.byte	2, "A", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_391
jump_lbl_391:
	.byte	TOK_VAR_STORE_0
	.byte	11
@FastBasic_LINE_762:	; LINE 762
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_392
	.byte	TOK_CSTRING
	.byte	2, "B", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_392
jump_lbl_392:
	.byte	TOK_BYTE
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_763:	; LINE 763
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_393
	.byte	TOK_CSTRING
	.byte	2, "C", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_393
jump_lbl_393:
	.byte	TOK_VAR_STORE_0
	.byte	11
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_764:	; LINE 764
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_394
	.byte	TOK_CSTRING
	.byte	2, "D", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_394
jump_lbl_394:
	.byte	TOK_VAR_STORE_0
	.byte	11
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_765:	; LINE 765
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_395
	.byte	TOK_CSTRING
	.byte	2, "E", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_395
jump_lbl_395:
	.byte	TOK_BYTE
	.byte	50
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_766:	; LINE 766
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_396
	.byte	TOK_CSTRING
	.byte	2, "F", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_396
jump_lbl_396:
	.byte	TOK_BYTE
	.byte	100
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_767:	; LINE 767
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_397
	.byte	TOK_CSTRING
	.byte	2, "G", 155
	.byte	TOK_PRINT_STR
	.export	jump_lbl_397
jump_lbl_397:
	.byte	TOK_VAR_STORE_0
	.byte	11
@FastBasic_LINE_768:	; LINE 768
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_398
@FastBasic_LINE_769:	; LINE 769
	.byte	TOK_NUM
	.word	732
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	17
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_399
@FastBasic_LINE_770:	; LINE 770
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_771:	; LINE 771
	.export	jump_lbl_400
jump_lbl_400:
@FastBasic_LINE_772:	; LINE 772
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	732
@FastBasic_LINE_773:	; LINE 773
	.byte	TOK_NUM
	.word	732
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_400
@FastBasic_LINE_774:	; LINE 774
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $06, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_399
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_775:	; LINE 775
	.export	jump_lbl_399
jump_lbl_399:
@FastBasic_LINE_776:	; LINE 776
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	11, "HELP HIGHT:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_CSTRING
	.byte	3, "  ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_777:	; LINE 777
	.byte	TOK_JUMP
	.word	jump_lbl_402
	.export	jump_lbl_398
jump_lbl_398:
@FastBasic_LINE_778:	; LINE 778
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	16, "               ", 155
	.byte	TOK_PRINT_STR
@FastBasic_LINE_779:	; LINE 779
	.export	jump_lbl_402
jump_lbl_402:
@FastBasic_LINE_780:	; LINE 780
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_PAUSE
@FastBasic_LINE_781:	; LINE 781
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_387
@FastBasic_LINE_782:	; LINE 782
	.byte	TOK_RET
@FastBasic_LINE_784:	; LINE 784
	.export	fb_lbl_PUT_RANDOM_SQUARES
fb_lbl_PUT_RANDOM_SQUARES:
@FastBasic_LINE_785:	; LINE 785
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $06, $50, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_405
	.byte	TOK_VAR_SADDR
	.byte	16
	.byte	TOK_FLOAT
	.byte	$40, $06, $50, $00, $00, $00
	.byte	TOK_FP_STORE
	.export	jump_lbl_405
jump_lbl_405:
@FastBasic_LINE_786:	; LINE 786
	.byte	TOK_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	21
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_SUB
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_406
	.byte	TOK_BYTE
	.byte	21
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	32
	.export	jump_lbl_406
jump_lbl_406:
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_SUB
	.byte	TOK_PUSH_VAR_LOAD
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	48
@FastBasic_LINE_787:	; LINE 787
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	22
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_NEG
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_407
	.export	jump_lbl_408
jump_lbl_408:
@FastBasic_LINE_788:	; LINE 788
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_409
	.export	jump_lbl_410
jump_lbl_410:
@FastBasic_LINE_789:	; LINE 789
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_790:	; LINE 790
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_410
	.export	jump_lbl_409
jump_lbl_409:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_791:	; LINE 791
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_408
	.export	jump_lbl_407
jump_lbl_407:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_792:	; LINE 792
	.byte	TOK_VAR_SADDR
	.byte	38
	.byte	TOK_VAR_ADDR
	.byte	38
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	16
	.byte	TOK_FP_LOAD
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_FP_IPOW
	.byte	TOK_FLOAT
	.byte	$41, $10, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_793:	; LINE 793
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_SCORE
@FastBasic_LINE_794:	; LINE 794
	.byte	TOK_JUMP
	.word	fb_lbl_SET_UP_LEVEL_FONT
@FastBasic_LINE_797:	; LINE 797
	.export	fb_lbl_INITIALIZE
fb_lbl_INITIALIZE:
@FastBasic_LINE_798:	; LINE 798
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
	.byte	TOK_NUM
	.word	560
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	50
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_VAR_STORE
	.byte	10
	.byte	TOK_NUM
	.word	560
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	50
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_DPOKE
@FastBasic_LINE_799:	; LINE 799
	.byte	TOK_VAR_LOAD
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_POKE
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	920
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	66
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_DPOKE
@FastBasic_LINE_800:	; LINE 800
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	31
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_413
	.export	jump_lbl_414
jump_lbl_414:
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_414
	.export	jump_lbl_413
jump_lbl_413:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_801:	; LINE 801
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	65
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	50
	.byte	TOK_DPOKE
@FastBasic_LINE_802:	; LINE 802
	.byte	TOK_BYTE
	.byte	28
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	130
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_NUM_POKE
	.word	623
@FastBasic_LINE_803:	; LINE 803
	.byte	TOK_NUM
	.word	512
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	fb_lbl_PETES_TETRIS_DLI
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	192
	.byte	TOK_NUM_POKE
	.word	54286
@FastBasic_LINE_804:	; LINE 804
	.byte	TOK_NUM
	.word	660
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	960
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_DPOKE
@FastBasic_LINE_805:	; LINE 805
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_NUM_POKE
	.word	703
@FastBasic_LINE_806:	; LINE 806
	.byte	TOK_NUM
	.word	57344
	.byte	TOK_PUSH_NUM
	.word	45056
	.byte	TOK_PUSH_NUM
	.word	1024
	.byte	TOK_MOVE
@FastBasic_LINE_807:	; LINE 807
	.byte	TOK_BYTE
	.byte	176
	.byte	TOK_NUM_POKE
	.word	756
@FastBasic_LINE_808:	; LINE 808
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_415
	.export	jump_lbl_416
jump_lbl_416:
@FastBasic_LINE_809:	; LINE 809
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	3
@FastBasic_LINE_810:	; LINE 810
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_NUM
	.word	45568
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	45575
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_417
	.export	jump_lbl_418
jump_lbl_418:
@FastBasic_LINE_811:	; LINE 811
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_812:	; LINE 812
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_418
	.export	jump_lbl_417
jump_lbl_417:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_813:	; LINE 813
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_416
	.export	jump_lbl_415
jump_lbl_415:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_814:	; LINE 814
	.byte	TOK_CALL
	.word	fb_lbl_SET_UP_LEVEL_FONT
@FastBasic_LINE_815:	; LINE 815
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_BYTE_POKE
	.byte	87
@FastBasic_LINE_816:	; LINE 816
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_1
	.byte	TOK_ADD_VAR
	.byte	10
	.byte	TOK_PUSH_NUM
	.word	1020
	.byte	TOK_MOVE
@FastBasic_LINE_817:	; LINE 817
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	704
@FastBasic_LINE_818:	; LINE 818
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_819:	; LINE 819
	.byte	TOK_BYTE
	.byte	102
	.byte	TOK_NUM_POKE
	.word	706
@FastBasic_LINE_820:	; LINE 820
	.byte	TOK_BYTE
	.byte	180
	.byte	TOK_NUM_POKE
	.word	707
@FastBasic_LINE_821:	; LINE 821
	.byte	TOK_BYTE
	.byte	230
	.byte	TOK_NUM_POKE
	.word	708
@FastBasic_LINE_822:	; LINE 822
	.byte	TOK_BYTE
	.byte	28
	.byte	TOK_NUM_POKE
	.word	709
@FastBasic_LINE_823:	; LINE 823
	.byte	TOK_BYTE
	.byte	58
	.byte	TOK_NUM_POKE
	.word	710
@FastBasic_LINE_824:	; LINE 824
	.byte	TOK_BYTE
	.byte	130
	.byte	TOK_NUM_POKE
	.word	711
@FastBasic_LINE_825:	; LINE 825
	.byte	TOK_1
	.byte	TOK_NUM_POKE
	.word	752
@FastBasic_LINE_826:	; LINE 826
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	11
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_827:	; LINE 827
	.byte	TOK_BYTE
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_828:	; LINE 828
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	23
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	23
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_829:	; LINE 829
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	17
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	33
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_830:	; LINE 830
	.byte	TOK_BYTE
	.byte	19
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	26
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	32
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	DRAWLN
	.byte	TOK_DRAWTO
@FastBasic_LINE_831:	; LINE 831
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_BYTE_POKE
	.byte	COLOR
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_NUM_POKE
	.word	FILDAT
@FastBasic_LINE_832:	; LINE 832
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	FILLIN
	.byte	TOK_DRAWTO
@FastBasic_LINE_833:	; LINE 833
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	FILLIN
	.byte	TOK_DRAWTO
@FastBasic_LINE_834:	; LINE 834
	.byte	TOK_BYTE
	.byte	34
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE_PEEK
	.byte	COLOR
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	34
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	FILLIN
	.byte	TOK_DRAWTO
@FastBasic_LINE_835:	; LINE 835
	.byte	TOK_RET
@FastBasic_LINE_838:	; LINE 838
	.export	fb_lbl_SET_UP_LEVEL_FONT
fb_lbl_SET_UP_LEVEL_FONT:
@FastBasic_LINE_839:	; LINE 839
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	45688
	.byte	TOK_NUM
	.word	45688
	.byte	TOK_PUSH_NUM
	.word	45689
	.byte	TOK_PUSH_BYTE
	.byte	48
	.byte	TOK_MOVE
@FastBasic_LINE_840:	; LINE 840
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_841:	; LINE 841
	.byte	TOK_VAR_ADDR
	.byte	26
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_MOD
	.byte	TOK_VAR_STORE
	.byte	6
@FastBasic_LINE_843:	; LINE 843
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_421
@FastBasic_LINE_844:	; LINE 844
	.byte	TOK_BYTE
	.byte	228
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_845:	; LINE 845
	.byte	TOK_RET
@FastBasic_LINE_846:	; LINE 846
	.export	jump_lbl_421
jump_lbl_421:
@FastBasic_LINE_847:	; LINE 847
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_NEQ
	.byte	TOK_CJUMP
	.word	jump_lbl_422
@FastBasic_LINE_848:	; LINE 848
	.byte	TOK_VAR_STORE_0
	.byte	5
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_423
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
	.export	jump_lbl_423
jump_lbl_423:
@FastBasic_LINE_849:	; LINE 849
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_424
@FastBasic_LINE_850:	; LINE 850
	.export	jump_lbl_426
jump_lbl_426:
@FastBasic_LINE_851:	; LINE 851
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	3
@FastBasic_LINE_852:	; LINE 852
	.byte	TOK_VAR_LOAD
	.byte	15
	.byte	TOK_VAR_STORE
	.byte	14
@FastBasic_LINE_853:	; LINE 853
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_427
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	14
	.export	jump_lbl_427
jump_lbl_427:
@FastBasic_LINE_856:	; LINE 856
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_428
@FastBasic_LINE_857:	; LINE 857
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_1
@FastBasic_LINE_858:	; LINE 858
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_428
jump_lbl_428:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_430
@FastBasic_LINE_859:	; LINE 859
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_2
@FastBasic_LINE_860:	; LINE 860
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_430
jump_lbl_430:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_432
@FastBasic_LINE_861:	; LINE 861
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_3
@FastBasic_LINE_862:	; LINE 862
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_432
jump_lbl_432:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_434
@FastBasic_LINE_863:	; LINE 863
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_4
@FastBasic_LINE_864:	; LINE 864
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_434
jump_lbl_434:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_436
@FastBasic_LINE_865:	; LINE 865
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_5
@FastBasic_LINE_866:	; LINE 866
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_436
jump_lbl_436:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_438
@FastBasic_LINE_867:	; LINE 867
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_1
@FastBasic_LINE_868:	; LINE 868
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_438
jump_lbl_438:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_440
@FastBasic_LINE_869:	; LINE 869
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_1
@FastBasic_LINE_870:	; LINE 870
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_440
jump_lbl_440:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_442
@FastBasic_LINE_871:	; LINE 871
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_3
@FastBasic_LINE_872:	; LINE 872
	.byte	TOK_JUMP
	.word	jump_lbl_429
	.export	jump_lbl_442
jump_lbl_442:
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_429
@FastBasic_LINE_873:	; LINE 873
	.byte	TOK_CALL
	.word	fb_lbl_BACKGROUND_SET_5
@FastBasic_LINE_874:	; LINE 874
	.export	jump_lbl_429
jump_lbl_429:
@FastBasic_LINE_875:	; LINE 875
	.byte	TOK_NUM
	.word	45687
	.byte	TOK_ADD_VAR
	.byte	3
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_426
@FastBasic_LINE_876:	; LINE 876
	.byte	TOK_NUM
	.word	45687
	.byte	TOK_ADD_VAR
	.byte	3
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_POKE
@FastBasic_LINE_877:	; LINE 877
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_426
	.export	jump_lbl_424
jump_lbl_424:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_878:	; LINE 878
	.byte	TOK_JUMP
	.word	jump_lbl_445
	.export	jump_lbl_422
jump_lbl_422:
@FastBasic_LINE_879:	; LINE 879
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_445
@FastBasic_LINE_880:	; LINE 880
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	3
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_NUM_POKE
	.word	712
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_447
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	5
	.export	jump_lbl_447
jump_lbl_447:
@FastBasic_LINE_881:	; LINE 881
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_448
	.export	jump_lbl_449
jump_lbl_449:
@FastBasic_LINE_882:	; LINE 882
	.byte	TOK_NUM
	.word	45687
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_883:	; LINE 883
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_450
	.byte	TOK_NUM
	.word	45687
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POKE
	.export	jump_lbl_450
jump_lbl_450:
@FastBasic_LINE_884:	; LINE 884
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_451
	.byte	TOK_NUM
	.word	45687
	.byte	TOK_ADD_VAR
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POKE
	.export	jump_lbl_451
jump_lbl_451:
@FastBasic_LINE_885:	; LINE 885
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_449
	.export	jump_lbl_448
jump_lbl_448:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_887:	; LINE 887
	.export	jump_lbl_445
jump_lbl_445:
@FastBasic_LINE_888:	; LINE 888
	.byte	TOK_NUM
	.word	45688
	.byte	TOK_PUSH_NUM
	.word	45696
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_MOVE
@FastBasic_LINE_889:	; LINE 889
	.byte	TOK_NUM
	.word	45728
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_890:	; LINE 890
	.byte	TOK_NUM
	.word	45730
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
@FastBasic_LINE_891:	; LINE 891
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_NUM
	.word	45700
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	45715
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_452
	.export	jump_lbl_453
jump_lbl_453:
@FastBasic_LINE_892:	; LINE 892
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_BIT_AND
	.byte	TOK_POKE
@FastBasic_LINE_893:	; LINE 893
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_453
	.export	jump_lbl_452
jump_lbl_452:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_894:	; LINE 894
	.byte	TOK_VAR_SADDR
	.byte	14
	.byte	TOK_PUSH_NUM
	.word	45720
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	45723
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_454
	.export	jump_lbl_455
jump_lbl_455:
@FastBasic_LINE_895:	; LINE 895
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	240
	.byte	TOK_BIT_AND
	.byte	TOK_POKE
@FastBasic_LINE_896:	; LINE 896
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_455
	.export	jump_lbl_454
jump_lbl_454:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_897:	; LINE 897
	.byte	TOK_RET
@FastBasic_LINE_899:	; LINE 899
	.export	fb_lbl_BACKGROUND_SET_1
fb_lbl_BACKGROUND_SET_1:
@FastBasic_LINE_900:	; LINE 900
	.byte	TOK_BYTE
	.byte	158
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_901:	; LINE 901
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_902:	; LINE 902
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CRET
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD_VAR
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_903:	; LINE 903
	.byte	TOK_RET
@FastBasic_LINE_905:	; LINE 905
	.export	fb_lbl_BACKGROUND_SET_2
fb_lbl_BACKGROUND_SET_2:
@FastBasic_LINE_906:	; LINE 906
	.byte	TOK_BYTE
	.byte	220
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_907:	; LINE 907
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_908:	; LINE 908
	.byte	TOK_RET
@FastBasic_LINE_910:	; LINE 910
	.export	fb_lbl_BACKGROUND_SET_3
fb_lbl_BACKGROUND_SET_3:
@FastBasic_LINE_911:	; LINE 911
	.byte	TOK_BYTE
	.byte	86
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_912:	; LINE 912
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_913:	; LINE 913
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_GT
	.byte	TOK_CRET
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD_VAR
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_914:	; LINE 914
	.byte	TOK_RET
@FastBasic_LINE_916:	; LINE 916
	.export	fb_lbl_BACKGROUND_SET_4
fb_lbl_BACKGROUND_SET_4:
@FastBasic_LINE_917:	; LINE 917
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_918:	; LINE 918
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOD
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_919:	; LINE 919
	.byte	TOK_RET
@FastBasic_LINE_921:	; LINE 921
	.export	fb_lbl_BACKGROUND_SET_5
fb_lbl_BACKGROUND_SET_5:
@FastBasic_LINE_922:	; LINE 922
	.byte	TOK_BYTE
	.byte	158
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_923:	; LINE 923
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_924:	; LINE 924
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CRET
	.byte	TOK_VAR_LOAD
	.byte	14
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD_VAR
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_925:	; LINE 925
	.byte	TOK_RET
