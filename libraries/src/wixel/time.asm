;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 23 21:06:09 2016
;--------------------------------------------------------
	.module time
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delayMicroseconds
	.globl _timeMs
	.globl _ISR_T4
	.globl _getMs
	.globl _timeInit
	.globl _delayMs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftime$P0$0$0 == 0x0080
_P0	=	0x0080
Ftime$SP$0$0 == 0x0081
_SP	=	0x0081
Ftime$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Ftime$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Ftime$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Ftime$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Ftime$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Ftime$PCON$0$0 == 0x0087
_PCON	=	0x0087
Ftime$TCON$0$0 == 0x0088
_TCON	=	0x0088
Ftime$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Ftime$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Ftime$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Ftime$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Ftime$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Ftime$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Ftime$P1$0$0 == 0x0090
_P1	=	0x0090
Ftime$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Ftime$DPS$0$0 == 0x0092
_DPS	=	0x0092
Ftime$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Ftime$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Ftime$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Ftime$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Ftime$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Ftime$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Ftime$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Ftime$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Ftime$P2$0$0 == 0x00a0
_P2	=	0x00a0
Ftime$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Ftime$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Ftime$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Ftime$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Ftime$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Ftime$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Ftime$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Ftime$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Ftime$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Ftime$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Ftime$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Ftime$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Ftime$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Ftime$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Ftime$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Ftime$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Ftime$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Ftime$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Ftime$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Ftime$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Ftime$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Ftime$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Ftime$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Ftime$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Ftime$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Ftime$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Ftime$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Ftime$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Ftime$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Ftime$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Ftime$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Ftime$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Ftime$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Ftime$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Ftime$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Ftime$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Ftime$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Ftime$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Ftime$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Ftime$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Ftime$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Ftime$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Ftime$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Ftime$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Ftime$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Ftime$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Ftime$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Ftime$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Ftime$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Ftime$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Ftime$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Ftime$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Ftime$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Ftime$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Ftime$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Ftime$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Ftime$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Ftime$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Ftime$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Ftime$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Ftime$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Ftime$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Ftime$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Ftime$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Ftime$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Ftime$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Ftime$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Ftime$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Ftime$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Ftime$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Ftime$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Ftime$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Ftime$B$0$0 == 0x00f0
_B	=	0x00f0
Ftime$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Ftime$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Ftime$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Ftime$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Ftime$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Ftime$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Ftime$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Ftime$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Ftime$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Ftime$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Ftime$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Ftime$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Ftime$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Ftime$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Ftime$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Ftime$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Ftime$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Ftime$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Ftime$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Ftime$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Ftime$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Ftime$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftime$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Ftime$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Ftime$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Ftime$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Ftime$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Ftime$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Ftime$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Ftime$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Ftime$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Ftime$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Ftime$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Ftime$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Ftime$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Ftime$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Ftime$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Ftime$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Ftime$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Ftime$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Ftime$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Ftime$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Ftime$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Ftime$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Ftime$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Ftime$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Ftime$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Ftime$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Ftime$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Ftime$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Ftime$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Ftime$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Ftime$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Ftime$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Ftime$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Ftime$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Ftime$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Ftime$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Ftime$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Ftime$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Ftime$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Ftime$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Ftime$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Ftime$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Ftime$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Ftime$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Ftime$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Ftime$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Ftime$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Ftime$EA$0$0 == 0x00af
_EA	=	0x00af
Ftime$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Ftime$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Ftime$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Ftime$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Ftime$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Ftime$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Ftime$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Ftime$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Ftime$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Ftime$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Ftime$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Ftime$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Ftime$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Ftime$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Ftime$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Ftime$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Ftime$P$0$0 == 0x00d0
_P	=	0x00d0
Ftime$F1$0$0 == 0x00d1
_F1	=	0x00d1
Ftime$OV$0$0 == 0x00d2
_OV	=	0x00d2
Ftime$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Ftime$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Ftime$F0$0$0 == 0x00d5
_F0	=	0x00d5
Ftime$AC$0$0 == 0x00d6
_AC	=	0x00d6
Ftime$CY$0$0 == 0x00d7
_CY	=	0x00d7
Ftime$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Ftime$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Ftime$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Ftime$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Ftime$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Ftime$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Ftime$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Ftime$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Ftime$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Ftime$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Ftime$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Ftime$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Ftime$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Ftime$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Ftime$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Ftime$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Ftime$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Ftime$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Ftime$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Ftime$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Ftime$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Ftime$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Ftime$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Ftime$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Ftime$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Ftime$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Ftime$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Ftime$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Ftime$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Ftime$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Ftime$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Ftime$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Ftime$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Ftime$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Ftime$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Ftime$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Ftime$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Ftime$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Ftime$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Ftime$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$timeMs$0$0==.
_timeMs::
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Ftime$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Ftime$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Ftime$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Ftime$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Ftime$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Ftime$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Ftime$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Ftime$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Ftime$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Ftime$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Ftime$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Ftime$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Ftime$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Ftime$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Ftime$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Ftime$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Ftime$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Ftime$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Ftime$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Ftime$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Ftime$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Ftime$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Ftime$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Ftime$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Ftime$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Ftime$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Ftime$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Ftime$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Ftime$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Ftime$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Ftime$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Ftime$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Ftime$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Ftime$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Ftime$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Ftime$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Ftime$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Ftime$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Ftime$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Ftime$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Ftime$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Ftime$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Ftime$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Ftime$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Ftime$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Ftime$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Ftime$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Ftime$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Ftime$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Ftime$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Ftime$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Ftime$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Ftime$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Ftime$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Ftime$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Ftime$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Ftime$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Ftime$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Ftime$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Ftime$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Ftime$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Ftime$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Ftime$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Ftime$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Ftime$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Ftime$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Ftime$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Ftime$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Ftime$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Ftime$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Ftime$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Ftime$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Ftime$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Ftime$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Ftime$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Ftime$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Ftime$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Ftime$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Ftime$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Ftime$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Ftime$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_T4'
;------------------------------------------------------------
	G$ISR_T4$0$0 ==.
	C$time.c$13$0$0 ==.
;	libraries/src/wixel/time.c:13: ISR(T4, 0)
;	-----------------------------------------
;	 function ISR_T4
;	-----------------------------------------
_ISR_T4:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	ar0
	push	psw
	mov	psw,#0x00
	C$time.c$15$1$1 ==.
;	libraries/src/wixel/time.c:15: timeMs++;
	mov	r0,#_timeMs
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	pop	psw
	pop	ar0
	pop	acc
	C$time.c$17$1$1 ==.
	XG$ISR_T4$0$0 ==.
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'getMs'
;------------------------------------------------------------
	G$getMs$0$0 ==.
	C$time.c$19$1$1 ==.
;	libraries/src/wixel/time.c:19: uint32 getMs()
;	-----------------------------------------
;	 function getMs
;	-----------------------------------------
_getMs:
	C$time.c$21$1$1 ==.
;	libraries/src/wixel/time.c:21: uint8 oldT4IE = T4IE;   // store state of timer 4 interrupt (active/inactive?)
	mov	c,_T4IE
	clr	a
	rlc	a
	mov	r7,a
	C$time.c$23$1$1 ==.
;	libraries/src/wixel/time.c:23: T4IE = 0;               // disable timer 4 interrupt
	clr	_T4IE
	C$time.c$24$1$1 ==.
;	libraries/src/wixel/time.c:24: time = timeMs;          // copy millisecond timer count into a safe variable
	mov	r0,#_timeMs
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	C$time.c$25$1$1 ==.
;	libraries/src/wixel/time.c:25: T4IE = oldT4IE;         // restore timer 4 interrupt to its original state
	mov	a,r7
	add	a,#0xff
	mov	_T4IE,c
	C$time.c$26$1$1 ==.
;	libraries/src/wixel/time.c:26: return time;            // return timer count copy
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	C$time.c$27$1$1 ==.
	XG$getMs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeInit'
;------------------------------------------------------------
	G$timeInit$0$0 ==.
	C$time.c$29$1$1 ==.
;	libraries/src/wixel/time.c:29: void timeInit()
;	-----------------------------------------
;	 function timeInit
;	-----------------------------------------
_timeInit:
	C$time.c$31$1$1 ==.
;	libraries/src/wixel/time.c:31: T4CC0 = 187;
	mov	_T4CC0,#0xBB
	C$time.c$32$1$1 ==.
;	libraries/src/wixel/time.c:32: T4IE = 1;     // Enable Timer 4 interrupt.  (IEN1.T4IE=1)
	setb	_T4IE
	C$time.c$38$1$1 ==.
;	libraries/src/wixel/time.c:38: T4CTL = 0b11111010;
	mov	_T4CTL,#0xFA
	C$time.c$40$1$1 ==.
;	libraries/src/wixel/time.c:40: EA = 1; // Globally enable interrupts (IEN0.EA=1).
	setb	_EA
	C$time.c$41$1$1 ==.
	XG$timeInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMs'
;------------------------------------------------------------
	G$delayMs$0$0 ==.
	C$time.c$43$1$1 ==.
;	libraries/src/wixel/time.c:43: void delayMs(uint16 milliseconds)
;	-----------------------------------------
;	 function delayMs
;	-----------------------------------------
_delayMs:
	mov	r6,dpl
	mov	r7,dph
	C$time.c$49$1$1 ==.
;	libraries/src/wixel/time.c:49: while(milliseconds--)
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00109$
	dec	r7
00109$:
	mov	a,r4
	orl	a,r5
	jz	00104$
	C$time.c$51$2$2 ==.
;	libraries/src/wixel/time.c:51: delayMicroseconds(250);
	mov	dpl,#0xFA
	push	ar7
	push	ar6
	lcall	_delayMicroseconds
	C$time.c$52$2$2 ==.
;	libraries/src/wixel/time.c:52: delayMicroseconds(250);
	mov	dpl,#0xFA
	lcall	_delayMicroseconds
	C$time.c$53$2$2 ==.
;	libraries/src/wixel/time.c:53: delayMicroseconds(250);
	mov	dpl,#0xFA
	lcall	_delayMicroseconds
	C$time.c$54$2$2 ==.
;	libraries/src/wixel/time.c:54: delayMicroseconds(249); // there's some overhead, so only delay by 249 here
	mov	dpl,#0xF9
	lcall	_delayMicroseconds
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	C$time.c$56$1$1 ==.
	XG$delayMs$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
