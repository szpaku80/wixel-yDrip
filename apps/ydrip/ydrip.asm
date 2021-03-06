;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Wed Feb 01 23:23:27 2017
;--------------------------------------------------------
	.module ydrip
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setADCInputs
	.globl _get_packet
	.globl _delayFor
	.globl _WaitForPacket
	.globl _strobe_radio
	.globl _swap_channel
	.globl _printfUSB
	.globl _goToSleep
	.globl _killWithWatchdog
	.globl _reset_offsets
	.globl _makeAllOutputsLow
	.globl _makeAllOutputs
	.globl _print_packet
	.globl _ESPsleep
	.globl _getTimeBytes
	.globl _wifiConnect
	.globl _wifiFlash
	.globl _getWifiStatus
	.globl _enableESP
	.globl _sendAT
	.globl _getESPString
	.globl _initUart1
	.globl _doServices
	.globl _clearRxErrors
	.globl _dexcom_src_to_ascii
	.globl _dex_num_decoder
	.globl _bit_reverse_bytes
	.globl _min8
	.globl _bit_reverse_byte
	.globl _getPacketPassedChecksum
	.globl _blink_red_led
	.globl _blink_yellow_led
	.globl _uartDisable
	.globl _uartEnable
	.globl _switchToRCOSC
	.globl _ISR_ST
	.globl _sleepInit
	.globl _AES128_CBC_encrypt_buffer
	.globl _adcSetMillivoltCalibration
	.globl _adcReadVddMillivolts
	.globl _strlen
	.globl _memset
	.globl _strstr
	.globl _strcmp
	.globl _strcat
	.globl _strcpy
	.globl _memcpy
	.globl _sprintf
	.globl _printf
	.globl _uart1RxReceiveByte
	.globl _uart1RxAvailable
	.globl _uart1TxSendByte
	.globl _uart1TxAvailable
	.globl _uart1SetBaudRate
	.globl _uart1Init
	.globl _setDigitalInput
	.globl _setDigitalOutput
	.globl _radioQueueRxDoneWithPacket
	.globl _radioQueueRxCurrentPacket
	.globl _radioQueueInit
	.globl _radioMacResume
	.globl _radioMacSleep
	.globl _radioMacStrobe
	.globl _radioMacInit
	.globl _radioCrcPassed
	.globl _usbComTxSendByte
	.globl _usbComTxAvailable
	.globl _usbComService
	.globl _usbShowStatusWithGreenLed
	.globl _delayMs
	.globl _getMs
	.globl _disableUsbPullup
	.globl _enableUsbPullup
	.globl _usbPowerPresent
	.globl _boardService
	.globl _boardClockInit
	.globl _systemInit
	.globl _SrcNameTable
	.globl _AT_TIMEOUT
	.globl _dmaDesc
	.globl _PM2_BUF
	.globl _wixFone_ID
	.globl _WaitForPacket_PARM_3
	.globl _swap_channel_PARM_2
	.globl _dexcom_src_to_ascii_PARM_2
	.globl _WaitForPacket_PARM_2
	.globl _bit_reverse_bytes_PARM_2
	.globl _min8_PARM_2
	.globl _intMaxStrLen
	.globl _sequential_missed_packets
	.globl _usbEnabled
	.globl _needsTimingCalibration
	.globl _getSrcValue
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fydrip$P0$0$0 == 0x0080
_P0	=	0x0080
Fydrip$SP$0$0 == 0x0081
_SP	=	0x0081
Fydrip$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fydrip$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fydrip$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fydrip$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fydrip$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fydrip$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fydrip$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fydrip$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fydrip$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fydrip$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fydrip$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fydrip$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fydrip$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fydrip$P1$0$0 == 0x0090
_P1	=	0x0090
Fydrip$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fydrip$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fydrip$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fydrip$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fydrip$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fydrip$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fydrip$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fydrip$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fydrip$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fydrip$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fydrip$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fydrip$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fydrip$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fydrip$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fydrip$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fydrip$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fydrip$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fydrip$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fydrip$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fydrip$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fydrip$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fydrip$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fydrip$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fydrip$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fydrip$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fydrip$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fydrip$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fydrip$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fydrip$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fydrip$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fydrip$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fydrip$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fydrip$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fydrip$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fydrip$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fydrip$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fydrip$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fydrip$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fydrip$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fydrip$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fydrip$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fydrip$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fydrip$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fydrip$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fydrip$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fydrip$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fydrip$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fydrip$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fydrip$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fydrip$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fydrip$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fydrip$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fydrip$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fydrip$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fydrip$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fydrip$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fydrip$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fydrip$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fydrip$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fydrip$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fydrip$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fydrip$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fydrip$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fydrip$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fydrip$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fydrip$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fydrip$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fydrip$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fydrip$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fydrip$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fydrip$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fydrip$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fydrip$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fydrip$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fydrip$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fydrip$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fydrip$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fydrip$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fydrip$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fydrip$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fydrip$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fydrip$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fydrip$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fydrip$B$0$0 == 0x00f0
_B	=	0x00f0
Fydrip$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fydrip$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fydrip$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fydrip$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fydrip$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fydrip$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fydrip$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fydrip$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fydrip$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fydrip$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fydrip$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fydrip$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fydrip$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fydrip$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fydrip$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fydrip$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fydrip$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fydrip$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fydrip$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fydrip$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fydrip$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fydrip$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fydrip$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fydrip$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fydrip$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fydrip$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fydrip$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fydrip$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fydrip$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fydrip$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fydrip$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fydrip$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fydrip$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fydrip$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fydrip$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fydrip$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fydrip$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fydrip$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fydrip$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fydrip$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fydrip$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fydrip$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fydrip$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fydrip$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fydrip$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fydrip$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fydrip$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fydrip$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fydrip$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fydrip$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fydrip$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fydrip$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fydrip$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fydrip$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fydrip$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fydrip$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fydrip$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fydrip$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fydrip$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fydrip$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fydrip$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fydrip$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fydrip$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fydrip$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fydrip$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fydrip$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fydrip$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fydrip$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fydrip$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fydrip$EA$0$0 == 0x00af
_EA	=	0x00af
Fydrip$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fydrip$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fydrip$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fydrip$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fydrip$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fydrip$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fydrip$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fydrip$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fydrip$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fydrip$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fydrip$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fydrip$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fydrip$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fydrip$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fydrip$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fydrip$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fydrip$P$0$0 == 0x00d0
_P	=	0x00d0
Fydrip$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fydrip$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fydrip$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fydrip$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fydrip$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fydrip$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fydrip$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fydrip$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fydrip$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fydrip$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fydrip$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fydrip$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fydrip$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fydrip$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fydrip$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fydrip$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fydrip$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fydrip$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fydrip$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fydrip$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fydrip$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fydrip$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fydrip$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fydrip$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fydrip$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fydrip$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fydrip$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fydrip$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fydrip$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fydrip$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fydrip$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fydrip$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fydrip$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fydrip$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fydrip$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fydrip$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fydrip$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fydrip$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fydrip$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fydrip$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fydrip$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fydrip$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fydrip$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fydrip$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fydrip$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fydrip$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fydrip$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lydrip.print_packet$sloc0$1$0==.
_print_packet_sloc0_1_0:
	.ds 2
Lydrip.print_packet$sloc1$1$0==.
_print_packet_sloc1_1_0:
	.ds 2
Lydrip.print_packet$sloc2$1$0==.
_print_packet_sloc2_1_0:
	.ds 4
Lydrip.goToSleep$sloc0$1$0==.
_goToSleep_sloc0_1_0:
	.ds 2
Lydrip.goToSleep$sloc1$1$0==.
_goToSleep_sloc1_1_0:
	.ds 4
Lydrip.WaitForPacket$sloc0$1$0==.
_WaitForPacket_sloc0_1_0:
	.ds 1
Lydrip.WaitForPacket$sloc1$1$0==.
_WaitForPacket_sloc1_1_0:
	.ds 4
Lydrip.WaitForPacket$sloc2$1$0==.
_WaitForPacket_sloc2_1_0:
	.ds 2
Lydrip.WaitForPacket$sloc3$1$0==.
_WaitForPacket_sloc3_1_0:
	.ds 4
Lydrip.WaitForPacket$sloc4$1$0==.
_WaitForPacket_sloc4_1_0:
	.ds 4
Lydrip.WaitForPacket$sloc5$1$0==.
_WaitForPacket_sloc5_1_0:
	.ds 4
Lydrip.delayFor$sloc0$1$0==.
_delayFor_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Lydrip.dexcom_src_to_ascii$sloc0$1$0==.
_dexcom_src_to_ascii_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
Fydrip$only_listen_for_my_transmitter$0$0==.
_only_listen_for_my_transmitter:
	.ds 1
Fydrip$status_lights$0$0==.
_status_lights:
	.ds 1
Fydrip$allow_alternate_usb_protocol$0$0==.
_allow_alternate_usb_protocol:
	.ds 1
Fydrip$debug_mode$0$0==.
_debug_mode:
	.ds 1
Fydrip$encrypt_output$0$0==.
_encrypt_output:
	.ds 1
G$needsTimingCalibration$0$0==.
_needsTimingCalibration::
	.ds 1
G$usbEnabled$0$0==.
_usbEnabled::
	.ds 1
Lydrip.goToSleep$storedDma0Armed$3$3==.
_goToSleep_storedDma0Armed_3_3:
	.ds 1
Lydrip.goToSleep$savedP0IE$3$3==.
_goToSleep_savedP0IE_3_3:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Fydrip$wake_earlier_for_next_miss$0$0==.
_wake_earlier_for_next_miss:
	.ds 1
Fydrip$misses_until_failure$0$0==.
_misses_until_failure:
	.ds 1
Fydrip$fOffset$0$0==.
_fOffset:
	.ds 4
Fydrip$nChannels$0$0==.
_nChannels:
	.ds 4
Fydrip$waitTimes$0$0==.
_waitTimes:
	.ds 16
Fydrip$delayedWaitTimes$0$0==.
_delayedWaitTimes:
	.ds 16
Fydrip$catch_offsets$0$0==.
_catch_offsets:
	.ds 16
Fydrip$last_catch_channel$0$0==.
_last_catch_channel:
	.ds 1
Fydrip$save_IEN0$0$0==.
_save_IEN0:
	.ds 1
Fydrip$save_IEN1$0$0==.
_save_IEN1:
	.ds 1
Fydrip$save_IEN2$0$0==.
_save_IEN2:
	.ds 1
G$sequential_missed_packets$0$0==.
_sequential_missed_packets::
	.ds 1
G$intMaxStrLen$0$0==.
_intMaxStrLen::
	.ds 1
Lydrip.min8$b$1$1==.
_min8_PARM_2:
	.ds 1
Lydrip.bit_reverse_bytes$nLen$1$1==.
_bit_reverse_bytes_PARM_2:
	.ds 1
Lydrip.bit_reverse_bytes$buf$1$1==.
_bit_reverse_bytes_buf_1_1:
	.ds 3
Lydrip.getTimeBytes$tVector$1$1==.
_getTimeBytes_tVector_1_1:
	.ds 2
Lydrip.print_packet$pPkt$1$1==.
_print_packet_pPkt_1_1:
	.ds 2
Lydrip.goToSleep$storedDescHigh$3$3==.
_goToSleep_storedDescHigh_3_3:
	.ds 1
Lydrip.goToSleep$storedDescLow$3$3==.
_goToSleep_storedDescLow_3_3:
	.ds 1
Lydrip.goToSleep$storedIEN1$3$3==.
_goToSleep_storedIEN1_3_3:
	.ds 1
Lydrip.goToSleep$storedIEN2$3$3==.
_goToSleep_storedIEN2_3_3:
	.ds 1
Lydrip.goToSleep$savedP1SEL$3$3==.
_goToSleep_savedP1SEL_3_3:
	.ds 1
Lydrip.goToSleep$savedP1DIR$3$3==.
_goToSleep_savedP1DIR_3_3:
	.ds 1
Lydrip.goToSleep$start_waiting$3$8==.
_goToSleep_start_waiting_3_8:
	.ds 4
Lydrip.WaitForPacket$pkt$1$1==.
_WaitForPacket_PARM_2:
	.ds 2
Lydrip.get_packet$pPkt$1$1==.
_get_packet_pPkt_1_1:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fydrip$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fydrip$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fydrip$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fydrip$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fydrip$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fydrip$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fydrip$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fydrip$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fydrip$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fydrip$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fydrip$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fydrip$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fydrip$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fydrip$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fydrip$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fydrip$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fydrip$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fydrip$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fydrip$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fydrip$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fydrip$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fydrip$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fydrip$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fydrip$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fydrip$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fydrip$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fydrip$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fydrip$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fydrip$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fydrip$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fydrip$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fydrip$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fydrip$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fydrip$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fydrip$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fydrip$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fydrip$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fydrip$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fydrip$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fydrip$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fydrip$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fydrip$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fydrip$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fydrip$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fydrip$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fydrip$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fydrip$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fydrip$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fydrip$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fydrip$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fydrip$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fydrip$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fydrip$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fydrip$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fydrip$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fydrip$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fydrip$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fydrip$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fydrip$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fydrip$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fydrip$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fydrip$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fydrip$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fydrip$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fydrip$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fydrip$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fydrip$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fydrip$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fydrip$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fydrip$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fydrip$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fydrip$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fydrip$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fydrip$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fydrip$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fydrip$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fydrip$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fydrip$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fydrip$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fydrip$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fydrip$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Lydrip.bit_reverse_byte$bRet$1$1==.
_bit_reverse_byte_bRet_1_1:
	.ds 1
Lydrip.dex_num_decoder$usReversed$1$1==.
_dex_num_decoder_usReversed_1_1:
	.ds 2
Lydrip.dexcom_src_to_ascii$addr$1$1==.
_dexcom_src_to_ascii_PARM_2:
	.ds 2
Lydrip.dexcom_src_to_ascii$src$1$1==.
_dexcom_src_to_ascii_src_1_1:
	.ds 4
Lydrip.getSrcValue$srcVal$1$1==.
_getSrcValue_srcVal_1_1:
	.ds 1
Lydrip.getESPString$uartCharacters$1$1==.
_getESPString_uartCharacters_1_1:
	.ds 80
Lydrip.getESPString$i$1$1==.
_getESPString_i_1_1:
	.ds 1
Lydrip.getESPString$stop$1$1==.
_getESPString_stop_1_1:
	.ds 4
Lydrip.getESPString$now$1$1==.
_getESPString_now_1_1:
	.ds 4
Lydrip.sendAT$atString$1$1==.
_sendAT_atString_1_1:
	.ds 2
Lydrip.sendAT$ATresponse$1$1==.
_sendAT_ATresponse_1_1:
	.ds 80
Lydrip.enableESP$c$1$1==.
_enableESP_c_1_1:
	.ds 80
Lydrip.enableESP$nofile$1$1==.
_enableESP_nofile_1_1:
	.ds 7
Lydrip.enableESP$clen$1$1==.
_enableESP_clen_1_1:
	.ds 2
Lydrip.getWifiStatus$i$1$1==.
_getWifiStatus_i_1_1:
	.ds 2
Lydrip.getWifiStatus$intStatus$1$1==.
_getWifiStatus_intStatus_1_1:
	.ds 2
Lydrip.getWifiStatus$c$1$1==.
_getWifiStatus_c_1_1:
	.ds 80
Lydrip.wifiFlash$intWifiStatus$1$1==.
_wifiFlash_intWifiStatus_1_1:
	.ds 2
Lydrip.wifiConnect$atString$1$1==.
_wifiConnect_atString_1_1:
	.ds 40
Lydrip.wifiConnect$intWifiStatus$1$1==.
_wifiConnect_intWifiStatus_1_1:
	.ds 2
Lydrip.getTimeBytes$c$1$1==.
_getTimeBytes_c_1_1:
	.ds 80
Lydrip.getTimeBytes$strMMM$1$1==.
_getTimeBytes_strMMM_1_1:
	.ds 4
Lydrip.print_packet$transID$1$1==.
_print_packet_transID_1_1:
	.ds 6
Lydrip.print_packet$iv$1$1==.
_print_packet_iv_1_1:
	.ds 16
Lydrip.print_packet$sprintfBuffer$1$1==.
_print_packet_sprintfBuffer_1_1:
	.ds 64
Lydrip.print_packet$AESBuffer$1$1==.
_print_packet_AESBuffer_1_1:
	.ds 64
Lydrip.print_packet$getTimeResponse$1$1==.
_print_packet_getTimeResponse_1_1:
	.ds 17
Lydrip.goToSleep$seconds$1$1==.
_goToSleep_seconds_1_1:
	.ds 2
Lydrip.putchar$c$1$1==.
_putchar_c_1_1:
	.ds 1
Lydrip.swap_channel$newFSCTRL0$1$1==.
_swap_channel_PARM_2:
	.ds 1
Lydrip.swap_channel$channel$1$1==.
_swap_channel_channel_1_1:
	.ds 1
Lydrip.WaitForPacket$channel$1$1==.
_WaitForPacket_PARM_3:
	.ds 1
Lydrip.WaitForPacket$milliseconds$1$1==.
_WaitForPacket_milliseconds_1_1:
	.ds 2
Lydrip.WaitForPacket$six_minutes$1$1==.
_WaitForPacket_six_minutes_1_1:
	.ds 4
Lydrip.WaitForPacket$transID$1$1==.
_WaitForPacket_transID_1_1:
	.ds 6
Lydrip.delayFor$wait_chan$1$1==.
_delayFor_wait_chan_1_1:
	.ds 2
Lydrip.main$Pkt$2$2==.
_main_Pkt_2_2:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
Fydrip$transmitter_id$0$0==.
_transmitter_id:
	.ds 6
Fydrip$dexie_host_address$0$0==.
_dexie_host_address:
	.ds 22
Fydrip$dexie_host_port$0$0==.
_dexie_host_port:
	.ds 6
G$wixFone_ID$0$0==.
_wixFone_ID::
	.ds 8
Fydrip$key$0$0==.
_key:
	.ds 16
Fydrip$start_channel$0$0==.
_start_channel:
	.ds 1
Fydrip$defaultfOffset$0$0==.
_defaultfOffset:
	.ds 4
G$PM2_BUF$0$0==.
_PM2_BUF::
	.ds 7
G$dmaDesc$0$0==.
_dmaDesc::
	.ds 8
G$AT_TIMEOUT$0$0==.
_AT_TIMEOUT::
	.ds 1
Fydrip$defaultWaitTime$0$0==.
_defaultWaitTime:
	.ds 4
G$SrcNameTable$0$0==.
_SrcNameTable::
	.ds 32
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_URX1
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_ST
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_T4
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_UTX1
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_RF
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'enableESP'
;------------------------------------------------------------
;c                         Allocated with name '_enableESP_c_1_1'
;nofile                    Allocated with name '_enableESP_nofile_1_1'
;clen                      Allocated with name '_enableESP_clen_1_1'
;------------------------------------------------------------
	G$enableESP$0$0 ==.
	C$ydrip.c$356$1$1 ==.
;	apps/ydrip/ydrip.c:356: XDATA static int16 clen=0;
	mov	dptr,#_enableESP_clen_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'getWifiStatus'
;------------------------------------------------------------
;i                         Allocated with name '_getWifiStatus_i_1_1'
;intStatus                 Allocated with name '_getWifiStatus_intStatus_1_1'
;c                         Allocated with name '_getWifiStatus_c_1_1'
;------------------------------------------------------------
	G$getWifiStatus$0$0 ==.
	C$ydrip.c$430$1$1 ==.
;	apps/ydrip/ydrip.c:430: XDATA static int16 i=0;
	mov	dptr,#_getWifiStatus_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	G$main$0$0 ==.
	C$ydrip.c$54$1$1 ==.
;	apps/ydrip/ydrip.c:54: static volatile BIT only_listen_for_my_transmitter = 1;                                           //
	setb	_only_listen_for_my_transmitter
	G$main$0$0 ==.
	C$ydrip.c$57$1$1 ==.
;	apps/ydrip/ydrip.c:57: static volatile BIT status_lights = 1;                                                            //
	setb	_status_lights
	G$main$0$0 ==.
	C$ydrip.c$61$1$1 ==.
;	apps/ydrip/ydrip.c:61: static volatile BIT allow_alternate_usb_protocol = 0;
	clr	_allow_alternate_usb_protocol
	G$main$0$0 ==.
	C$ydrip.c$65$1$1 ==.
;	apps/ydrip/ydrip.c:65: static volatile BIT debug_mode = 0;
	clr	_debug_mode
	G$main$0$0 ==.
	C$ydrip.c$93$1$1 ==.
;	apps/ydrip/ydrip.c:93: static volatile BIT encrypt_output = 1;
	setb	_encrypt_output
	G$main$0$0 ==.
	C$ydrip.c$126$1$1 ==.
;	apps/ydrip/ydrip.c:126: BIT needsTimingCalibration = 1;
	setb	_needsTimingCalibration
	G$main$0$0 ==.
	C$ydrip.c$127$1$1 ==.
;	apps/ydrip/ydrip.c:127: BIT usbEnabled = 1;
	setb	_usbEnabled
	G$main$0$0 ==.
	C$ydrip.c$82$1$1 ==.
;	apps/ydrip/ydrip.c:82: static volatile uint8 wake_earlier_for_next_miss = 20;                                            //
	mov	r0,#_wake_earlier_for_next_miss
	mov	a,#0x14
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$86$1$1 ==.
;	apps/ydrip/ydrip.c:86: static volatile uint8 misses_until_failure = 1;                                                   //
	mov	r0,#_misses_until_failure
	mov	a,#0x01
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$118$1$1 ==.
;	apps/ydrip/ydrip.c:118: static int8 fOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
	mov	r0,#_fOffset
	mov	a,#0xCE
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0001)
	mov	a,#0xD5
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0002)
	mov	a,#0xE6
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0003)
	mov	a,#0xE5
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$120$1$1 ==.
;	apps/ydrip/ydrip.c:120: static uint8 nChannels[NUM_CHANNELS] = { 0, 100, 199, 209 };
	mov	r0,#_nChannels
	clr	a
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0001)
	mov	a,#0x64
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0002)
	mov	a,#0xC7
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0003)
	mov	a,#0xD1
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$121$1$1 ==.
;	apps/ydrip/ydrip.c:121: static uint32 waitTimes[NUM_CHANNELS] = { 13500, 500, 500, 500 };
	mov	r0,#_waitTimes
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x0004)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x0008)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x000c)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$123$1$1 ==.
;	apps/ydrip/ydrip.c:123: static uint32 delayedWaitTimes[NUM_CHANNELS] = { 0, 700, 700, 700 };
	mov	r0,#_delayedWaitTimes
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x0004)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x0008)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x000c)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$124$1$1 ==.
;	apps/ydrip/ydrip.c:124: static uint32 catch_offsets[NUM_CHANNELS] = { 0, 0, 0, 0 };
	mov	r0,#_catch_offsets
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x0004)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x0008)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x000c)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$125$1$1 ==.
;	apps/ydrip/ydrip.c:125: static uint8 last_catch_channel = 0;
	mov	r0,#_last_catch_channel
	clr	a
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$133$1$1 ==.
;	apps/ydrip/ydrip.c:133: volatile uint8 sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	G$main$0$0 ==.
	C$ydrip.c$135$1$1 ==.
;	apps/ydrip/ydrip.c:135: uint8 intMaxStrLen = 80;
	mov	r0,#_intMaxStrLen
	mov	a,#0x50
	movx	@r0,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sleepInit'
;------------------------------------------------------------
	G$sleepInit$0$0 ==.
	C$ydrip.c$161$0$0 ==.
;	apps/ydrip/ydrip.c:161: void sleepInit(void) {
;	-----------------------------------------
;	 function sleepInit
;	-----------------------------------------
_sleepInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$ydrip.c$162$1$1 ==.
;	apps/ydrip/ydrip.c:162: WORIRQ  |= (1<<4);
	orl	_WORIRQ,#0x10
	C$ydrip.c$163$1$1 ==.
	XG$sleepInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ST'
;------------------------------------------------------------
	G$ISR_ST$0$0 ==.
	C$ydrip.c$165$1$1 ==.
;	apps/ydrip/ydrip.c:165: ISR(ST, 1) {
;	-----------------------------------------
;	 function ISR_ST
;	-----------------------------------------
_ISR_ST:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	C$ydrip.c$166$1$1 ==.
;	apps/ydrip/ydrip.c:166: IRCON &= 0x7F;
	anl	_IRCON,#0x7F
	C$ydrip.c$167$1$1 ==.
;	apps/ydrip/ydrip.c:167: WORIRQ &= 0xFE;
	anl	_WORIRQ,#0xFE
	C$ydrip.c$168$1$1 ==.
;	apps/ydrip/ydrip.c:168: SLEEP &= 0xFC;
	anl	_SLEEP,#0xFC
	C$ydrip.c$169$1$1 ==.
	XG$ISR_ST$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'switchToRCOSC'
;------------------------------------------------------------
	G$switchToRCOSC$0$0 ==.
	C$ydrip.c$171$1$1 ==.
;	apps/ydrip/ydrip.c:171: void switchToRCOSC(void) {
;	-----------------------------------------
;	 function switchToRCOSC
;	-----------------------------------------
_switchToRCOSC:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$ydrip.c$172$1$1 ==.
;	apps/ydrip/ydrip.c:172: SLEEP &= ~0x04;
	mov	r7,_SLEEP
	anl	ar7,#0xFB
	mov	_SLEEP,r7
	C$ydrip.c$173$1$1 ==.
;	apps/ydrip/ydrip.c:173: while ( ! (SLEEP & 0x20) );
00101$:
	mov	a,_SLEEP
	jnb	acc.5,00101$
	C$ydrip.c$174$1$1 ==.
;	apps/ydrip/ydrip.c:174: CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
	mov	r7,_CLKCON
	mov	a,#0xF8
	anl	a,r7
	orl	a,#0x41
	mov	r7,a
	mov	_CLKCON,r7
	C$ydrip.c$175$1$1 ==.
;	apps/ydrip/ydrip.c:175: while ( !(CLKCON & 0x40) );
00104$:
	mov	a,_CLKCON
	jnb	acc.6,00104$
	C$ydrip.c$176$1$1 ==.
;	apps/ydrip/ydrip.c:176: SLEEP |= 0x04;
	orl	_SLEEP,#0x04
	C$ydrip.c$177$1$1 ==.
	XG$switchToRCOSC$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartEnable'
;------------------------------------------------------------
	G$uartEnable$0$0 ==.
	C$ydrip.c$179$1$1 ==.
;	apps/ydrip/ydrip.c:179: void uartEnable() {
;	-----------------------------------------
;	 function uartEnable
;	-----------------------------------------
_uartEnable:
	C$ydrip.c$181$1$1 ==.
;	apps/ydrip/ydrip.c:181: U1UCR &= ~0x40; //CTS/RTS Off
	mov	r7,_U1UCR
	anl	ar7,#0xBF
	mov	_U1UCR,r7
	C$ydrip.c$182$1$1 ==.
;	apps/ydrip/ydrip.c:182: U1CSR |= 0x40;
	orl	_U1CSR,#0x40
	C$ydrip.c$183$1$1 ==.
;	apps/ydrip/ydrip.c:183: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$184$1$1 ==.
	XG$uartEnable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartDisable'
;------------------------------------------------------------
	G$uartDisable$0$0 ==.
	C$ydrip.c$186$1$1 ==.
;	apps/ydrip/ydrip.c:186: void uartDisable() {
;	-----------------------------------------
;	 function uartDisable
;	-----------------------------------------
_uartDisable:
	C$ydrip.c$187$1$1 ==.
;	apps/ydrip/ydrip.c:187: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$188$1$1 ==.
;	apps/ydrip/ydrip.c:188: U1UCR &= ~0x40; //CTS/RTS Off
	mov	r7,_U1UCR
	anl	ar7,#0xBF
	mov	_U1UCR,r7
	C$ydrip.c$189$1$1 ==.
;	apps/ydrip/ydrip.c:189: U1CSR &= ~0x40; // Receiver disable
	mov	r7,_U1CSR
	anl	ar7,#0xBF
	mov	_U1CSR,r7
	C$ydrip.c$190$1$1 ==.
	XG$uartDisable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_yellow_led'
;------------------------------------------------------------
	G$blink_yellow_led$0$0 ==.
	C$ydrip.c$192$1$1 ==.
;	apps/ydrip/ydrip.c:192: void blink_yellow_led() {
;	-----------------------------------------
;	 function blink_yellow_led
;	-----------------------------------------
_blink_yellow_led:
	C$ydrip.c$193$1$1 ==.
;	apps/ydrip/ydrip.c:193: if(status_lights) {
	jnb	_status_lights,00103$
	C$ydrip.c$194$3$3 ==.
;	apps/ydrip/ydrip.c:194: LED_YELLOW(((getMs()/250) % 2));//Blink quarter seconds
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0xFA
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	jnb	acc.0,00105$
	orl	_P2DIR,#0x04
	sjmp	00103$
00105$:
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
00103$:
	C$ydrip.c$196$3$1 ==.
	XG$blink_yellow_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_red_led'
;------------------------------------------------------------
	G$blink_red_led$0$0 ==.
	C$ydrip.c$198$3$1 ==.
;	apps/ydrip/ydrip.c:198: void blink_red_led() {
;	-----------------------------------------
;	 function blink_red_led
;	-----------------------------------------
_blink_red_led:
	C$ydrip.c$199$1$1 ==.
;	apps/ydrip/ydrip.c:199: if(status_lights) {
	jnb	_status_lights,00103$
	C$ydrip.c$200$3$3 ==.
;	apps/ydrip/ydrip.c:200: LED_RED(((getMs()/500) % 2));//Blink half seconds
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	jnb	acc.0,00105$
	orl	_P2DIR,#0x02
	sjmp	00103$
00105$:
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
00103$:
	C$ydrip.c$202$3$1 ==.
	XG$blink_red_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getPacketPassedChecksum'
;------------------------------------------------------------
	G$getPacketPassedChecksum$0$0 ==.
	C$ydrip.c$204$3$1 ==.
;	apps/ydrip/ydrip.c:204: uint8 getPacketPassedChecksum(Dexcom_packet* p) {
;	-----------------------------------------
;	 function getPacketPassedChecksum
;	-----------------------------------------
_getPacketPassedChecksum:
	mov	r6,dpl
	mov	r7,dph
	C$ydrip.c$205$1$1 ==.
;	apps/ydrip/ydrip.c:205: return ((p->LQI & 0x80)==0x80) ? 1:0;
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x80
	cjne	r7,#0x80,00103$
	mov	r7,#0x01
	sjmp	00104$
00103$:
	mov	r7,#0x00
00104$:
	mov	dpl,r7
	C$ydrip.c$206$1$1 ==.
	XG$getPacketPassedChecksum$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_reverse_byte'
;------------------------------------------------------------
;bRet                      Allocated with name '_bit_reverse_byte_bRet_1_1'
;------------------------------------------------------------
	G$bit_reverse_byte$0$0 ==.
	C$ydrip.c$208$1$1 ==.
;	apps/ydrip/ydrip.c:208: uint8 bit_reverse_byte(uint8 in) {
;	-----------------------------------------
;	 function bit_reverse_byte
;	-----------------------------------------
_bit_reverse_byte:
	mov	r7,dpl
	C$ydrip.c$209$1$1 ==.
;	apps/ydrip/ydrip.c:209: uint8 XDATA bRet = 0;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	clr	a
	movx	@dptr,a
	C$ydrip.c$210$1$1 ==.
;	apps/ydrip/ydrip.c:210: if(in & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
	C$ydrip.c$211$1$1 ==.
;	apps/ydrip/ydrip.c:211: bRet |= 0x80;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	mov	a,#0x80
	movx	@dptr,a
00102$:
	C$ydrip.c$212$1$1 ==.
;	apps/ydrip/ydrip.c:212: if(in & 0x02)
	mov	a,r7
	jnb	acc.1,00104$
	C$ydrip.c$213$1$1 ==.
;	apps/ydrip/ydrip.c:213: bRet |= 0x40;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x40
	movx	@dptr,a
00104$:
	C$ydrip.c$214$1$1 ==.
;	apps/ydrip/ydrip.c:214: if(in & 0x04)
	mov	a,r7
	jnb	acc.2,00106$
	C$ydrip.c$215$1$1 ==.
;	apps/ydrip/ydrip.c:215: bRet |= 0x20;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x20
	movx	@dptr,a
00106$:
	C$ydrip.c$216$1$1 ==.
;	apps/ydrip/ydrip.c:216: if(in & 0x08)
	mov	a,r7
	jnb	acc.3,00108$
	C$ydrip.c$217$1$1 ==.
;	apps/ydrip/ydrip.c:217: bRet |= 0x10;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x10
	movx	@dptr,a
00108$:
	C$ydrip.c$218$1$1 ==.
;	apps/ydrip/ydrip.c:218: if(in & 0x10)
	mov	a,r7
	jnb	acc.4,00110$
	C$ydrip.c$219$1$1 ==.
;	apps/ydrip/ydrip.c:219: bRet |= 0x08;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x08
	movx	@dptr,a
00110$:
	C$ydrip.c$220$1$1 ==.
;	apps/ydrip/ydrip.c:220: if(in & 0x20)
	mov	a,r7
	jnb	acc.5,00112$
	C$ydrip.c$221$1$1 ==.
;	apps/ydrip/ydrip.c:221: bRet |= 0x04;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x04
	movx	@dptr,a
00112$:
	C$ydrip.c$222$1$1 ==.
;	apps/ydrip/ydrip.c:222: if(in & 0x40)
	mov	a,r7
	jnb	acc.6,00114$
	C$ydrip.c$223$1$1 ==.
;	apps/ydrip/ydrip.c:223: bRet |= 0x02;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x02
	movx	@dptr,a
00114$:
	C$ydrip.c$224$1$1 ==.
;	apps/ydrip/ydrip.c:224: if(in & 0x80)
	mov	a,r7
	jnb	acc.7,00116$
	C$ydrip.c$225$1$1 ==.
;	apps/ydrip/ydrip.c:225: bRet |= 0x01;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
00116$:
	C$ydrip.c$226$1$1 ==.
;	apps/ydrip/ydrip.c:226: return bRet;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	C$ydrip.c$227$1$1 ==.
	XG$bit_reverse_byte$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'min8'
;------------------------------------------------------------
	G$min8$0$0 ==.
	C$ydrip.c$229$1$1 ==.
;	apps/ydrip/ydrip.c:229: uint8 min8(uint8 a, uint8 b) {
;	-----------------------------------------
;	 function min8
;	-----------------------------------------
_min8:
	mov	r7,dpl
	C$ydrip.c$230$1$1 ==.
;	apps/ydrip/ydrip.c:230: if(a < b) return a;
	mov	r0,#_min8_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00102$
	mov	dpl,r7
	sjmp	00103$
00102$:
	C$ydrip.c$231$1$1 ==.
;	apps/ydrip/ydrip.c:231: return b;
	mov	r0,#_min8_PARM_2
	movx	a,@r0
	mov	dpl,a
00103$:
	C$ydrip.c$232$1$1 ==.
	XG$min8$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_reverse_bytes'
;------------------------------------------------------------
;i                         Allocated with name '_bit_reverse_bytes_i_1_1'
;------------------------------------------------------------
	G$bit_reverse_bytes$0$0 ==.
	C$ydrip.c$234$1$1 ==.
;	apps/ydrip/ydrip.c:234: void bit_reverse_bytes(uint8* buf, uint8 nLen) {
;	-----------------------------------------
;	 function bit_reverse_bytes
;	-----------------------------------------
_bit_reverse_bytes:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_bit_reverse_bytes_buf_1_1
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$ydrip.c$235$1$1 ==.
;	apps/ydrip/ydrip.c:235: uint8 XDATA i = 0;
	mov	r4,#0x00
00101$:
	C$ydrip.c$236$1$1 ==.
;	apps/ydrip/ydrip.c:236: for(; i < nLen; i++) {
	mov	r0,#_bit_reverse_bytes_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r4
	subb	a,b
	jnc	00105$
	C$ydrip.c$237$2$2 ==.
;	apps/ydrip/ydrip.c:237: buf[i] = bit_reverse_byte(buf[i]);
	mov	r0,#_bit_reverse_bytes_buf_1_1
	movx	a,@r0
	add	a,r4
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_bit_reverse_byte
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	C$ydrip.c$236$1$1 ==.
;	apps/ydrip/ydrip.c:236: for(; i < nLen; i++) {
	inc	r4
	sjmp	00101$
00105$:
	C$ydrip.c$239$1$1 ==.
	XG$bit_reverse_bytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dex_num_decoder'
;------------------------------------------------------------
;usReversed                Allocated with name '_dex_num_decoder_usReversed_1_1'
;usExponent                Allocated with name '_dex_num_decoder_usExponent_1_1'
;usMantissa                Allocated with name '_dex_num_decoder_usMantissa_1_1'
;------------------------------------------------------------
	G$dex_num_decoder$0$0 ==.
	C$ydrip.c$241$1$1 ==.
;	apps/ydrip/ydrip.c:241: uint32 dex_num_decoder(uint16 usShortFloat) {
;	-----------------------------------------
;	 function dex_num_decoder
;	-----------------------------------------
_dex_num_decoder:
	mov	r6,dpl
	mov	r7,dph
	C$ydrip.c$242$1$1 ==.
;	apps/ydrip/ydrip.c:242: uint16 XDATA usReversed = usShortFloat;
	mov	dptr,#_dex_num_decoder_usReversed_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$245$1$1 ==.
;	apps/ydrip/ydrip.c:245: bit_reverse_bytes((uint8*)&usReversed, 2);
	mov	r6,#_dex_num_decoder_usReversed_1_1
	mov	r7,#(_dex_num_decoder_usReversed_1_1 >> 8)
	mov	r5,#0x00
	mov	r0,#_bit_reverse_bytes_PARM_2
	mov	a,#0x02
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_bit_reverse_bytes
	C$ydrip.c$246$1$1 ==.
;	apps/ydrip/ydrip.c:246: usExponent = ((usReversed & 0xE000) >> 13);
	mov	dptr,#_dex_num_decoder_usReversed_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xE0
	anl	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	mov	r4,a
	C$ydrip.c$247$1$1 ==.
;	apps/ydrip/ydrip.c:247: usMantissa = (usReversed & 0x1FFF);
	anl	ar7,#0x1F
	mov	r5,#0x00
	mov	r3,#0x00
	C$ydrip.c$248$1$1 ==.
;	apps/ydrip/ydrip.c:248: return usMantissa << usExponent;
	mov	b,r4
	inc	b
	sjmp	00104$
00103$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r3
	rlc	a
	mov	r3,a
00104$:
	djnz	b,00103$
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	C$ydrip.c$249$1$1 ==.
	XG$dex_num_decoder$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dexcom_src_to_ascii'
;------------------------------------------------------------
;addr                      Allocated with name '_dexcom_src_to_ascii_PARM_2'
;src                       Allocated with name '_dexcom_src_to_ascii_src_1_1'
;sloc0                     Allocated with name '_dexcom_src_to_ascii_sloc0_1_0'
;------------------------------------------------------------
	G$dexcom_src_to_ascii$0$0 ==.
	C$ydrip.c$256$1$1 ==.
;	apps/ydrip/ydrip.c:256: void dexcom_src_to_ascii(XDATA uint32 src, XDATA char addr[6]) {
;	-----------------------------------------
;	 function dexcom_src_to_ascii
;	-----------------------------------------
_dexcom_src_to_ascii:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_dexcom_src_to_ascii_src_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	C$ydrip.c$257$1$1 ==.
;	apps/ydrip/ydrip.c:257: addr[0] = SrcNameTable[(src >> 20) & 0x1F];
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dexcom_src_to_ascii_src_1_1
	movx	a,@dptr
	mov	_dexcom_src_to_ascii_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 3),a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0F
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0F
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$ydrip.c$258$1$1 ==.
;	apps/ydrip/ydrip.c:258: addr[1] = SrcNameTable[(src >> 15) & 0x1F];
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	add	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	orl	a,r1
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rl	a
	anl	a,#0x01
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$ydrip.c$259$1$1 ==.
;	apps/ydrip/ydrip.c:259: addr[2] = SrcNameTable[(src >> 10) & 0x1F];
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0xC0
	orl	a,r1
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0x3F
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$ydrip.c$260$1$1 ==.
;	apps/ydrip/ydrip.c:260: addr[3] = SrcNameTable[(src >> 5) & 0x1F];
	mov	a,#0x03
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	swap	a
	rr	a
	xch	a,r0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r0
	xch	a,r0
	anl	a,#0x07
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0xF8
	orl	a,r1
	mov	r2,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	swap	a
	rr	a
	xch	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r2
	xch	a,r2
	anl	a,#0x07
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$ydrip.c$261$1$1 ==.
;	apps/ydrip/ydrip.c:261: addr[4] = SrcNameTable[(src >> 0) & 0x1F];
	mov	a,#0x04
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$ydrip.c$262$1$1 ==.
;	apps/ydrip/ydrip.c:262: addr[5] = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	C$ydrip.c$263$1$1 ==.
	XG$dexcom_src_to_ascii$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearRxErrors'
;------------------------------------------------------------
	G$clearRxErrors$0$0 ==.
	C$ydrip.c$265$1$1 ==.
;	apps/ydrip/ydrip.c:265: void clearRxErrors() {	
;	-----------------------------------------
;	 function clearRxErrors
;	-----------------------------------------
_clearRxErrors:
	C$ydrip.c$266$1$1 ==.
;	apps/ydrip/ydrip.c:266: if (uart1RxBufferFullOccurred)
	C$ydrip.c$267$2$2 ==.
;	apps/ydrip/ydrip.c:267: {   uart1RxBufferFullOccurred = 0;							// Clear Buffer Full Errors
	jbc	_uart1RxBufferFullOccurred,00112$
	sjmp	00102$
00112$:
	C$ydrip.c$268$3$3 ==.
;	apps/ydrip/ydrip.c:268: LED_RED(1);												// Error Indicator
	orl	_P2DIR,#0x02
	C$ydrip.c$269$3$4 ==.
;	apps/ydrip/ydrip.c:269: LED_YELLOW(1);
	orl	_P2DIR,#0x04
00102$:
	C$ydrip.c$271$1$1 ==.
;	apps/ydrip/ydrip.c:271: if (uart1RxParityErrorOccurred)
	C$ydrip.c$272$2$5 ==.
;	apps/ydrip/ydrip.c:272: {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
	jbc	_uart1RxParityErrorOccurred,00113$
	sjmp	00104$
00113$:
	C$ydrip.c$273$3$6 ==.
;	apps/ydrip/ydrip.c:273: LED_RED(1);												// Error Indicator
	orl	_P2DIR,#0x02
	C$ydrip.c$274$3$7 ==.
;	apps/ydrip/ydrip.c:274: LED_YELLOW(1);
	orl	_P2DIR,#0x04
00104$:
	C$ydrip.c$276$1$1 ==.
;	apps/ydrip/ydrip.c:276: if (uart1RxFramingErrorOccurred)
	C$ydrip.c$277$2$8 ==.
;	apps/ydrip/ydrip.c:277: {   uart1RxFramingErrorOccurred = 0;
	jbc	_uart1RxFramingErrorOccurred,00114$
	sjmp	00106$
00114$:
	C$ydrip.c$278$3$9 ==.
;	apps/ydrip/ydrip.c:278: LED_RED(1);												// Put the red LED on to show there was an error
	orl	_P2DIR,#0x02
	C$ydrip.c$279$3$10 ==.
;	apps/ydrip/ydrip.c:279: LED_YELLOW(1);
	orl	_P2DIR,#0x04
	C$ydrip.c$280$2$8 ==.
;	apps/ydrip/ydrip.c:280: uartDisable();
	lcall	_uartDisable
	C$ydrip.c$282$2$8 ==.
;	apps/ydrip/ydrip.c:282: delayMs(250);											// Crude and will slow us down but we can take the small hit
	mov	dptr,#0x00FA
	lcall	_delayMs
	C$ydrip.c$284$2$8 ==.
;	apps/ydrip/ydrip.c:284: uartEnable();											// It would be nice to check the uart status here before we switch it on again
	lcall	_uartEnable
00106$:
	C$ydrip.c$286$2$11 ==.
;	apps/ydrip/ydrip.c:286: LED_RED(0);												// Error Indicator
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$ydrip.c$287$2$12 ==.
;	apps/ydrip/ydrip.c:287: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$ydrip.c$288$2$12 ==.
	XG$clearRxErrors$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'doServices'
;------------------------------------------------------------
	G$doServices$0$0 ==.
	C$ydrip.c$290$2$12 ==.
;	apps/ydrip/ydrip.c:290: void doServices() {
;	-----------------------------------------
;	 function doServices
;	-----------------------------------------
_doServices:
	C$ydrip.c$291$1$1 ==.
;	apps/ydrip/ydrip.c:291: boardService();
	lcall	_boardService
	C$ydrip.c$292$1$1 ==.
;	apps/ydrip/ydrip.c:292: if(usbPowerPresent()) {
	lcall	_usbPowerPresent
	jnc	00103$
	C$ydrip.c$293$2$2 ==.
;	apps/ydrip/ydrip.c:293: usbComService();
	lcall	_usbComService
	C$ydrip.c$294$2$2 ==.
;	apps/ydrip/ydrip.c:294: usbShowStatusWithGreenLed();
	lcall	_usbShowStatusWithGreenLed
00103$:
	C$ydrip.c$297$2$1 ==.
	XG$doServices$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initUart1'
;------------------------------------------------------------
	G$initUart1$0$0 ==.
	C$ydrip.c$299$2$1 ==.
;	apps/ydrip/ydrip.c:299: void initUart1() {
;	-----------------------------------------
;	 function initUart1
;	-----------------------------------------
_initUart1:
	C$ydrip.c$300$1$1 ==.
;	apps/ydrip/ydrip.c:300: uart1Init();
	lcall	_uart1Init
	C$ydrip.c$301$1$1 ==.
;	apps/ydrip/ydrip.c:301: uart1SetBaudRate(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart1SetBaudRate
	C$ydrip.c$302$1$1 ==.
	XG$initUart1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getSrcValue'
;------------------------------------------------------------
;srcVal                    Allocated with name '_getSrcValue_srcVal_1_1'
;i                         Allocated with name '_getSrcValue_i_1_1'
;------------------------------------------------------------
	G$getSrcValue$0$0 ==.
	C$ydrip.c$304$1$1 ==.
;	apps/ydrip/ydrip.c:304: uint32 getSrcValue(XDATA char srcVal) {
;	-----------------------------------------
;	 function getSrcValue
;	-----------------------------------------
_getSrcValue:
	mov	a,dpl
	C$ydrip.c$306$2$2 ==.
;	apps/ydrip/ydrip.c:306: for(i = 0; i < 32; i++) {
	mov	dptr,#_getSrcValue_srcVal_1_1
	movx	@dptr,a
	mov	r7,a
	mov	r6,#0x00
00103$:
	cjne	r6,#0x20,00113$
00113$:
	jnc	00106$
	C$ydrip.c$307$2$2 ==.
;	apps/ydrip/ydrip.c:307: if (SrcNameTable[i]==srcVal) break;
	mov	a,r6
	add	a,#_SrcNameTable
	mov	dpl,a
	clr	a
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	a,ar7,00115$
	sjmp	00106$
00115$:
	C$ydrip.c$306$1$1 ==.
;	apps/ydrip/ydrip.c:306: for(i = 0; i < 32; i++) {
	inc	r6
	sjmp	00103$
00106$:
	C$ydrip.c$309$1$1 ==.
;	apps/ydrip/ydrip.c:309: return i & 0xFF;
	mov	r7,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	C$ydrip.c$310$1$1 ==.
	XG$getSrcValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getESPString'
;------------------------------------------------------------
;uartCharacters            Allocated with name '_getESPString_uartCharacters_1_1'
;i                         Allocated with name '_getESPString_i_1_1'
;stop                      Allocated with name '_getESPString_stop_1_1'
;now                       Allocated with name '_getESPString_now_1_1'
;------------------------------------------------------------
	G$getESPString$0$0 ==.
	C$ydrip.c$312$1$1 ==.
;	apps/ydrip/ydrip.c:312: XDATA char * getESPString() {					// Read the uart input buffer once character at a time
;	-----------------------------------------
;	 function getESPString
;	-----------------------------------------
_getESPString:
	C$ydrip.c$317$1$1 ==.
;	apps/ydrip/ydrip.c:317: i=0;
	mov	dptr,#_getESPString_i_1_1
	clr	a
	movx	@dptr,a
	C$ydrip.c$320$1$1 ==.
;	apps/ydrip/ydrip.c:320: stop = (getMs() + (defaultWaitTime * 2));
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#_getESPString_stop_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$321$1$1 ==.
;	apps/ydrip/ydrip.c:321: now  = getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_getESPString_now_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$323$1$1 ==.
;	apps/ydrip/ydrip.c:323: while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
	mov	dptr,#_getESPString_stop_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00102$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_uart1RxAvailable
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00126$
	mov	dptr,#_getESPString_now_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
	C$ydrip.c$324$2$2 ==.
;	apps/ydrip/ydrip.c:324: now  = getMs();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getMs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	dptr,#_getESPString_now_1_1
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$ydrip.c$325$2$2 ==.
;	apps/ydrip/ydrip.c:325: delayMs(10);
	mov	dptr,#0x000A
	lcall	_delayMs
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ydrip.c$328$1$1 ==.
;	apps/ydrip/ydrip.c:328: while (uart1RxAvailable() && i < 80) {
	sjmp	00102$
00126$:
00114$:
	lcall	_uart1RxAvailable
	mov	a,dpl
	jz	00116$
	mov	dptr,#_getESPString_i_1_1
	movx	a,@dptr
	mov	r7,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xd0
	jnc	00116$
	C$ydrip.c$329$2$3 ==.
;	apps/ydrip/ydrip.c:329: uartCharacters[i] = uart1RxReceiveByte();
	mov	a,r7
	add	a,#_getESPString_uartCharacters_1_1
	mov	r7,a
	clr	a
	addc	a,#(_getESPString_uartCharacters_1_1 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	lcall	_uart1RxReceiveByte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
	C$ydrip.c$331$2$3 ==.
;	apps/ydrip/ydrip.c:331: if (usbPowerPresent()) {
	lcall	_usbPowerPresent
	jnc	00109$
	C$ydrip.c$332$3$4 ==.
;	apps/ydrip/ydrip.c:332: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
00105$:
	lcall	_usbComTxAvailable
	mov	a,dpl
	jnz	00107$
	C$ydrip.c$333$4$5 ==.
;	apps/ydrip/ydrip.c:333: doServices();
	lcall	_doServices
	sjmp	00105$
00107$:
	C$ydrip.c$335$3$4 ==.
;	apps/ydrip/ydrip.c:335: usbComTxSendByte(uartCharacters[i]);
	mov	dptr,#_getESPString_i_1_1
	movx	a,@dptr
	add	a,#_getESPString_uartCharacters_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getESPString_uartCharacters_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	lcall	_usbComTxSendByte
00109$:
	C$ydrip.c$337$2$3 ==.
;	apps/ydrip/ydrip.c:337: delayMs(10);
	mov	dptr,#0x000A
	lcall	_delayMs
	C$ydrip.c$338$2$3 ==.
;	apps/ydrip/ydrip.c:338: i++;
	mov	dptr,#_getESPString_i_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$ydrip.c$339$2$3 ==.
;	apps/ydrip/ydrip.c:339: if (uart1RxAvailable() && i == 80) i=0;					// wrap around for another line if more text (very crude)
	lcall	_uart1RxAvailable
	mov	a,dpl
	jz	00114$
	mov	dptr,#_getESPString_i_1_1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x50,00114$
	mov	dptr,#_getESPString_i_1_1
	clr	a
	movx	@dptr,a
	sjmp	00114$
00116$:
	C$ydrip.c$341$1$1 ==.
;	apps/ydrip/ydrip.c:341: uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
	mov	dptr,#_getESPString_i_1_1
	movx	a,@dptr
	add	a,#_getESPString_uartCharacters_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getESPString_uartCharacters_1_1 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$ydrip.c$342$1$1 ==.
;	apps/ydrip/ydrip.c:342: return uartCharacters;
	mov	dptr,#_getESPString_uartCharacters_1_1
	C$ydrip.c$343$1$1 ==.
	XG$getESPString$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendAT'
;------------------------------------------------------------
;atString                  Allocated with name '_sendAT_atString_1_1'
;ATresponse                Allocated with name '_sendAT_ATresponse_1_1'
;------------------------------------------------------------
	G$sendAT$0$0 ==.
	C$ydrip.c$345$1$1 ==.
;	apps/ydrip/ydrip.c:345: void sendAT(XDATA char atString[40]) {
;	-----------------------------------------
;	 function sendAT
;	-----------------------------------------
_sendAT:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_sendAT_atString_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$346$1$1 ==.
;	apps/ydrip/ydrip.c:346: XDATA char ATresponse[80]={0};
	mov	dptr,#_sendAT_ATresponse_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004f)
	movx	@dptr,a
	C$ydrip.c$347$1$1 ==.
;	apps/ydrip/ydrip.c:347: uartEnable();
	lcall	_uartEnable
	C$ydrip.c$348$1$1 ==.
;	apps/ydrip/ydrip.c:348: printf(atString);
	mov	dptr,#_sendAT_atString_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar5
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$349$1$1 ==.
;	apps/ydrip/ydrip.c:349: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$350$1$1 ==.
	XG$sendAT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableESP'
;------------------------------------------------------------
;c                         Allocated with name '_enableESP_c_1_1'
;nofile                    Allocated with name '_enableESP_nofile_1_1'
;clen                      Allocated with name '_enableESP_clen_1_1'
;------------------------------------------------------------
	G$enableESP$0$0 ==.
	C$ydrip.c$352$1$1 ==.
;	apps/ydrip/ydrip.c:352: void enableESP() {
;	-----------------------------------------
;	 function enableESP
;	-----------------------------------------
_enableESP:
	C$ydrip.c$353$1$1 ==.
;	apps/ydrip/ydrip.c:353: XDATA char c[80] = {0};
	mov	dptr,#_enableESP_c_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_enableESP_c_1_1 + 0x004f)
	movx	@dptr,a
	C$ydrip.c$355$1$1 ==.
;	apps/ydrip/ydrip.c:355: XDATA char nofile[] = "cannot";
	mov	dptr,#_enableESP_nofile_1_1
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0001)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0002)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0003)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0004)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0005)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_enableESP_nofile_1_1 + 0x0006)
	clr	a
	movx	@dptr,a
	C$ydrip.c$359$1$1 ==.
;	apps/ydrip/ydrip.c:359: if (debug_mode) {
	jnb	_debug_mode,00102$
	C$ydrip.c$360$3$3 ==.
;	apps/ydrip/ydrip.c:360: LED_YELLOW(1);	LED_RED(1);	delayMs(1500);				// Let it do startup messages etc.
	orl	_P2DIR,#0x04
	orl	_P2DIR,#0x02
	mov	dptr,#0x05DC
	lcall	_delayMs
	C$ydrip.c$361$3$5 ==.
;	apps/ydrip/ydrip.c:361: LED_YELLOW(0);	LED_RED(0);	delayMs(1000);				// Let it do startup messages etc.
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	mov	dptr,#0x03E8
	lcall	_delayMs
	C$ydrip.c$362$3$7 ==.
;	apps/ydrip/ydrip.c:362: LED_YELLOW(1);	LED_RED(1);	delayMs(1500);				// Let it do startup messages etc.
	orl	_P2DIR,#0x04
	orl	_P2DIR,#0x02
	mov	dptr,#0x05DC
	lcall	_delayMs
00102$:
	C$ydrip.c$364$1$1 ==.
;	apps/ydrip/ydrip.c:364: setDigitalOutput(10,HIGH);									// Set pin high in order to reset the ESP
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x0A
	lcall	_setDigitalOutput
	C$ydrip.c$365$1$1 ==.
;	apps/ydrip/ydrip.c:365: boardService();
	lcall	_boardService
	C$ydrip.c$366$1$1 ==.
;	apps/ydrip/ydrip.c:366: delayMs(500);												// Wait .2 seconds
	mov	dptr,#0x01F4
	lcall	_delayMs
	C$ydrip.c$367$1$1 ==.
;	apps/ydrip/ydrip.c:367: setDigitalInput(10,HIGH_IMPEDANCE);							// Have to release it afterwards to let it start functioning
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x0A
	lcall	_setDigitalInput
	C$ydrip.c$368$1$1 ==.
;	apps/ydrip/ydrip.c:368: boardService();
	lcall	_boardService
	C$ydrip.c$370$2$9 ==.
;	apps/ydrip/ydrip.c:370: LED_YELLOW(0);	delayMs(3000);								// Let it do startup messages etc.
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	mov	dptr,#0x0BB8
	lcall	_delayMs
	C$ydrip.c$371$2$10 ==.
;	apps/ydrip/ydrip.c:371: LED_RED(0);    uartEnable();								// Enable the serial connection
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	lcall	_uartEnable
	C$ydrip.c$373$1$1 ==.
;	apps/ydrip/ydrip.c:373: strcpy(c, (getESPString())); // Clear buffer
	lcall	_getESPString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_enableESP_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$374$1$1 ==.
;	apps/ydrip/ydrip.c:374: printf("dofile(\"init.lua\")\r\n");; delayMs(5000);
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#0x1388
	lcall	_delayMs
	C$ydrip.c$375$1$1 ==.
;	apps/ydrip/ydrip.c:375: strcpy(c, (getESPString())); // Clear buffer
	lcall	_getESPString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_enableESP_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$376$1$1 ==.
;	apps/ydrip/ydrip.c:376: clen = strlen(c);
	mov	dptr,#_enableESP_c_1_1
	mov	b,#0x00
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_enableESP_clen_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$377$1$1 ==.
;	apps/ydrip/ydrip.c:377: point = strstr(c,nofile);									// Find the word "cannot".  The variable "point" will be null if that text if init.lua runs OK.
	mov	r0,#_strstr_PARM_2
	mov	a,#_enableESP_nofile_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_enableESP_nofile_1_1 >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_enableESP_c_1_1
	mov	b,#0x00
	lcall	_strstr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$ydrip.c$379$1$1 ==.
;	apps/ydrip/ydrip.c:379: if (point == NULL) {										// This check doesn't seem to work.  I might need to check the pointer contents
	mov	a,r5
	orl	a,r6
	jnz	00104$
	C$ydrip.c$380$2$11 ==.
;	apps/ydrip/ydrip.c:380: printf("-- No need to write out .lua files as they seem to already exist --\r\n");; delayMs(defaultWaitTime);
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	ljmp	00106$
00104$:
	C$ydrip.c$384$2$12 ==.
;	apps/ydrip/ydrip.c:384: printf("-- Writing out .lua files as they cannot be found --\r\n"); delayMs(defaultWaitTime);
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$385$2$12 ==.
;	apps/ydrip/ydrip.c:385: printf("-- Length is %d\r\n",clen); delayMs(defaultWaitTime);
	mov	dptr,#_enableESP_clen_1_1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$387$2$12 ==.
;	apps/ydrip/ydrip.c:387: printf("file.open(\"init.lua\", \"w\")\r\n");; delayMs(defaultWaitTime)	; delayMs(defaultWaitTime);
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$388$2$12 ==.
;	apps/ydrip/ydrip.c:388: printf("file.writeline([[gpio.mode(3, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$389$2$12 ==.
;	apps/ydrip/ydrip.c:389: printf("file.writeline([[gpio.write(3, gpio.LOW)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$390$2$12 ==.
;	apps/ydrip/ydrip.c:390: printf("file.writeline([[gpio.mode(5, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$391$2$12 ==.
;	apps/ydrip/ydrip.c:391: printf("file.writeline([[gpio.write(5, gpio.LOW)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$392$2$12 ==.
;	apps/ydrip/ydrip.c:392: printf("file.writeline([[gpio.mode(4, gpio.OUTPUT)]])\r\n")				; delayMs(defaultWaitTime);	delayMs(defaultWaitTime);
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$393$2$12 ==.
;	apps/ydrip/ydrip.c:393: printf("file.close()\r\n")												; delayMs(defaultWaitTime);
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$396$2$12 ==.
;	apps/ydrip/ydrip.c:396: printf("file.remove('googletime.lua')\r\n");																		; delayMs(defaultWaitTime);
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$397$2$12 ==.
;	apps/ydrip/ydrip.c:397: printf("file.open(\"googletime.lua\", \"w\")\r\n");										; delayMs(defaultWaitTime); delayMs(defaultWaitTime);
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$399$2$12 ==.
;	apps/ydrip/ydrip.c:399: printf("file.writeline([[connG=net.createConnection(net.TCP, 0)]])\r\n")											; delayMs(defaultWaitTime);
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$400$2$12 ==.
;	apps/ydrip/ydrip.c:400: printf("file.writeline([[connG:on(\"connection\",function(conn, payload)]])\r\n")									; delayMs(defaultWaitTime);
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$402$2$12 ==.
;	apps/ydrip/ydrip.c:402: printf("file.writeline([[connG:send(\"HEAD / HTTP/1.1\\r\\nHost: google.com\\r\\n\Accept: */*\\r\\n\"..]])\r\n")	; delayMs(defaultWaitTime);
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$403$2$12 ==.
;	apps/ydrip/ydrip.c:403: printf("file.writeline([[\"User-Agent: Mozilla/4.0 (compatible; esp8266 Lua;)\\r\\n\\r\\n\") end)]])\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$405$2$12 ==.
;	apps/ydrip/ydrip.c:405: printf("file.writeline(\"connG:on(\\\"receive\\\", function(connG, payload)\")\r\n")														; delayMs(defaultWaitTime);
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$406$2$12 ==.
;	apps/ydrip/ydrip.c:406: printf("file.writeline(\"print(string.sub(payload,string.find(payload,\\\"Date:\\\")+18,string.find(payload,\\\"Date:\\\")+21)..\")\r\n")	; delayMs(defaultWaitTime);
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$407$2$12 ==.
;	apps/ydrip/ydrip.c:407: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+15,string.find(payload,\\\"Date:\\\")+16)..\")\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$408$2$12 ==.
;	apps/ydrip/ydrip.c:408: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+11,string.find(payload,\\\"Date:\\\")+12)..\")\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$409$2$12 ==.
;	apps/ydrip/ydrip.c:409: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+23,string.find(payload,\\\"Date:\\\")+24)..\")\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$410$2$12 ==.
;	apps/ydrip/ydrip.c:410: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+26,string.find(payload,\\\"Date:\\\")+27)..\")\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_23
	push	acc
	mov	a,#(__str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$411$2$12 ==.
;	apps/ydrip/ydrip.c:411: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+29,string.find(payload,\\\"Date:\\\")+30)..\")\r\n")			; delayMs(defaultWaitTime);
	mov	a,#__str_24
	push	acc
	mov	a,#(__str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$412$2$12 ==.
;	apps/ydrip/ydrip.c:412: printf("file.writeline(\"string.sub(payload,string.find(payload,\\\"Date:\\\")+14,string.find(payload,\\\"Date:\\\")+16)..\\\"\\\\r\\\\n\\\")\")\r\n")	; delayMs(defaultWaitTime);
	mov	a,#__str_25
	push	acc
	mov	a,#(__str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$415$2$12 ==.
;	apps/ydrip/ydrip.c:415: printf("file.writeline(\"connG:close()\")\r\n")																		; delayMs(defaultWaitTime);
	mov	a,#__str_26
	push	acc
	mov	a,#(__str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$416$2$12 ==.
;	apps/ydrip/ydrip.c:416: printf("file.writeline(\"end)\")\r\n")																				; delayMs(defaultWaitTime);
	mov	a,#__str_27
	push	acc
	mov	a,#(__str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$417$2$12 ==.
;	apps/ydrip/ydrip.c:417: printf("file.writeline([[connG:connect(80,'google.com')]])\r\n")													; delayMs(defaultWaitTime);	// trigger output of date
	mov	a,#__str_28
	push	acc
	mov	a,#(__str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$418$2$12 ==.
;	apps/ydrip/ydrip.c:418: printf("file.close()\r\n");																							; delayMs(defaultWaitTime);
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$420$2$12 ==.
;	apps/ydrip/ydrip.c:420: printf("print('connG ready\\r\\n')\r\n");																			; delayMs(defaultWaitTime);
	mov	a,#__str_29
	push	acc
	mov	a,#(__str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$423$2$12 ==.
;	apps/ydrip/ydrip.c:423: strcpy(c, (getESPString())); // Clear buffer
	lcall	_getESPString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_enableESP_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$424$2$12 ==.
;	apps/ydrip/ydrip.c:424: printf("dofile(\"init.lua\")\r\n");; delayMs(3000);
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#0x0BB8
	lcall	_delayMs
00106$:
	C$ydrip.c$427$1$1 ==.
	XG$enableESP$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getWifiStatus'
;------------------------------------------------------------
;i                         Allocated with name '_getWifiStatus_i_1_1'
;intStatus                 Allocated with name '_getWifiStatus_intStatus_1_1'
;c                         Allocated with name '_getWifiStatus_c_1_1'
;------------------------------------------------------------
	G$getWifiStatus$0$0 ==.
	C$ydrip.c$429$1$1 ==.
;	apps/ydrip/ydrip.c:429: XDATA int16 getWifiStatus() {						// Read responses from ESP2866 module to see if there is a Wifi Connection (status 5)
;	-----------------------------------------
;	 function getWifiStatus
;	-----------------------------------------
_getWifiStatus:
	C$ydrip.c$432$1$1 ==.
;	apps/ydrip/ydrip.c:432: XDATA char c[80] = {0};
	mov	dptr,#_getWifiStatus_c_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_getWifiStatus_c_1_1 + 0x004f)
	movx	@dptr,a
	C$ydrip.c$434$1$1 ==.
;	apps/ydrip/ydrip.c:434: c[0]=0;											// And mark string as empty
	mov	dptr,#_getWifiStatus_c_1_1
	clr	a
	movx	@dptr,a
	C$ydrip.c$435$1$1 ==.
;	apps/ydrip/ydrip.c:435: clearRxErrors();
	lcall	_clearRxErrors
	C$ydrip.c$437$1$1 ==.
;	apps/ydrip/ydrip.c:437: boardService();
	lcall	_boardService
	C$ydrip.c$438$1$1 ==.
;	apps/ydrip/ydrip.c:438: uartEnable();
	lcall	_uartEnable
	C$ydrip.c$439$1$1 ==.
;	apps/ydrip/ydrip.c:439: strcpy(c, (getESPString()));					// Clear input buffer
	lcall	_getESPString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getWifiStatus_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$441$1$1 ==.
;	apps/ydrip/ydrip.c:441: printf("print(wifi.sta.status())\r\n");	delayMs(defaultWaitTime);
	mov	a,#__str_30
	push	acc
	mov	a,#(__str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$443$2$2 ==.
;	apps/ydrip/ydrip.c:443: while (uart1RxAvailable() > 0) {
00101$:
	lcall	_uart1RxAvailable
	mov	a,dpl
	jz	00103$
	C$ydrip.c$444$2$2 ==.
;	apps/ydrip/ydrip.c:444: strcpy(c, (getESPString()));
	lcall	_getESPString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getWifiStatus_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	sjmp	00101$
00103$:
	C$ydrip.c$447$1$1 ==.
;	apps/ydrip/ydrip.c:447: i = strlen(c);
	mov	dptr,#_getWifiStatus_c_1_1
	mov	b,#0x00
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_getWifiStatus_i_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$448$1$1 ==.
;	apps/ydrip/ydrip.c:448: if  (i>5) {
	clr	c
	mov	a,#0x05
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	C$ydrip.c$449$2$3 ==.
;	apps/ydrip/ydrip.c:449: intStatus=(((c[i-5])-'0'));					// Convert character to integer.  1 connecting, 5 connected, etc.
	mov	a,r6
	add	a,#0xFB
	add	a,#_getWifiStatus_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getWifiStatus_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#0xD0
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#_getWifiStatus_intStatus_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp	00106$
00105$:
	C$ydrip.c$451$2$4 ==.
;	apps/ydrip/ydrip.c:451: intStatus=0;
	mov	dptr,#_getWifiStatus_intStatus_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
	C$ydrip.c$454$1$1 ==.
;	apps/ydrip/ydrip.c:454: return intStatus;
	mov	dptr,#_getWifiStatus_intStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$ydrip.c$455$1$1 ==.
	XG$getWifiStatus$0$0 ==.
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wifiFlash'
;------------------------------------------------------------
;i                         Allocated with name '_wifiFlash_i_1_1'
;intWifiStatus             Allocated with name '_wifiFlash_intWifiStatus_1_1'
;------------------------------------------------------------
	G$wifiFlash$0$0 ==.
	C$ydrip.c$457$1$1 ==.
;	apps/ydrip/ydrip.c:457: void wifiFlash() {	
;	-----------------------------------------
;	 function wifiFlash
;	-----------------------------------------
_wifiFlash:
	C$ydrip.c$459$1$1 ==.
;	apps/ydrip/ydrip.c:459: XDATA int16 intWifiStatus = 1;
	mov	dptr,#_wifiFlash_intWifiStatus_1_1
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	r7,#0x00
00102$:
	C$ydrip.c$460$1$1 ==.
;	apps/ydrip/ydrip.c:460: for(; i < 16 && intWifiStatus == 1; i++) {		// Loop unti status is not "Connecting" or after about 8 seconds
	cjne	r7,#0x10,00112$
00112$:
	jnc	00106$
	mov	dptr,#_wifiFlash_intWifiStatus_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x01,00106$
	cjne	r6,#0x00,00106$
	C$ydrip.c$461$2$2 ==.
;	apps/ydrip/ydrip.c:461: printf("gpio.write(4, gpio.HIGH)\r\n");		// Switch off Blue LED (Flash)
	push	ar7
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$462$2$2 ==.
;	apps/ydrip/ydrip.c:462: delayMs(250);
	mov	dptr,#0x00FA
	lcall	_delayMs
	C$ydrip.c$463$2$2 ==.
;	apps/ydrip/ydrip.c:463: printf("gpio.write(4, gpio.LOW)\r\n");		// Switch on Blue LED (Flash)
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$464$2$2 ==.
;	apps/ydrip/ydrip.c:464: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$465$2$2 ==.
;	apps/ydrip/ydrip.c:465: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	pop	ar7
	mov	dptr,#_wifiFlash_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	C$ydrip.c$460$1$1 ==.
;	apps/ydrip/ydrip.c:460: for(; i < 16 && intWifiStatus == 1; i++) {		// Loop unti status is not "Connecting" or after about 8 seconds
	inc	r7
	sjmp	00102$
00106$:
	C$ydrip.c$467$1$1 ==.
	XG$wifiFlash$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wifiConnect'
;------------------------------------------------------------
;atString                  Allocated with name '_wifiConnect_atString_1_1'
;intWifiStatus             Allocated with name '_wifiConnect_intWifiStatus_1_1'
;------------------------------------------------------------
	G$wifiConnect$0$0 ==.
	C$ydrip.c$469$1$1 ==.
;	apps/ydrip/ydrip.c:469: BIT wifiConnect() {
;	-----------------------------------------
;	 function wifiConnect
;	-----------------------------------------
_wifiConnect:
	C$ydrip.c$473$1$1 ==.
;	apps/ydrip/ydrip.c:473: uartEnable();									// Enable the serial connection
	lcall	_uartEnable
	C$ydrip.c$474$1$1 ==.
;	apps/ydrip/ydrip.c:474: delayMs(100);									// Wait for it to open
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$476$1$1 ==.
;	apps/ydrip/ydrip.c:476: printf("gpio.write(4, gpio.LOW)\r\n");	delayMs(defaultWaitTime);	// Switch on Blue LED
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$478$1$1 ==.
;	apps/ydrip/ydrip.c:478: printf("wifi.sta.connect()\r\n");	delayMs(defaultWaitTime);
	mov	a,#__str_33
	push	acc
	mov	a,#(__str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$479$1$1 ==.
;	apps/ydrip/ydrip.c:479: wifiFlash();									// Flash the blue LED until the connection status changes
	lcall	_wifiFlash
	C$ydrip.c$481$1$1 ==.
;	apps/ydrip/ydrip.c:481: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$487$1$1 ==.
;	apps/ydrip/ydrip.c:487: if (intWifiStatus != 5) {
	cjne	r6,#0x05,00122$
	cjne	r7,#0x00,00122$
	sjmp	00102$
00122$:
	C$ydrip.c$488$2$2 ==.
;	apps/ydrip/ydrip.c:488: printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$489$2$2 ==.
;	apps/ydrip/ydrip.c:489: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$490$2$2 ==.
;	apps/ydrip/ydrip.c:490: printf("wifi.sta.config(\"HomeWifiName\",\"HomeWifiKey\")  wifi.sta.connect()\r\n");	// Connect to AP1
	mov	a,#__str_34
	push	acc
	mov	a,#(__str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$491$2$2 ==.
;	apps/ydrip/ydrip.c:491: wifiFlash();
	lcall	_wifiFlash
	C$ydrip.c$492$2$2 ==.
;	apps/ydrip/ydrip.c:492: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00102$:
	C$ydrip.c$496$1$1 ==.
;	apps/ydrip/ydrip.c:496: if (intWifiStatus != 5) {
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00123$
	cjne	r7,#0x00,00123$
	sjmp	00104$
00123$:
	C$ydrip.c$497$2$3 ==.
;	apps/ydrip/ydrip.c:497: printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$498$2$3 ==.
;	apps/ydrip/ydrip.c:498: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$499$2$3 ==.
;	apps/ydrip/ydrip.c:499: printf("wifi.sta.config(\"SchoolWifiDdownstairs\",\"SchoolPassword\")  wifi.sta.connect()\r\n");	// Connect to AP1
	mov	a,#__str_35
	push	acc
	mov	a,#(__str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$500$2$3 ==.
;	apps/ydrip/ydrip.c:500: wifiFlash();
	lcall	_wifiFlash
	C$ydrip.c$501$2$3 ==.
;	apps/ydrip/ydrip.c:501: wifiFlash();							// Add in an extra round of flashing if this network can take longer to connect														// wait longer as slower netword
	lcall	_wifiFlash
	C$ydrip.c$502$2$3 ==.
;	apps/ydrip/ydrip.c:502: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00104$:
	C$ydrip.c$506$1$1 ==.
;	apps/ydrip/ydrip.c:506: if (intWifiStatus != 5) {
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00124$
	cjne	r7,#0x00,00124$
	sjmp	00106$
00124$:
	C$ydrip.c$507$2$4 ==.
;	apps/ydrip/ydrip.c:507: printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$508$2$4 ==.
;	apps/ydrip/ydrip.c:508: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$509$2$4 ==.
;	apps/ydrip/ydrip.c:509: printf("wifi.sta.config(\"SchoolUpstairs\",\"SchoolPassword\")  wifi.sta.connect()\r\n");	// Connect to AP1
	mov	a,#__str_36
	push	acc
	mov	a,#(__str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$510$2$4 ==.
;	apps/ydrip/ydrip.c:510: wifiFlash();
	lcall	_wifiFlash
	C$ydrip.c$511$2$4 ==.
;	apps/ydrip/ydrip.c:511: wifiFlash();							// Add in an extra round of flashing if this network can take longer to connect														// wait longer as slower netword
	lcall	_wifiFlash
	C$ydrip.c$512$2$4 ==.
;	apps/ydrip/ydrip.c:512: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00106$:
	C$ydrip.c$529$1$1 ==.
;	apps/ydrip/ydrip.c:529: if (intWifiStatus != 5) {
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00125$
	cjne	r7,#0x00,00125$
	sjmp	00108$
00125$:
	C$ydrip.c$530$2$5 ==.
;	apps/ydrip/ydrip.c:530: printf("gpio.write(4, gpio.LOW)\r\n");								// Switch on Blue LED
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$531$2$5 ==.
;	apps/ydrip/ydrip.c:531: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$532$2$5 ==.
;	apps/ydrip/ydrip.c:532: printf("wifi.sta.config(\"Hillside\",\"RandomChars\")  wifi.sta.connect()\r\n");	// Connect to AP1
	mov	a,#__str_37
	push	acc
	mov	a,#(__str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$533$2$5 ==.
;	apps/ydrip/ydrip.c:533: wifiFlash();
	lcall	_wifiFlash
	C$ydrip.c$535$2$5 ==.
;	apps/ydrip/ydrip.c:535: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00108$:
	C$ydrip.c$539$1$1 ==.
;	apps/ydrip/ydrip.c:539: if (intWifiStatus != 5) {
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00126$
	cjne	r7,#0x00,00126$
	sjmp	00110$
00126$:
	C$ydrip.c$540$2$6 ==.
;	apps/ydrip/ydrip.c:540: printf("gpio.write(4, gpio.HIGH)\r\n");								// Switch off Blue LED (to make it flash)
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$541$2$6 ==.
;	apps/ydrip/ydrip.c:541: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$542$2$6 ==.
;	apps/ydrip/ydrip.c:542: printf("wifi.sta.config(\"Cagey_HTC\",\"Cagey1234567890\")  wifi.sta.connect()\r\n");	// Connect to AP1
	mov	a,#__str_38
	push	acc
	mov	a,#(__str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$543$2$6 ==.
;	apps/ydrip/ydrip.c:543: wifiFlash();
	lcall	_wifiFlash
	C$ydrip.c$545$2$6 ==.
;	apps/ydrip/ydrip.c:545: intWifiStatus = getWifiStatus();
	lcall	_getWifiStatus
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00110$:
	C$ydrip.c$551$1$1 ==.
;	apps/ydrip/ydrip.c:551: if (intWifiStatus == 5) {
	mov	dptr,#_wifiConnect_intWifiStatus_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00127$
	cjne	r7,#0x00,00127$
	sjmp	00128$
00127$:
	ljmp	00112$
00128$:
	C$ydrip.c$552$2$7 ==.
;	apps/ydrip/ydrip.c:552: printf("gpio.write(4, gpio.LOW)\r\n");																		// Make sure Blue LED is still on
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$553$2$7 ==.
;	apps/ydrip/ydrip.c:553: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$554$2$7 ==.
;	apps/ydrip/ydrip.c:554: strcpy(atString, "sk=net.createConnection(net.TCP, 0)\r\n"); sendAT(atString); delayMs(defaultWaitTime);	// Save changes
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_39
	movx	@r0,a
	inc	r0
	mov	a,#(__str_39 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_wifiConnect_atString_1_1
	lcall	_sendAT
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$555$2$7 ==.
;	apps/ydrip/ydrip.c:555: strcpy(atString, "sk:on(\"receive\", function(sck, c) print(c) end )\r\n"); sendAT(atString);				// print stuff you get back
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_40
	movx	@r0,a
	inc	r0
	mov	a,#(__str_40 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_wifiConnect_atString_1_1
	lcall	_sendAT
	C$ydrip.c$556$2$7 ==.
;	apps/ydrip/ydrip.c:556: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$557$2$7 ==.
;	apps/ydrip/ydrip.c:557: strcpy(atString, "sk:connect(");
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_41
	movx	@r0,a
	inc	r0
	mov	a,#(__str_41 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$558$2$7 ==.
;	apps/ydrip/ydrip.c:558: strcat(atString, dexie_host_port);
	mov	r0,#_strcat_PARM_2
	mov	a,#_dexie_host_port
	movx	@r0,a
	inc	r0
	mov	a,#(_dexie_host_port >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$ydrip.c$559$2$7 ==.
;	apps/ydrip/ydrip.c:559: strcat(atString, ",\"");
	mov	r0,#_strcat_PARM_2
	mov	a,#__str_42
	movx	@r0,a
	inc	r0
	mov	a,#(__str_42 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$ydrip.c$560$2$7 ==.
;	apps/ydrip/ydrip.c:560: strcat(atString, dexie_host_address);
	mov	r0,#_strcat_PARM_2
	mov	a,#_dexie_host_address
	movx	@r0,a
	inc	r0
	mov	a,#(_dexie_host_address >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$ydrip.c$561$2$7 ==.
;	apps/ydrip/ydrip.c:561: strcat(atString, "\")\r\n");
	mov	r0,#_strcat_PARM_2
	mov	a,#__str_43
	movx	@r0,a
	inc	r0
	mov	a,#(__str_43 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_wifiConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$ydrip.c$562$2$7 ==.
;	apps/ydrip/ydrip.c:562: sendAT(atString);
	mov	dptr,#_wifiConnect_atString_1_1
	lcall	_sendAT
	C$ydrip.c$564$2$7 ==.
;	apps/ydrip/ydrip.c:564: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$565$2$7 ==.
;	apps/ydrip/ydrip.c:565: delayMs(defaultWaitTime);								        	// another delay to be sure server is listening
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$566$2$7 ==.
;	apps/ydrip/ydrip.c:566: return 1;
	setb	c
	sjmp	00114$
00112$:
	C$ydrip.c$568$2$8 ==.
;	apps/ydrip/ydrip.c:568: printf("gpio.write(4, gpio.HIGH)\r\n");delayMs(defaultWaitTime);	// Switch off Blue LED (to show no wifi connection)
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$569$2$8 ==.
;	apps/ydrip/ydrip.c:569: return 0;
	clr	c
00114$:
	C$ydrip.c$571$1$1 ==.
	XG$wifiConnect$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getTimeBytes'
;------------------------------------------------------------
;c                         Allocated with name '_getTimeBytes_c_1_1'
;lenC                      Allocated with name '_getTimeBytes_lenC_1_1'
;i                         Allocated with name '_getTimeBytes_i_1_1'
;strMMM                    Allocated with name '_getTimeBytes_strMMM_1_1'
;------------------------------------------------------------
	G$getTimeBytes$0$0 ==.
	C$ydrip.c$573$1$1 ==.
;	apps/ydrip/ydrip.c:573: void getTimeBytes(InitVect* tVector) {
;	-----------------------------------------
;	 function getTimeBytes
;	-----------------------------------------
_getTimeBytes:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$ydrip.c$596$1$1 ==.
;	apps/ydrip/ydrip.c:596: while (uart1RxAvailable()) strcpy(c, getESPString());					// Clear RX buffer
00101$:
	lcall	_uart1RxAvailable
	mov	a,dpl
	jz	00103$
	lcall	_getESPString
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getTimeBytes_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	sjmp	00101$
00103$:
	C$ydrip.c$597$1$1 ==.
;	apps/ydrip/ydrip.c:597: strcpy(c, (getESPString())); // Clear buffer
	lcall	_getESPString
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getTimeBytes_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$598$1$1 ==.
;	apps/ydrip/ydrip.c:598: printf("dofile(\"googletime.lua\")\r\n") ; delayMs(defaultWaitTime);	// Make connection and trigger output of date
	mov	a,#__str_44
	push	acc
	mov	a,#(__str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	lcall	_delayMs
	C$ydrip.c$599$1$1 ==.
;	apps/ydrip/ydrip.c:599: strcpy(c, getESPString());
	lcall	_getESPString
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getTimeBytes_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$600$1$1 ==.
;	apps/ydrip/ydrip.c:600: lenC=strlen(c);
	mov	dptr,#_getTimeBytes_c_1_1
	mov	b,#0x00
	lcall	_strlen
	mov	r4,dpl
	mov	r5,dph
	C$ydrip.c$601$1$1 ==.
;	apps/ydrip/ydrip.c:601: if (debug_mode) printf("-- **DEBUG** length of C is %d\r\n", lenC);
	jnb	_debug_mode,00105$
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	mov	a,#__str_45
	push	acc
	mov	a,#(__str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
00105$:
	C$ydrip.c$602$1$1 ==.
;	apps/ydrip/ydrip.c:602: printf("\r\n"); delayMs(defaultWaitTime);						//	Press return a couple of times
	push	ar4
	push	ar5
	push	ar5
	push	ar4
	mov	a,#__str_46
	push	acc
	mov	a,#(__str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	_delayMs
	C$ydrip.c$603$1$1 ==.
;	apps/ydrip/ydrip.c:603: printf("\r\n"); delayMs(defaultWaitTime);						//	to get ESP back to normal prompt
	mov	a,#__str_46
	push	acc
	mov	a,#(__str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	_delayMs
	pop	ar4
	pop	ar5
	C$ydrip.c$631$1$1 ==.
;	apps/ydrip/ydrip.c:631: if (strcmp(strMMM,"Dec") == 0)	tVector->iv[5] = '2';
	pop	ar5
	pop	ar4
	C$ydrip.c$606$1$1 ==.
;	apps/ydrip/ydrip.c:606: while (i < 14) {												//	Put the relevant characters from the response string into the IV array
	mov	r3,#0x00
00106$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x8e
	jnc	00108$
	C$ydrip.c$607$2$2 ==.
;	apps/ydrip/ydrip.c:607: tVector->iv[i] =  c[(lenC - 21) + i];
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,r3
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	ar6,r4
	mov	a,r6
	add	a,#0xEB
	add	a,r3
	add	a,#_getTimeBytes_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getTimeBytes_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r7
	movx	@dptr,a
	C$ydrip.c$608$2$2 ==.
;	apps/ydrip/ydrip.c:608: i++;
	inc	r3
	sjmp	00106$
00108$:
	C$ydrip.c$612$1$1 ==.
;	apps/ydrip/ydrip.c:612: strMMM[0]=c[(lenC - 21) + 14];
	mov	a,#0xF9
	add	a,r4
	add	a,#_getTimeBytes_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getTimeBytes_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_getTimeBytes_strMMM_1_1
	movx	@dptr,a
	C$ydrip.c$613$1$1 ==.
;	apps/ydrip/ydrip.c:613: strMMM[1]=c[(lenC - 21) + 15];
	mov	a,#0xFA
	add	a,r4
	add	a,#_getTimeBytes_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getTimeBytes_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#(_getTimeBytes_strMMM_1_1 + 0x0001)
	movx	@dptr,a
	C$ydrip.c$614$1$1 ==.
;	apps/ydrip/ydrip.c:614: strMMM[2]=c[(lenC - 21) + 16];
	mov	a,#0xFB
	add	a,r4
	add	a,#_getTimeBytes_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getTimeBytes_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#(_getTimeBytes_strMMM_1_1 + 0x0002)
	movx	@dptr,a
	C$ydrip.c$615$1$1 ==.
;	apps/ydrip/ydrip.c:615: strMMM[3]='\0';
	mov	dptr,#(_getTimeBytes_strMMM_1_1 + 0x0003)
	clr	a
	movx	@dptr,a
	C$ydrip.c$617$1$1 ==.
;	apps/ydrip/ydrip.c:617: tVector->iv[4] = '0';
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x04
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0x30
	movx	@dptr,a
	C$ydrip.c$618$1$1 ==.
;	apps/ydrip/ydrip.c:618: if (strcmp(strMMM,"Jan") == 0) tVector->iv[5] = '1';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_47
	movx	@r0,a
	inc	r0
	mov	a,#(__str_47 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00110$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x31
	movx	@dptr,a
00110$:
	C$ydrip.c$619$1$1 ==.
;	apps/ydrip/ydrip.c:619: if (strcmp(strMMM,"Feb") == 0)	tVector->iv[5] = '2';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_48
	movx	@r0,a
	inc	r0
	mov	a,#(__str_48 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00112$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x32
	movx	@dptr,a
00112$:
	C$ydrip.c$620$1$1 ==.
;	apps/ydrip/ydrip.c:620: if (strcmp(strMMM,"Mar") == 0)	tVector->iv[5] = '3';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_49
	movx	@r0,a
	inc	r0
	mov	a,#(__str_49 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00114$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x33
	movx	@dptr,a
00114$:
	C$ydrip.c$621$1$1 ==.
;	apps/ydrip/ydrip.c:621: if (strcmp(strMMM,"Apr") == 0)	tVector->iv[5] = '4';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_50
	movx	@r0,a
	inc	r0
	mov	a,#(__str_50 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00116$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x34
	movx	@dptr,a
00116$:
	C$ydrip.c$622$1$1 ==.
;	apps/ydrip/ydrip.c:622: if (strcmp(strMMM,"May") == 0)	tVector->iv[5] = '5';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_51
	movx	@r0,a
	inc	r0
	mov	a,#(__str_51 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00118$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x35
	movx	@dptr,a
00118$:
	C$ydrip.c$623$1$1 ==.
;	apps/ydrip/ydrip.c:623: if (strcmp(strMMM,"Jun") == 0)	tVector->iv[5] = '6';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_52
	movx	@r0,a
	inc	r0
	mov	a,#(__str_52 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00120$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x36
	movx	@dptr,a
00120$:
	C$ydrip.c$624$1$1 ==.
;	apps/ydrip/ydrip.c:624: if (strcmp(strMMM,"Jul") == 0)	tVector->iv[5] = '7';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_53
	movx	@r0,a
	inc	r0
	mov	a,#(__str_53 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00122$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x37
	movx	@dptr,a
00122$:
	C$ydrip.c$625$1$1 ==.
;	apps/ydrip/ydrip.c:625: if (strcmp(strMMM,"Aug") == 0)	tVector->iv[5] = '8';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_54
	movx	@r0,a
	inc	r0
	mov	a,#(__str_54 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00124$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x38
	movx	@dptr,a
00124$:
	C$ydrip.c$626$1$1 ==.
;	apps/ydrip/ydrip.c:626: if (strcmp(strMMM,"Sep") == 0)	tVector->iv[5] = '9';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_55
	movx	@r0,a
	inc	r0
	mov	a,#(__str_55 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00126$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x39
	movx	@dptr,a
00126$:
	C$ydrip.c$627$1$1 ==.
;	apps/ydrip/ydrip.c:627: if (strcmp(strMMM,"Oct") == 0)	tVector->iv[5] = '0';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_56
	movx	@r0,a
	inc	r0
	mov	a,#(__str_56 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00128$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
00128$:
	C$ydrip.c$629$1$1 ==.
;	apps/ydrip/ydrip.c:629: if ((strcmp(strMMM,"Oct") == 0) ||(strcmp(strMMM,"Nov") == 0) || (strcmp(strMMM,"Dec")) == 0)	tVector->iv[4] = '1';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_56
	movx	@r0,a
	inc	r0
	mov	a,#(__str_56 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00129$
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_57
	movx	@r0,a
	inc	r0
	mov	a,#(__str_57 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00129$
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_58
	movx	@r0,a
	inc	r0
	mov	a,#(__str_58 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00130$
00129$:
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0x31
	movx	@dptr,a
00130$:
	C$ydrip.c$630$1$1 ==.
;	apps/ydrip/ydrip.c:630: if (strcmp(strMMM,"Nov") == 0)	tVector->iv[5] = '1';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_57
	movx	@r0,a
	inc	r0
	mov	a,#(__str_57 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00134$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x31
	movx	@dptr,a
00134$:
	C$ydrip.c$631$1$1 ==.
;	apps/ydrip/ydrip.c:631: if (strcmp(strMMM,"Dec") == 0)	tVector->iv[5] = '2';
	mov	r0,#_strcmp_PARM_2
	mov	a,#__str_58
	movx	@r0,a
	inc	r0
	mov	a,#(__str_58 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getTimeBytes_strMMM_1_1
	mov	b,#0x00
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00137$
	mov	r0,#_getTimeBytes_tVector_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,#0x32
	movx	@dptr,a
00137$:
	C$ydrip.c$632$1$1 ==.
	XG$getTimeBytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ESPsleep'
;------------------------------------------------------------
	G$ESPsleep$0$0 ==.
	C$ydrip.c$635$1$1 ==.
;	apps/ydrip/ydrip.c:635: void ESPsleep () {
;	-----------------------------------------
;	 function ESPsleep
;	-----------------------------------------
_ESPsleep:
	C$ydrip.c$636$1$1 ==.
;	apps/ydrip/ydrip.c:636: printf("sk:close()\r\n");									// Close the TCP connection	- Response should be CLOSE OK
	mov	a,#__str_59
	push	acc
	mov	a,#(__str_59 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$637$1$1 ==.
;	apps/ydrip/ydrip.c:637: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$638$1$1 ==.
;	apps/ydrip/ydrip.c:638: printf("node.dsleep(270000000)\r\n");							// Deep Sleep 4.5 minutes (270 Seconds) - probably tweak this a bit
	mov	a,#__str_60
	push	acc
	mov	a,#(__str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$640$1$1 ==.
;	apps/ydrip/ydrip.c:640: delayMs(defaultWaitTime);
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$641$1$1 ==.
	XG$ESPsleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_packet'
;------------------------------------------------------------
;sloc0                     Allocated with name '_print_packet_sloc0_1_0'
;sloc1                     Allocated with name '_print_packet_sloc1_1_0'
;sloc2                     Allocated with name '_print_packet_sloc2_1_0'
;transID                   Allocated with name '_print_packet_transID_1_1'
;iv                        Allocated with name '_print_packet_iv_1_1'
;i                         Allocated with name '_print_packet_i_1_1'
;sprintfBuffer             Allocated with name '_print_packet_sprintfBuffer_1_1'
;AESBuffer                 Allocated with name '_print_packet_AESBuffer_1_1'
;prtlen                    Allocated with name '_print_packet_prtlen_1_1'
;getTimeResponse           Allocated with name '_print_packet_getTimeResponse_1_1'
;------------------------------------------------------------
	G$print_packet$0$0 ==.
	C$ydrip.c$644$1$1 ==.
;	apps/ydrip/ydrip.c:644: XDATA void print_packet(Dexcom_packet* pPkt) {
;	-----------------------------------------
;	 function print_packet
;	-----------------------------------------
_print_packet:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_print_packet_pPkt_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$ydrip.c$645$1$1 ==.
;	apps/ydrip/ydrip.c:645: XDATA char transID[] = "BLANK"; 
	mov	dptr,#_print_packet_transID_1_1
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0001)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0002)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0003)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0004)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0005)
	C$ydrip.c$652$1$1 ==.
;	apps/ydrip/ydrip.c:652: XDATA uint8_t iv[16]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
	clr	a
	movx	@dptr,a
	mov	dptr,#_print_packet_iv_1_1
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0002)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0005)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0006)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0007)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0009)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000a)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000b)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000c)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000d)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
	mov	a,#0x0F
	movx	@dptr,a
	C$ydrip.c$661$1$1 ==.
;	apps/ydrip/ydrip.c:661: uartEnable();
	lcall	_uartEnable
	C$ydrip.c$664$2$2 ==.
;	apps/ydrip/ydrip.c:664: LED_YELLOW(0);
	mov	r5,_P2DIR
	anl	ar5,#0xFB
	mov	_P2DIR,r5
	C$ydrip.c$665$2$3 ==.
;	apps/ydrip/ydrip.c:665: LED_RED(0);
	mov	r5,_P2DIR
	anl	ar5,#0xFD
	mov	_P2DIR,r5
	C$ydrip.c$667$1$1 ==.
;	apps/ydrip/ydrip.c:667: getTimeBytes(&getTimeResponse);							//	Connect to google and get the time
	mov	dptr,#_print_packet_getTimeResponse_1_1
	lcall	_getTimeBytes
	C$ydrip.c$668$1$1 ==.
;	apps/ydrip/ydrip.c:668: strcpy(iv, getTimeResponse.iv);							//	and use this to populate the Initialisation Vector
	mov	r0,#_strcpy_PARM_2
	mov	a,#_print_packet_getTimeResponse_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_print_packet_getTimeResponse_1_1 >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_print_packet_iv_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$669$1$1 ==.
;	apps/ydrip/ydrip.c:669: if (debug_mode) printf("-- **DEBUG** iv is %s\r\n", iv);
	jnb	_debug_mode,00102$
	mov	a,#_print_packet_iv_1_1
	push	acc
	mov	a,#(_print_packet_iv_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_62
	push	acc
	mov	a,#(__str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00102$:
	C$ydrip.c$671$1$1 ==.
;	apps/ydrip/ydrip.c:671: iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0B
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
	movx	@dptr,a
	C$ydrip.c$672$1$1 ==.
;	apps/ydrip/ydrip.c:672: iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x12
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
	movx	@dptr,a
	C$ydrip.c$674$1$1 ==.
;	apps/ydrip/ydrip.c:674: if (wifiConnect()) {		// Establish a connection to the Dexie server
	push	ar5
	push	ar4
	lcall	_wifiConnect
	pop	ar4
	pop	ar5
	jc	00135$
	ljmp	00107$
00135$:
	C$ydrip.c$675$3$5 ==.
;	apps/ydrip/ydrip.c:675: LED_RED(1);
	orl	_P2DIR,#0x02
	C$ydrip.c$676$2$4 ==.
;	apps/ydrip/ydrip.c:676: dexcom_src_to_ascii(pPkt->src_addr, transID);		// Get a human-readable version of the Dexcom Transmitter ID
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	mov	a,#_print_packet_transID_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_transID_1_1 >> 8)
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	push	ar5
	push	ar4
	lcall	_dexcom_src_to_ascii
	pop	ar4
	pop	ar5
	C$ydrip.c$684$2$4 ==.
;	apps/ydrip/ydrip.c:684: (((pPkt->RSSI)/2)-73));							//		Received Signal Strength Indicator
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x13
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x02
	mov	a,r7
	jnb	acc.7,00136$
	cpl	F0
	cpl	a
	inc	a
00136$:
	div	ab
	jnb	F0,00137$
	cpl	a
	inc	a
00137$:
	push	acc
	mov	c,F0
	subb	a,acc
	mov	b,a
	pop	acc
	add	a,#0xB7
	mov	_print_packet_sloc1_1_0,a
	mov	a,b
	addc	a,#0xFF
	mov	(_print_packet_sloc1_1_0 + 1),a
	C$ydrip.c$683$2$4 ==.
;	apps/ydrip/ydrip.c:683: pPkt->battery, 					 				// 		Dexcom Transmitter Battery
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x10
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	_print_packet_sloc0_1_0,r3
	mov	(_print_packet_sloc0_1_0 + 1),#0x00
	C$ydrip.c$682$2$4 ==.
;	apps/ydrip/ydrip.c:682: dex_num_decoder(pPkt->filtered)*2,				// 		Filtered BG Value
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0E
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	_dex_num_decoder
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,r2
	add	a,r2
	mov	_print_packet_sloc2_1_0,a
	mov	a,r3
	rlc	a
	mov	(_print_packet_sloc2_1_0 + 1),a
	mov	a,r6
	rlc	a
	mov	(_print_packet_sloc2_1_0 + 2),a
	mov	a,r7
	rlc	a
	mov	(_print_packet_sloc2_1_0 + 3),a
	C$ydrip.c$681$2$4 ==.
;	apps/ydrip/ydrip.c:681: dex_num_decoder(pPkt->raw),		 				// 		Raw BQ Value
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0C
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_dex_num_decoder
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	ar4
	pop	ar5
	C$ydrip.c$680$2$4 ==.
;	apps/ydrip/ydrip.c:680: transID,						 				// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
	C$ydrip.c$679$2$4 ==.
;	apps/ydrip/ydrip.c:679: pPkt->txId, 					 				// 		Transmission ID - unique-ish identifier
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	C$ydrip.c$678$2$4 ==.
;	apps/ydrip/ydrip.c:678: wixFone_ID, 					 				// 		xDrip2g Device Identifier
	C$ydrip.c$677$2$4 ==.
;	apps/ydrip/ydrip.c:677: prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d 100 -6.127100,53.241300",	// Includes home GPS coordinates for Dexie - change to yours
	push	_print_packet_sloc1_1_0
	push	(_print_packet_sloc1_1_0 + 1)
	push	_print_packet_sloc0_1_0
	push	(_print_packet_sloc0_1_0 + 1)
	push	_print_packet_sloc2_1_0
	push	(_print_packet_sloc2_1_0 + 1)
	push	(_print_packet_sloc2_1_0 + 2)
	push	(_print_packet_sloc2_1_0 + 3)
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,#_print_packet_transID_1_1
	push	acc
	mov	a,#(_print_packet_transID_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	push	ar4
	push	ar5
	mov	a,#_wixFone_ID
	push	acc
	mov	a,#(_wixFone_ID >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_63
	push	acc
	mov	a,#(__str_63 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_print_packet_sprintfBuffer_1_1
	push	acc
	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r6,dpl
	mov	a,sp
	add	a,#0xe6
	mov	sp,a
	C$ydrip.c$686$2$4 ==.
;	apps/ydrip/ydrip.c:686: for(i = prtlen; i < 64; ++i)
	mov	ar7,r6
00108$:
	cjne	r7,#0x40,00138$
00138$:
	jnc	00111$
	C$ydrip.c$687$2$4 ==.
;	apps/ydrip/ydrip.c:687: sprintfBuffer[i]=' ';							//		Fill rest of array with spaces
	mov	a,r7
	add	a,#_print_packet_sprintfBuffer_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
	C$ydrip.c$686$2$4 ==.
;	apps/ydrip/ydrip.c:686: for(i = prtlen; i < 64; ++i)
	inc	r7
	sjmp	00108$
00111$:
	C$ydrip.c$689$2$4 ==.
;	apps/ydrip/ydrip.c:689: if (encrypt_output==1) {							//		Check if to encode the output using AES-128 encryption
	jb	_encrypt_output,00140$
	ljmp	00104$
00140$:
	C$ydrip.c$690$3$6 ==.
;	apps/ydrip/ydrip.c:690: AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, 64, key, iv);   //	encrypt(output, input, length, key, vector)
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_2
	mov	a,#_print_packet_sprintfBuffer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_4
	mov	a,#_key
	movx	@dptr,a
	inc	dptr
	mov	a,#(_key >> 8)
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_5
	mov	a,#_print_packet_iv_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_iv_1_1 >> 8)
	movx	@dptr,a
	mov	dptr,#_print_packet_AESBuffer_1_1
	lcall	_AES128_CBC_encrypt_buffer
	C$ydrip.c$691$3$6 ==.
;	apps/ydrip/ydrip.c:691: printf("sk:send(\"yDrip(AES): ");				//		Send the preamble to the Dexie Server first
	mov	a,#__str_64
	push	acc
	mov	a,#(__str_64 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$692$1$1 ==.
;	apps/ydrip/ydrip.c:692: for(i = 0; i < 16; ++i)							
	mov	r7,#0x00
00112$:
	cjne	r7,#0x10,00141$
00141$:
	jnc	00115$
	C$ydrip.c$693$3$6 ==.
;	apps/ydrip/ydrip.c:693: printf("%02x", iv[i]);						//		Print initialisation vector as cleartext.  This is not a secret, just unique.
	mov	a,r7
	add	a,#_print_packet_iv_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_iv_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#__str_65
	push	acc
	mov	a,#(__str_65 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	C$ydrip.c$692$3$6 ==.
;	apps/ydrip/ydrip.c:692: for(i = 0; i < 16; ++i)							
	inc	r7
	sjmp	00112$
00115$:
	C$ydrip.c$694$3$6 ==.
;	apps/ydrip/ydrip.c:694: printf(" ");									//		Separate IV from encrypted text with a delimiting space
	mov	a,#__str_66
	push	acc
	mov	a,#(__str_66 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	00130$
00104$:
	C$ydrip.c$696$3$7 ==.
;	apps/ydrip/ydrip.c:696: strcpy(AESBuffer, sprintfBuffer); 				// 		Just copy the characters that we want to send in the clear if no encryption
	mov	r0,#_strcpy_PARM_2
	mov	a,#_print_packet_sprintfBuffer_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_print_packet_AESBuffer_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$ydrip.c$697$3$7 ==.
;	apps/ydrip/ydrip.c:697: printf("sk:send(\"yDrip: ");					//		Slightly different preamble so Dexie knows the/re is no encryption - and no IV needed
	mov	a,#__str_67
	push	acc
	mov	a,#(__str_67 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$ydrip.c$700$1$1 ==.
;	apps/ydrip/ydrip.c:700: for(i = 0; i < 64; ++i) 							//		Loop through 64 character block of encrypted text
00130$:
	mov	r7,#0x00
00116$:
	cjne	r7,#0x40,00143$
00143$:
	jnc	00119$
	C$ydrip.c$701$2$4 ==.
;	apps/ydrip/ydrip.c:701: printf("%02x", AESBuffer[i]);					//		and print each character, one by one
	mov	a,r7
	add	a,#_print_packet_AESBuffer_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_AESBuffer_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#__str_65
	push	acc
	mov	a,#(__str_65 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	C$ydrip.c$700$2$4 ==.
;	apps/ydrip/ydrip.c:700: for(i = 0; i < 64; ++i) 							//		Loop through 64 character block of encrypted text
	inc	r7
	sjmp	00116$
00119$:
	C$ydrip.c$703$2$4 ==.
;	apps/ydrip/ydrip.c:703: printf("\\r\\n\")\r\n");	delayMs(defaultWaitTime);	// 		CR/LF
	mov	a,#__str_68
	push	acc
	mov	a,#(__str_68 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$704$2$4 ==.
;	apps/ydrip/ydrip.c:704: printf("gpio.write(4, gpio.HIGH)\r\n"); delayMs(defaultWaitTime);	// Switch off blue LED
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$ydrip.c$705$2$4 ==.
;	apps/ydrip/ydrip.c:705: delayMs(defaultWaitTime);									// Need to wait here also as sometimes missing ctrl-z
	mov	dptr,#_defaultWaitTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
00107$:
	C$ydrip.c$707$1$1 ==.
;	apps/ydrip/ydrip.c:707: uartDisable();
	lcall	_uartDisable
	C$ydrip.c$708$1$1 ==.
	XG$print_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeAllOutputs'
;------------------------------------------------------------
;i                         Allocated with name '_makeAllOutputs_i_1_1'
;------------------------------------------------------------
	G$makeAllOutputs$0$0 ==.
	C$ydrip.c$710$1$1 ==.
;	apps/ydrip/ydrip.c:710: void makeAllOutputs() {
;	-----------------------------------------
;	 function makeAllOutputs
;	-----------------------------------------
_makeAllOutputs:
	C$ydrip.c$712$1$1 ==.
;	apps/ydrip/ydrip.c:712: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
	mov	r6,#0x01
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$ydrip.c$715$2$2 ==.
;	apps/ydrip/ydrip.c:715: setDigitalOutput(i, LOW);
	mov	dpl,r6
	clr	b[0]
	push	ar7
	push	ar6
	mov	bits,b
	lcall	_setDigitalOutput
	pop	ar6
	pop	ar7
	C$ydrip.c$712$1$1 ==.
;	apps/ydrip/ydrip.c:712: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$ydrip.c$717$1$1 ==.
	XG$makeAllOutputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeAllOutputsLow'
;------------------------------------------------------------
;i                         Allocated with name '_makeAllOutputsLow_i_1_1'
;------------------------------------------------------------
	G$makeAllOutputsLow$0$0 ==.
	C$ydrip.c$718$1$1 ==.
;	apps/ydrip/ydrip.c:718: void makeAllOutputsLow() {
;	-----------------------------------------
;	 function makeAllOutputsLow
;	-----------------------------------------
_makeAllOutputsLow:
	C$ydrip.c$720$1$1 ==.
;	apps/ydrip/ydrip.c:720: for (i=0; i < 16; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$ydrip.c$723$2$2 ==.
;	apps/ydrip/ydrip.c:723: setDigitalOutput(i, LOW);
	mov	dpl,r6
	clr	b[0]
	push	ar7
	push	ar6
	mov	bits,b
	lcall	_setDigitalOutput
	pop	ar6
	pop	ar7
	C$ydrip.c$720$1$1 ==.
;	apps/ydrip/ydrip.c:720: for (i=0; i < 16; i++) {
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$ydrip.c$725$1$1 ==.
	XG$makeAllOutputsLow$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_offsets'
;------------------------------------------------------------
;i                         Allocated with name '_reset_offsets_i_1_1'
;------------------------------------------------------------
	G$reset_offsets$0$0 ==.
	C$ydrip.c$727$1$1 ==.
;	apps/ydrip/ydrip.c:727: void reset_offsets() {
;	-----------------------------------------
;	 function reset_offsets
;	-----------------------------------------
_reset_offsets:
	C$ydrip.c$729$2$2 ==.
;	apps/ydrip/ydrip.c:729: for(i=0; i<4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$ydrip.c$730$2$2 ==.
;	apps/ydrip/ydrip.c:730: fOffset[i] = defaultfOffset[i];
	mov	a,r6
	add	a,#_fOffset
	mov	r1,a
	mov	a,r6
	add	a,#_defaultfOffset
	mov	dpl,a
	mov	a,r7
	addc	a,#(_defaultfOffset >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	movx	@r1,a
	C$ydrip.c$729$1$1 ==.
;	apps/ydrip/ydrip.c:729: for(i=0; i<4; i++) {
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$ydrip.c$732$1$1 ==.
	XG$reset_offsets$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'killWithWatchdog'
;------------------------------------------------------------
	G$killWithWatchdog$0$0 ==.
	C$ydrip.c$734$1$1 ==.
;	apps/ydrip/ydrip.c:734: void killWithWatchdog() {
;	-----------------------------------------
;	 function killWithWatchdog
;	-----------------------------------------
_killWithWatchdog:
	C$ydrip.c$735$1$1 ==.
;	apps/ydrip/ydrip.c:735: WDCTL = (WDCTL & ~0x03) | 0x00;
	mov	r7,_WDCTL
	anl	ar7,#0xFC
	mov	_WDCTL,r7
	C$ydrip.c$736$1$1 ==.
;	apps/ydrip/ydrip.c:736: WDCTL = (WDCTL & ~0x04) | 0x08;		// This actually does a soft reset on the Wixel
	mov	r7,_WDCTL
	mov	a,#0xFB
	anl	a,r7
	orl	a,#0x08
	mov	r7,a
	mov	_WDCTL,r7
	C$ydrip.c$737$1$1 ==.
	XG$killWithWatchdog$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'goToSleep'
;------------------------------------------------------------
;sloc0                     Allocated with name '_goToSleep_sloc0_1_0'
;sloc1                     Allocated with name '_goToSleep_sloc1_1_0'
;seconds                   Allocated with name '_goToSleep_seconds_1_1'
;------------------------------------------------------------
	G$goToSleep$0$0 ==.
	C$ydrip.c$739$1$1 ==.
;	apps/ydrip/ydrip.c:739: XDATA void goToSleep (XDATA int16 seconds) {
;	-----------------------------------------
;	 function goToSleep
;	-----------------------------------------
_goToSleep:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_goToSleep_seconds_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$740$1$1 ==.
;	apps/ydrip/ydrip.c:740: adcSetMillivoltCalibration(adcReadVddMillivolts());
	lcall	_adcReadVddMillivolts
	lcall	_adcSetMillivoltCalibration
	C$ydrip.c$741$1$1 ==.
;	apps/ydrip/ydrip.c:741: makeAllOutputsLow();
	lcall	_makeAllOutputsLow
	C$ydrip.c$743$1$1 ==.
;	apps/ydrip/ydrip.c:743: if(!needsTimingCalibration) {
	jnb	_needsTimingCalibration,00134$
	ljmp	00120$
00134$:
	C$ydrip.c$744$2$2 ==.
;	apps/ydrip/ydrip.c:744: if(!usbPowerPresent()){
	lcall	_usbPowerPresent
	jnc	00135$
	ljmp	00117$
00135$:
	C$ydrip.c$750$3$2 ==.
;	apps/ydrip/ydrip.c:750: uint8 savedPICTL = PICTL;
	mov	r7,_PICTL
	C$ydrip.c$751$3$2 ==.
;	apps/ydrip/ydrip.c:751: BIT savedP0IE = P0IE;
	mov	c,_P0IE
	mov	_goToSleep_savedP0IE_3_3,c
	C$ydrip.c$752$3$2 ==.
;	apps/ydrip/ydrip.c:752: uint8 savedP0SEL = P0SEL;
	mov	r6,_P0SEL
	C$ydrip.c$753$3$2 ==.
;	apps/ydrip/ydrip.c:753: uint8 savedP0DIR = P0DIR;
	mov	r5,_P0DIR
	C$ydrip.c$754$3$2 ==.
;	apps/ydrip/ydrip.c:754: uint8 savedP1SEL = P1SEL;
	mov	r0,#_goToSleep_savedP1SEL_3_3
	mov	a,_P1SEL
	movx	@r0,a
	C$ydrip.c$755$3$2 ==.
;	apps/ydrip/ydrip.c:755: uint8 savedP1DIR = P1DIR;
	mov	r0,#_goToSleep_savedP1DIR_3_3
	mov	a,_P1DIR
	movx	@r0,a
	C$ydrip.c$757$3$3 ==.
;	apps/ydrip/ydrip.c:757: sleepInit();
	push	ar7
	push	ar6
	push	ar5
	lcall	_sleepInit
	C$ydrip.c$759$3$3 ==.
;	apps/ydrip/ydrip.c:759: disableUsbPullup();
	lcall	_disableUsbPullup
	C$ydrip.c$760$3$3 ==.
;	apps/ydrip/ydrip.c:760: usbDeviceState = USB_STATE_DETACHED;
	mov	dptr,#_usbDeviceState
	clr	a
	movx	@dptr,a
	C$ydrip.c$761$3$3 ==.
;	apps/ydrip/ydrip.c:761: usbEnabled = 0;
	clr	_usbEnabled
	C$ydrip.c$762$3$3 ==.
;	apps/ydrip/ydrip.c:762: SLEEP &= ~(1<<7);
	mov	r2,_SLEEP
	anl	ar2,#0x7F
	mov	_SLEEP,r2
	C$ydrip.c$764$3$3 ==.
;	apps/ydrip/ydrip.c:764: WORCTRL |= 0x03; // 2^5 periods
	orl	_WORCTRL,#0x03
	C$ydrip.c$765$3$3 ==.
;	apps/ydrip/ydrip.c:765: switchToRCOSC();
	lcall	_switchToRCOSC
	pop	ar5
	pop	ar6
	pop	ar7
	C$ydrip.c$767$3$3 ==.
;	apps/ydrip/ydrip.c:767: storedDescHigh = DMA0CFGH;
	mov	r0,#_goToSleep_storedDescHigh_3_3
	mov	a,_DMA0CFGH
	movx	@r0,a
	C$ydrip.c$768$3$3 ==.
;	apps/ydrip/ydrip.c:768: storedDescLow = DMA0CFGL;
	mov	r0,#_goToSleep_storedDescLow_3_3
	mov	a,_DMA0CFGL
	movx	@r0,a
	C$ydrip.c$769$3$3 ==.
;	apps/ydrip/ydrip.c:769: storedDma0Armed = DMAARM & 0x01;
	mov	a,_DMAARM
	anl	a,#0x01
	add	a,#0xff
	mov	_goToSleep_storedDma0Armed_3_3,c
	C$ydrip.c$770$3$3 ==.
;	apps/ydrip/ydrip.c:770: DMAARM |= 0x81;
	orl	_DMAARM,#0x81
	C$ydrip.c$771$3$3 ==.
;	apps/ydrip/ydrip.c:771: dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	ar2,r3
	mov	dptr,#_dmaDesc
	mov	a,r2
	movx	@dptr,a
	C$ydrip.c$772$3$3 ==.
;	apps/ydrip/ydrip.c:772: dmaDesc[1] = (unsigned int)& PM2_BUF;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	dptr,#(_dmaDesc + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$ydrip.c$774$3$3 ==.
;	apps/ydrip/ydrip.c:774: DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGH,r3
	C$ydrip.c$775$3$3 ==.
;	apps/ydrip/ydrip.c:775: DMA0CFGL = (unsigned int)&dmaDesc;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGL,r2
	C$ydrip.c$776$3$3 ==.
;	apps/ydrip/ydrip.c:776: DMAARM = 0x01;
	mov	_DMAARM,#0x01
	C$ydrip.c$779$3$3 ==.
;	apps/ydrip/ydrip.c:779: storedIEN0 = IEN0;
	mov	r3,_IEN0
	C$ydrip.c$780$3$3 ==.
;	apps/ydrip/ydrip.c:780: storedIEN1 = IEN1;
	mov	r0,#_goToSleep_storedIEN1_3_3
	mov	a,_IEN1
	movx	@r0,a
	C$ydrip.c$781$3$3 ==.
;	apps/ydrip/ydrip.c:781: storedIEN2 = IEN2;
	mov	r0,#_goToSleep_storedIEN2_3_3
	mov	a,_IEN2
	movx	@r0,a
	C$ydrip.c$784$3$3 ==.
;	apps/ydrip/ydrip.c:784: IEN0 |= 0xA0;
	orl	_IEN0,#0xA0
	C$ydrip.c$787$3$3 ==.
;	apps/ydrip/ydrip.c:787: IEN0 &= 0xA0;
	anl	_IEN0,#0xA0
	C$ydrip.c$788$3$3 ==.
;	apps/ydrip/ydrip.c:788: IEN1 &= ~0x3F;
	mov	r2,_IEN1
	anl	ar2,#0xC0
	mov	_IEN1,r2
	C$ydrip.c$789$3$3 ==.
;	apps/ydrip/ydrip.c:789: IEN2 &= ~0x3F;
	mov	r2,_IEN2
	anl	ar2,#0xC0
	mov	_IEN2,r2
	C$ydrip.c$791$3$3 ==.
;	apps/ydrip/ydrip.c:791: WORCTRL |= 0x04;  // Reset
	orl	_WORCTRL,#0x04
	C$ydrip.c$792$3$3 ==.
;	apps/ydrip/ydrip.c:792: temp = WORTIME0;
	mov	r2,_WORTIME0
	C$ydrip.c$793$3$3 ==.
;	apps/ydrip/ydrip.c:793: while(temp == WORTIME0) {};
00101$:
	mov	a,r2
	cjne	a,_WORTIME0,00136$
	sjmp	00101$
00136$:
	C$ydrip.c$794$1$1 ==.
;	apps/ydrip/ydrip.c:794: WOREVT1 = seconds >> 8;
	push	ar3
	mov	dptr,#_goToSleep_seconds_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	_WOREVT1,r4
	C$ydrip.c$795$3$3 ==.
;	apps/ydrip/ydrip.c:795: WOREVT0 = seconds;
	mov	_WOREVT0,r3
	C$ydrip.c$797$3$3 ==.
;	apps/ydrip/ydrip.c:797: temp = WORTIME0;
	mov	r2,_WORTIME0
	C$ydrip.c$843$1$1 ==.
;	apps/ydrip/ydrip.c:843: makeAllOutputs();
	pop	ar3
	C$ydrip.c$798$3$3 ==.
;	apps/ydrip/ydrip.c:798: while(temp == WORTIME0) {};
00104$:
	mov	a,r2
	cjne	a,_WORTIME0,00137$
	sjmp	00104$
00137$:
	C$ydrip.c$800$3$3 ==.
;	apps/ydrip/ydrip.c:800: MEMCTR |= 0x02;
	orl	_MEMCTR,#0x02
	C$ydrip.c$801$3$3 ==.
;	apps/ydrip/ydrip.c:801: SLEEP = 0x06;
	mov	_SLEEP,#0x06
	C$ydrip.c$802$3$3 ==.
;	apps/ydrip/ydrip.c:802: __asm nop __endasm;
	 nop 
	C$ydrip.c$803$3$3 ==.
;	apps/ydrip/ydrip.c:803: __asm nop __endasm;
	 nop 
	C$ydrip.c$804$3$3 ==.
;	apps/ydrip/ydrip.c:804: __asm nop __endasm;
	 nop 
	C$ydrip.c$805$3$3 ==.
;	apps/ydrip/ydrip.c:805: if(SLEEP & 0x03){
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00108$
	C$ydrip.c$806$4$6 ==.
;	apps/ydrip/ydrip.c:806: __asm mov 0xD7, #0x01 __endasm;
	 mov 0xD7, #0x01 
	C$ydrip.c$807$4$6 ==.
;	apps/ydrip/ydrip.c:807: __asm nop __endasm;
	 nop 
	C$ydrip.c$808$4$6 ==.
;	apps/ydrip/ydrip.c:808: __asm orl 0x87, #0x01 __endasm;
	 orl 0x87, #0x01 
	C$ydrip.c$809$4$6 ==.
;	apps/ydrip/ydrip.c:809: __asm nop __endasm;
	 nop 
00108$:
	C$ydrip.c$811$3$3 ==.
;	apps/ydrip/ydrip.c:811: IEN0 = storedIEN0;
	mov	_IEN0,r3
	C$ydrip.c$812$3$3 ==.
;	apps/ydrip/ydrip.c:812: IEN1 = storedIEN1;
	mov	r0,#_goToSleep_storedIEN1_3_3
	movx	a,@r0
	mov	_IEN1,a
	C$ydrip.c$813$3$3 ==.
;	apps/ydrip/ydrip.c:813: IEN2 = storedIEN2;
	mov	r0,#_goToSleep_storedIEN2_3_3
	movx	a,@r0
	mov	_IEN2,a
	C$ydrip.c$814$3$3 ==.
;	apps/ydrip/ydrip.c:814: DMA0CFGH = storedDescHigh;
	mov	r0,#_goToSleep_storedDescHigh_3_3
	movx	a,@r0
	mov	_DMA0CFGH,a
	C$ydrip.c$815$3$3 ==.
;	apps/ydrip/ydrip.c:815: DMA0CFGL = storedDescLow;
	mov	r0,#_goToSleep_storedDescLow_3_3
	movx	a,@r0
	mov	_DMA0CFGL,a
	C$ydrip.c$816$3$3 ==.
;	apps/ydrip/ydrip.c:816: if(storedDma0Armed){
	jnb	_goToSleep_storedDma0Armed_3_3,00110$
	C$ydrip.c$817$4$7 ==.
;	apps/ydrip/ydrip.c:817: DMAARM |= 0x01;
	orl	_DMAARM,#0x01
00110$:
	C$ydrip.c$820$3$3 ==.
;	apps/ydrip/ydrip.c:820: boardClockInit();
	push	ar7
	push	ar6
	push	ar5
	lcall	_boardClockInit
	pop	ar5
	pop	ar6
	pop	ar7
	C$ydrip.c$822$3$3 ==.
;	apps/ydrip/ydrip.c:822: PICTL = savedPICTL;
	mov	_PICTL,r7
	C$ydrip.c$823$3$3 ==.
;	apps/ydrip/ydrip.c:823: P0IE = savedP0IE;
	mov	c,_goToSleep_savedP0IE_3_3
	mov	_P0IE,c
	C$ydrip.c$824$3$3 ==.
;	apps/ydrip/ydrip.c:824: P0SEL = savedP0SEL;
	mov	_P0SEL,r6
	C$ydrip.c$825$3$3 ==.
;	apps/ydrip/ydrip.c:825: P0DIR = savedP0DIR;
	mov	_P0DIR,r5
	C$ydrip.c$826$3$3 ==.
;	apps/ydrip/ydrip.c:826: P1SEL = savedP1SEL;
	mov	r0,#_goToSleep_savedP1SEL_3_3
	movx	a,@r0
	mov	_P1SEL,a
	C$ydrip.c$827$3$3 ==.
;	apps/ydrip/ydrip.c:827: P1DIR = savedP1DIR;
	mov	r0,#_goToSleep_savedP1DIR_3_3
	movx	a,@r0
	mov	_P1DIR,a
	C$ydrip.c$828$3$3 ==.
;	apps/ydrip/ydrip.c:828: USBPOW = 1;
	mov	dptr,#_USBPOW
	mov	a,#0x01
	movx	@dptr,a
	C$ydrip.c$829$3$3 ==.
;	apps/ydrip/ydrip.c:829: USBCIE = 0b0111;
	mov	dptr,#_USBCIE
	mov	a,#0x07
	movx	@dptr,a
	ljmp	00120$
00117$:
	C$ydrip.c$831$3$8 ==.
;	apps/ydrip/ydrip.c:831: uint32 start_waiting = getMs();
	lcall	_getMs
	mov	r0,#_goToSleep_start_waiting_3_8
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	C$ydrip.c$832$3$8 ==.
;	apps/ydrip/ydrip.c:832: if(!usbEnabled) {
	jb	_usbEnabled,00112$
	C$ydrip.c$833$4$9 ==.
;	apps/ydrip/ydrip.c:833: usbDeviceState = USB_STATE_POWERED;
	mov	dptr,#_usbDeviceState
	mov	a,#0x02
	movx	@dptr,a
	C$ydrip.c$834$4$9 ==.
;	apps/ydrip/ydrip.c:834: enableUsbPullup();
	lcall	_enableUsbPullup
	C$ydrip.c$835$4$9 ==.
;	apps/ydrip/ydrip.c:835: usbEnabled = 1;
	setb	_usbEnabled
00112$:
	C$ydrip.c$837$3$8 ==.
;	apps/ydrip/ydrip.c:837: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$838$3$8 ==.
;	apps/ydrip/ydrip.c:838: while((getMs() - start_waiting) < (seconds * 1000)) {
	mov	dptr,#_goToSleep_seconds_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#__mulint_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	_goToSleep_sloc0_1_0,dpl
	mov	(_goToSleep_sloc0_1_0 + 1),dph
00113$:
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_goToSleep_start_waiting_3_8
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	mov	_goToSleep_sloc1_1_0,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	cpl	c
	mov	(_goToSleep_sloc1_1_0 + 1),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	(_goToSleep_sloc1_1_0 + 2),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	(_goToSleep_sloc1_1_0 + 3),a
	mov	r2,_goToSleep_sloc0_1_0
	mov	a,(_goToSleep_sloc0_1_0 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	clr	c
	mov	a,_goToSleep_sloc1_1_0
	subb	a,r2
	mov	a,(_goToSleep_sloc1_1_0 + 1)
	subb	a,r3
	mov	a,(_goToSleep_sloc1_1_0 + 2)
	subb	a,r6
	mov	a,(_goToSleep_sloc1_1_0 + 3)
	subb	a,r7
	jnc	00120$
	C$ydrip.c$839$4$10 ==.
;	apps/ydrip/ydrip.c:839: doServices();
	lcall	_doServices
	sjmp	00113$
00120$:
	C$ydrip.c$843$1$1 ==.
;	apps/ydrip/ydrip.c:843: makeAllOutputs();
	lcall	_makeAllOutputs
	C$ydrip.c$844$1$1 ==.
	XG$goToSleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_1'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$ydrip.c$847$1$1 ==.
;	apps/ydrip/ydrip.c:847: void putchar(XDATA char c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	a,dpl
	mov	dptr,#_putchar_c_1_1
	movx	@dptr,a
	C$ydrip.c$848$1$1 ==.
;	apps/ydrip/ydrip.c:848: while(uart1TxAvailable() == 0) {								//  Loop until space in the TX buffer to send a character
00101$:
	lcall	_uart1TxAvailable
	mov	a,dpl
	jnz	00103$
	C$ydrip.c$849$3$3 ==.
;	apps/ydrip/ydrip.c:849: LED_RED(1);													// Error Indicator
	orl	_P2DIR,#0x02
	C$ydrip.c$850$2$2 ==.
;	apps/ydrip/ydrip.c:850: boardService();
	lcall	_boardService
	sjmp	00101$
00103$:
	C$ydrip.c$853$1$1 ==.
;	apps/ydrip/ydrip.c:853: uart1TxSendByte(c);
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_uart1TxSendByte
	C$ydrip.c$855$1$1 ==.
;	apps/ydrip/ydrip.c:855: if (usbPowerPresent()) {
	lcall	_usbPowerPresent
	pop	ar7
	jnc	00108$
	C$ydrip.c$856$2$4 ==.
;	apps/ydrip/ydrip.c:856: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
00104$:
	push	ar7
	lcall	_usbComTxAvailable
	mov	a,dpl
	pop	ar7
	jnz	00106$
	C$ydrip.c$858$3$5 ==.
;	apps/ydrip/ydrip.c:858: boardService();
	push	ar7
	lcall	_boardService
	pop	ar7
	sjmp	00104$
00106$:
	C$ydrip.c$860$2$4 ==.
;	apps/ydrip/ydrip.c:860: usbComTxSendByte(c);
	mov	dpl,r7
	lcall	_usbComTxSendByte
	C$ydrip.c$861$2$4 ==.
;	apps/ydrip/ydrip.c:861: boardService();
	lcall	_boardService
00108$:
	C$ydrip.c$864$2$6 ==.
;	apps/ydrip/ydrip.c:864: LED_RED(0);														// Error gone
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$ydrip.c$865$2$6 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printfUSB'
;------------------------------------------------------------
;length                    Allocated with name '_printfUSB_length_1_1'
;i                         Allocated with name '_printfUSB_i_1_1'
;------------------------------------------------------------
	G$printfUSB$0$0 ==.
	C$ydrip.c$868$2$6 ==.
;	apps/ydrip/ydrip.c:868: void printfUSB(char * stringForUSB) {
;	-----------------------------------------
;	 function printfUSB
;	-----------------------------------------
_printfUSB:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$ydrip.c$871$1$1 ==.
;	apps/ydrip/ydrip.c:871: if (usbPowerPresent()) {
	push	ar7
	push	ar6
	push	ar5
	lcall	_usbPowerPresent
	pop	ar5
	pop	ar6
	pop	ar7
	jc	00117$
	ljmp	00110$
00117$:
	C$ydrip.c$872$2$2 ==.
;	apps/ydrip/ydrip.c:872: length = strlen(stringForUSB);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	C$ydrip.c$873$2$2 ==.
;	apps/ydrip/ydrip.c:873: stringForUSB[length++] = ('/r');
	mov	a,r3
	inc	a
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,#0x2F
	lcall	__gptrput
	C$ydrip.c$874$2$2 ==.
;	apps/ydrip/ydrip.c:874: stringForUSB[length++] = ('/n');
	inc	r3
	inc	r3
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	mov	a,#0x2F
	lcall	__gptrput
	C$ydrip.c$876$2$1 ==.
;	apps/ydrip/ydrip.c:876: for(i = 0; i < length; ++i) {
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00110$
	C$ydrip.c$877$3$3 ==.
;	apps/ydrip/ydrip.c:877: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send each character
00101$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_usbComTxAvailable
	mov	a,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00103$
	C$ydrip.c$878$4$4 ==.
;	apps/ydrip/ydrip.c:878: doServices();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_doServices
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
	C$ydrip.c$880$3$3 ==.
;	apps/ydrip/ydrip.c:880: usbComTxSendByte(stringForUSB[i]);		
	mov	a,r4
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_usbComTxSendByte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ydrip.c$876$2$2 ==.
;	apps/ydrip/ydrip.c:876: for(i = 0; i < length; ++i) {
	inc	r4
	sjmp	00106$
00110$:
	C$ydrip.c$885$2$1 ==.
	XG$printfUSB$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'swap_channel'
;------------------------------------------------------------
;newFSCTRL0                Allocated with name '_swap_channel_PARM_2'
;channel                   Allocated with name '_swap_channel_channel_1_1'
;------------------------------------------------------------
	G$swap_channel$0$0 ==.
	C$ydrip.c$888$2$1 ==.
;	apps/ydrip/ydrip.c:888: void swap_channel(XDATA uint8 channel, XDATA uint8 newFSCTRL0) {
;	-----------------------------------------
;	 function swap_channel
;	-----------------------------------------
_swap_channel:
	mov	a,dpl
	mov	dptr,#_swap_channel_channel_1_1
	movx	@dptr,a
	C$ydrip.c$889$1$1 ==.
;	apps/ydrip/ydrip.c:889: do {
00101$:
	C$ydrip.c$890$2$2 ==.
;	apps/ydrip/ydrip.c:890: RFST = 4;   //SIDLE
	mov	_RFST,#0x04
	C$ydrip.c$891$1$1 ==.
;	apps/ydrip/ydrip.c:891: } while (MARCSTATE != 0x01);
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
	C$ydrip.c$893$1$1 ==.
;	apps/ydrip/ydrip.c:893: FSCTRL0 = newFSCTRL0;
	mov	dptr,#_swap_channel_PARM_2
	movx	a,@dptr
	mov	dptr,#_FSCTRL0
	movx	@dptr,a
	C$ydrip.c$894$1$1 ==.
;	apps/ydrip/ydrip.c:894: CHANNR = channel;
	mov	dptr,#_swap_channel_channel_1_1
	movx	a,@dptr
	mov	dptr,#_CHANNR
	movx	@dptr,a
	C$ydrip.c$895$1$1 ==.
;	apps/ydrip/ydrip.c:895: RFST = 2;   //RX
	mov	_RFST,#0x02
	C$ydrip.c$896$1$1 ==.
	XG$swap_channel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strobe_radio'
;------------------------------------------------------------
	G$strobe_radio$0$0 ==.
	C$ydrip.c$898$1$1 ==.
;	apps/ydrip/ydrip.c:898: void strobe_radio(int radio_chan) {
;	-----------------------------------------
;	 function strobe_radio
;	-----------------------------------------
_strobe_radio:
	mov	r6,dpl
	mov	r7,dph
	C$ydrip.c$899$1$1 ==.
;	apps/ydrip/ydrip.c:899: radioMacInit();
	push	ar7
	push	ar6
	lcall	_radioMacInit
	C$ydrip.c$900$1$1 ==.
;	apps/ydrip/ydrip.c:900: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$ydrip.c$901$1$1 ==.
;	apps/ydrip/ydrip.c:901: radioMacStrobe();
	lcall	_radioMacStrobe
	pop	ar6
	pop	ar7
	C$ydrip.c$902$1$1 ==.
;	apps/ydrip/ydrip.c:902: swap_channel(nChannels[radio_chan], fOffset[radio_chan]);
	mov	a,r6
	add	a,#_nChannels
	mov	r1,a
	movx	a,@r1
	mov	r5,a
	mov	a,r6
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	dptr,#_swap_channel_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	lcall	_swap_channel
	C$ydrip.c$903$1$1 ==.
	XG$strobe_radio$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitForPacket'
;------------------------------------------------------------
;sloc0                     Allocated with name '_WaitForPacket_sloc0_1_0'
;sloc1                     Allocated with name '_WaitForPacket_sloc1_1_0'
;sloc2                     Allocated with name '_WaitForPacket_sloc2_1_0'
;sloc3                     Allocated with name '_WaitForPacket_sloc3_1_0'
;sloc4                     Allocated with name '_WaitForPacket_sloc4_1_0'
;sloc5                     Allocated with name '_WaitForPacket_sloc5_1_0'
;channel                   Allocated with name '_WaitForPacket_PARM_3'
;milliseconds              Allocated with name '_WaitForPacket_milliseconds_1_1'
;start                     Allocated with name '_WaitForPacket_start_1_1'
;i                         Allocated with name '_WaitForPacket_i_1_1'
;six_minutes               Allocated with name '_WaitForPacket_six_minutes_1_1'
;nRet                      Allocated with name '_WaitForPacket_nRet_1_1'
;transID                   Allocated with name '_WaitForPacket_transID_1_1'
;------------------------------------------------------------
	G$WaitForPacket$0$0 ==.
	C$ydrip.c$905$1$1 ==.
;	apps/ydrip/ydrip.c:905: int WaitForPacket(XDATA uint16 milliseconds, Dexcom_packet* pkt, XDATA uint8 channel) {
;	-----------------------------------------
;	 function WaitForPacket
;	-----------------------------------------
_WaitForPacket:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_WaitForPacket_milliseconds_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$906$1$1 ==.
;	apps/ydrip/ydrip.c:906: XDATA uint32 start = getMs();
	lcall	_getMs
	mov	_WaitForPacket_sloc4_1_0,dpl
	mov	(_WaitForPacket_sloc4_1_0 + 1),dph
	mov	(_WaitForPacket_sloc4_1_0 + 2),b
	mov	(_WaitForPacket_sloc4_1_0 + 3),a
	C$ydrip.c$909$1$1 ==.
;	apps/ydrip/ydrip.c:909: XDATA uint32 six_minutes = 360000;
	mov	dptr,#_WaitForPacket_six_minutes_1_1
	mov	a,#0x40
	movx	@dptr,a
	inc	dptr
	mov	a,#0x7E
	movx	@dptr,a
	inc	dptr
	mov	a,#0x05
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	C$ydrip.c$912$1$1 ==.
;	apps/ydrip/ydrip.c:912: XDATA char transID[] = "BLANK"; 	// Line added
	mov	dptr,#_WaitForPacket_transID_1_1
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0001)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0002)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0003)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0004)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0005)
	clr	a
	movx	@dptr,a
	C$ydrip.c$913$1$1 ==.
;	apps/ydrip/ydrip.c:913: swap_channel(nChannels[channel], fOffset[channel]);
	mov	dptr,#_WaitForPacket_PARM_3
	movx	a,@dptr
	mov	r3,a
	add	a,#_nChannels
	mov	r1,a
	movx	a,@r1
	mov	_WaitForPacket_sloc0_1_0,a
	mov	a,r3
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	dptr,#_swap_channel_PARM_2
	movx	@dptr,a
	mov	dpl,_WaitForPacket_sloc0_1_0
	push	ar3
	lcall	_swap_channel
	pop	ar3
	C$ydrip.c$914$1$1 ==.
;	apps/ydrip/ydrip.c:914: if (debug_mode) six_minutes = 3000;
	jnb	_debug_mode,00126$
	mov	dptr,#_WaitForPacket_six_minutes_1_1
	mov	a,#0xB8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0B
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$ydrip.c$917$1$1 ==.
;	apps/ydrip/ydrip.c:917: while (!milliseconds || (getMs() - start) < milliseconds) {
00126$:
	mov	dptr,#_WaitForPacket_six_minutes_1_1
	movx	a,@dptr
	mov	_WaitForPacket_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_WaitForPacket_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_WaitForPacket_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_WaitForPacket_sloc1_1_0 + 3),a
	mov	dptr,#_WaitForPacket_milliseconds_1_1
	movx	a,@dptr
	mov	_WaitForPacket_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_WaitForPacket_sloc2_1_0 + 1),a
	clr	a
	mov	_WaitForPacket_sloc3_1_0,a
	mov	(_WaitForPacket_sloc3_1_0 + 1),a
	mov	(_WaitForPacket_sloc3_1_0 + 2),a
	mov	(_WaitForPacket_sloc3_1_0 + 3),a
00117$:
	mov	a,_WaitForPacket_sloc2_1_0
	orl	a,(_WaitForPacket_sloc2_1_0 + 1)
	jz	00118$
	push	ar3
	lcall	_getMs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,_WaitForPacket_sloc4_1_0
	mov	_WaitForPacket_sloc5_1_0,a
	mov	a,r3
	subb	a,(_WaitForPacket_sloc4_1_0 + 1)
	mov	(_WaitForPacket_sloc5_1_0 + 1),a
	mov	a,r6
	subb	a,(_WaitForPacket_sloc4_1_0 + 2)
	mov	(_WaitForPacket_sloc5_1_0 + 2),a
	mov	a,r7
	subb	a,(_WaitForPacket_sloc4_1_0 + 3)
	mov	(_WaitForPacket_sloc5_1_0 + 3),a
	mov	r4,_WaitForPacket_sloc2_1_0
	mov	r5,(_WaitForPacket_sloc2_1_0 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_WaitForPacket_sloc5_1_0
	subb	a,r4
	mov	a,(_WaitForPacket_sloc5_1_0 + 1)
	subb	a,r5
	mov	a,(_WaitForPacket_sloc5_1_0 + 2)
	subb	a,r6
	mov	a,(_WaitForPacket_sloc5_1_0 + 3)
	subb	a,r7
	pop	ar3
	jc	00132$
	ljmp	00119$
00132$:
00118$:
	C$ydrip.c$918$2$2 ==.
;	apps/ydrip/ydrip.c:918: doServices();
	push	ar3
	lcall	_doServices
	C$ydrip.c$919$2$2 ==.
;	apps/ydrip/ydrip.c:919: blink_yellow_led();
	lcall	_blink_yellow_led
	pop	ar3
	C$ydrip.c$920$2$2 ==.
;	apps/ydrip/ydrip.c:920: i++;
	inc	_WaitForPacket_sloc3_1_0
	clr	a
	cjne	a,_WaitForPacket_sloc3_1_0,00133$
	inc	(_WaitForPacket_sloc3_1_0 + 1)
	cjne	a,(_WaitForPacket_sloc3_1_0 + 1),00133$
	inc	(_WaitForPacket_sloc3_1_0 + 2)
	cjne	a,(_WaitForPacket_sloc3_1_0 + 2),00133$
	inc	(_WaitForPacket_sloc3_1_0 + 3)
00133$:
	C$ydrip.c$921$1$1 ==.
;	apps/ydrip/ydrip.c:921: if(!(i % 40000)) {
	mov	r0,#__modulong_PARM_2
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0x9C
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,_WaitForPacket_sloc3_1_0
	mov	dph,(_WaitForPacket_sloc3_1_0 + 1)
	mov	b,(_WaitForPacket_sloc3_1_0 + 2)
	mov	a,(_WaitForPacket_sloc3_1_0 + 3)
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	C$ydrip.c$922$3$3 ==.
;	apps/ydrip/ydrip.c:922: strobe_radio(channel);
	jnz	00104$
	mov	ar6,r3
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	lcall	_strobe_radio
	pop	ar3
00104$:
	C$ydrip.c$924$2$2 ==.
;	apps/ydrip/ydrip.c:924: if(getMs() - start > six_minutes) {
	push	ar3
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r4
	clr	c
	subb	a,_WaitForPacket_sloc4_1_0
	mov	r4,a
	mov	a,r5
	subb	a,(_WaitForPacket_sloc4_1_0 + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_WaitForPacket_sloc4_1_0 + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_WaitForPacket_sloc4_1_0 + 3)
	mov	r7,a
	clr	c
	mov	a,_WaitForPacket_sloc1_1_0
	subb	a,r4
	mov	a,(_WaitForPacket_sloc1_1_0 + 1)
	subb	a,r5
	mov	a,(_WaitForPacket_sloc1_1_0 + 2)
	subb	a,r6
	mov	a,(_WaitForPacket_sloc1_1_0 + 3)
	subb	a,r7
	jnc	00106$
	C$ydrip.c$925$3$4 ==.
;	apps/ydrip/ydrip.c:925: killWithWatchdog();
	push	ar3
	lcall	_killWithWatchdog
	C$ydrip.c$926$4$5 ==.
;	apps/ydrip/ydrip.c:926: LED_RED(1);											// Error Indicator
	orl	_P2DIR,#0x02
	C$ydrip.c$927$3$4 ==.
;	apps/ydrip/ydrip.c:927: delayMs(2000);
	mov	dptr,#0x07D0
	lcall	_delayMs
	pop	ar3
00106$:
	C$ydrip.c$929$2$2 ==.
;	apps/ydrip/ydrip.c:929: if (packet = radioQueueRxCurrentPacket()) {
	push	ar3
	lcall	_radioQueueRxCurrentPacket
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r6
	orl	a,r7
	jnz	00136$
	ljmp	00117$
00136$:
	C$ydrip.c$930$3$6 ==.
;	apps/ydrip/ydrip.c:930: uint8 len = packet[0];
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r7,a
	C$ydrip.c$931$3$6 ==.
;	apps/ydrip/ydrip.c:931: fOffset[channel] += FREQEST;
	mov	a,r3
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	r6,a
	mov	dptr,#_FREQEST
	movx	a,@dptr
	add	a,r6
	movx	@r1,a
	C$ydrip.c$932$1$1 ==.
;	apps/ydrip/ydrip.c:932: memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
	push	ar3
	mov	r0,#_WaitForPacket_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	r6,#0x00
	mov	_WaitForPacket_sloc5_1_0,r4
	mov	(_WaitForPacket_sloc5_1_0 + 1),r5
	mov	(_WaitForPacket_sloc5_1_0 + 2),#0x00
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	r0,#_min8_PARM_2
	mov	a,#0x15
	movx	@r0,a
	push	ar6
	push	ar3
	push	ar2
	lcall	_min8
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar6
	mov	r0,#_memcpy_PARM_3
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	r0,#_memcpy_PARM_2
	mov	a,_WaitForPacket_sloc5_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_WaitForPacket_sloc5_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_WaitForPacket_sloc5_1_0 + 2)
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	push	ar3
	lcall	_memcpy
	C$ydrip.c$933$3$6 ==.
;	apps/ydrip/ydrip.c:933: if(radioCrcPassed()) {
	lcall	_radioCrcPassed
	pop	ar3
	pop	ar3
	jc	00137$
	ljmp	00112$
00137$:
	C$ydrip.c$934$1$1 ==.
;	apps/ydrip/ydrip.c:934: dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
	push	ar3
	mov	r0,#_WaitForPacket_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	mov	a,#_WaitForPacket_transID_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_WaitForPacket_transID_1_1 >> 8)
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	push	ar3
	lcall	_dexcom_src_to_ascii
	C$ydrip.c$936$4$7 ==.
;	apps/ydrip/ydrip.c:936: if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
	mov	r0,#_strcmp_PARM_2
	mov	a,#_transmitter_id
	movx	@r0,a
	inc	r0
	mov	a,#(_transmitter_id >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_WaitForPacket_transID_1_1
	mov	b,#0x00
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	pop	ar7
	pop	ar3
	orl	a,b
	jz	00107$
	jb	_only_listen_for_my_transmitter,00108$
00107$:
	C$ydrip.c$937$5$8 ==.
;	apps/ydrip/ydrip.c:937: pkt->txId -= channel;			// Subtract the channel number from the txID to make it the same regardless of the channel
	mov	a,#0x0B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	clr	c
	subb	a,r3
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$ydrip.c$938$5$8 ==.
;	apps/ydrip/ydrip.c:938: radioQueueRxDoneWithPacket();
	push	ar3
	lcall	_radioQueueRxDoneWithPacket
	pop	ar3
	C$ydrip.c$939$6$9 ==.
;	apps/ydrip/ydrip.c:939: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$ydrip.c$940$5$8 ==.
;	apps/ydrip/ydrip.c:940: last_catch_channel = channel;	// last_catch_channel does not seem to be used anywhere so this may be obsolete code?
	mov	r0,#_last_catch_channel
	mov	a,r3
	movx	@r0,a
	C$ydrip.c$941$5$8 ==.
;	apps/ydrip/ydrip.c:941: return 1;
	mov	dptr,#0x0001
	sjmp	00120$
00108$:
	C$ydrip.c$943$5$10 ==.
;	apps/ydrip/ydrip.c:943: radioQueueRxDoneWithPacket();
	push	ar3
	lcall	_radioQueueRxDoneWithPacket
	pop	ar3
	ljmp	00117$
00112$:
	C$ydrip.c$946$4$11 ==.
;	apps/ydrip/ydrip.c:946: radioQueueRxDoneWithPacket();
	lcall	_radioQueueRxDoneWithPacket
	C$ydrip.c$947$5$12 ==.
;	apps/ydrip/ydrip.c:947: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$ydrip.c$948$4$11 ==.
;	apps/ydrip/ydrip.c:948: return 0;
	mov	dptr,#0x0000
	sjmp	00120$
00119$:
	C$ydrip.c$952$2$13 ==.
;	apps/ydrip/ydrip.c:952: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$ydrip.c$953$1$1 ==.
;	apps/ydrip/ydrip.c:953: return nRet;
	mov	dptr,#0x0000
00120$:
	C$ydrip.c$954$1$1 ==.
	XG$WaitForPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayFor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_delayFor_sloc0_1_0'
;wait_chan                 Allocated with name '_delayFor_wait_chan_1_1'
;------------------------------------------------------------
	G$delayFor$0$0 ==.
	C$ydrip.c$956$1$1 ==.
;	apps/ydrip/ydrip.c:956: XDATA uint32 delayFor(XDATA int wait_chan) {
;	-----------------------------------------
;	 function delayFor
;	-----------------------------------------
_delayFor:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$ydrip.c$957$1$1 ==.
;	apps/ydrip/ydrip.c:957: if(needsTimingCalibration) {
	jnb	_needsTimingCalibration,00102$
	C$ydrip.c$958$2$2 ==.
;	apps/ydrip/ydrip.c:958: return delayedWaitTimes[wait_chan];
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	a,r6
	add	a,#_delayedWaitTimes
	mov	r1,a
	movx	a,@r1
	mov	r4,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ljmp	00107$
00102$:
	C$ydrip.c$960$1$1 ==.
;	apps/ydrip/ydrip.c:960: if(!wait_chan && sequential_missed_packets) {
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	jz	00104$
	C$ydrip.c$961$2$3 ==.
;	apps/ydrip/ydrip.c:961: return waitTimes[wait_chan] + (sequential_missed_packets * wake_earlier_for_next_miss * 2 * 1000);
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	a,r4
	add	a,#_waitTimes
	mov	r1,a
	movx	a,@r1
	mov	_delayFor_sloc0_1_0,a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 1),a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 2),a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 3),a
	mov	r0,#_sequential_missed_packets
	mov	r1,#_wake_earlier_for_next_miss
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	r0,#__mulint_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#0x07D0
	lcall	__mulint
	mov	r4,dpl
	mov	a,dph
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,r4
	add	a,_delayFor_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_delayFor_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r3
	addc	a,(_delayFor_sloc0_1_0 + 2)
	mov	r3,a
	mov	a,r2
	addc	a,(_delayFor_sloc0_1_0 + 3)
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	sjmp	00107$
00104$:
	C$ydrip.c$963$2$4 ==.
;	apps/ydrip/ydrip.c:963: return waitTimes[wait_chan];
	mov	a,r7
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	a,r6
	add	a,#_waitTimes
	mov	r1,a
	movx	a,@r1
	mov	r4,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
00107$:
	C$ydrip.c$965$1$1 ==.
	XG$delayFor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_packet'
;------------------------------------------------------------
	G$get_packet$0$0 ==.
	C$ydrip.c$967$1$1 ==.
;	apps/ydrip/ydrip.c:967: BIT get_packet(Dexcom_packet* pPkt) {
;	-----------------------------------------
;	 function get_packet
;	-----------------------------------------
_get_packet:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_get_packet_pPkt_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$ydrip.c$969$1$1 ==.
;	apps/ydrip/ydrip.c:969: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
	mov	dptr,#_start_channel
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
00104$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
	C$ydrip.c$970$2$2 ==.
;	apps/ydrip/ydrip.c:970: switch(WaitForPacket(delayFor(nChannel), pPkt, nChannel)) {
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_delayFor
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	mov	dptr,#_WaitForPacket_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	r0,#_get_packet_pPkt_1_1
	mov	r1,#_WaitForPacket_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	lcall	_WaitForPacket
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	cjne	r6,#0x00,00118$
	cjne	r7,#0x00,00118$
	sjmp	00106$
00118$:
	cjne	r6,#0x01,00106$
	cjne	r7,#0x00,00106$
	C$ydrip.c$972$3$3 ==.
;	apps/ydrip/ydrip.c:972: needsTimingCalibration = 0;
	clr	_needsTimingCalibration
	C$ydrip.c$973$3$3 ==.
;	apps/ydrip/ydrip.c:973: sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	C$ydrip.c$974$3$3 ==.
;	apps/ydrip/ydrip.c:974: return 1;
	setb	c
	C$ydrip.c$977$1$1 ==.
;	apps/ydrip/ydrip.c:977: }
	sjmp	00110$
00106$:
	C$ydrip.c$969$1$1 ==.
;	apps/ydrip/ydrip.c:969: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00107$:
	C$ydrip.c$979$1$1 ==.
;	apps/ydrip/ydrip.c:979: sequential_missed_packets ++;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	C$ydrip.c$980$1$1 ==.
;	apps/ydrip/ydrip.c:980: if(sequential_missed_packets > misses_until_failure) {
	mov	r0,#_sequential_missed_packets
	mov	r1,#_misses_until_failure
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	jnc	00109$
	C$ydrip.c$981$2$4 ==.
;	apps/ydrip/ydrip.c:981: sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	C$ydrip.c$982$2$4 ==.
;	apps/ydrip/ydrip.c:982: needsTimingCalibration = 1;
	setb	_needsTimingCalibration
00109$:
	C$ydrip.c$984$1$1 ==.
;	apps/ydrip/ydrip.c:984: reset_offsets();
	lcall	_reset_offsets
	C$ydrip.c$985$1$1 ==.
;	apps/ydrip/ydrip.c:985: last_catch_channel = 0;
	mov	r0,#_last_catch_channel
	clr	a
	movx	@r0,a
	C$ydrip.c$986$1$1 ==.
;	apps/ydrip/ydrip.c:986: return 0;
	clr	c
00110$:
	C$ydrip.c$987$1$1 ==.
	XG$get_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setADCInputs'
;------------------------------------------------------------
	G$setADCInputs$0$0 ==.
	C$ydrip.c$989$1$1 ==.
;	apps/ydrip/ydrip.c:989: void setADCInputs() {
;	-----------------------------------------
;	 function setADCInputs
;	-----------------------------------------
_setADCInputs:
	C$ydrip.c$990$1$1 ==.
;	apps/ydrip/ydrip.c:990: P0INP=0; //set pull resistors on pins 0_0 - 0_5 to low
	mov	_P0INP,#0x00
	C$ydrip.c$991$1$1 ==.
	XG$setADCInputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;Pkt                       Allocated with name '_main_Pkt_2_2'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$ydrip.c$994$1$1 ==.
;	apps/ydrip/ydrip.c:994: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$ydrip.c$995$1$1 ==.
;	apps/ydrip/ydrip.c:995: systemInit();
	lcall	_systemInit
	C$ydrip.c$996$1$1 ==.
;	apps/ydrip/ydrip.c:996: initUart1();
	lcall	_initUart1
	C$ydrip.c$998$1$1 ==.
;	apps/ydrip/ydrip.c:998: P1DIR |= 0x08; // RTS
	orl	_P1DIR,#0x08
	C$ydrip.c$999$1$1 ==.
;	apps/ydrip/ydrip.c:999: sleepInit();
	lcall	_sleepInit
	C$ydrip.c$1000$1$1 ==.
;	apps/ydrip/ydrip.c:1000: makeAllOutputs();
	lcall	_makeAllOutputs
	C$ydrip.c$1001$1$1 ==.
;	apps/ydrip/ydrip.c:1001: setADCInputs();
	lcall	_setADCInputs
	C$ydrip.c$1002$1$1 ==.
;	apps/ydrip/ydrip.c:1002: delayMs(1000);
	mov	dptr,#0x03E8
	lcall	_delayMs
	C$ydrip.c$1011$1$1 ==.
;	apps/ydrip/ydrip.c:1011: radioQueueInit();
	lcall	_radioQueueInit
	C$ydrip.c$1012$1$1 ==.
;	apps/ydrip/ydrip.c:1012: radioQueueAllowCrcErrors = 1;
	setb	_radioQueueAllowCrcErrors
	C$ydrip.c$1013$1$1 ==.
;	apps/ydrip/ydrip.c:1013: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$ydrip.c$1014$1$1 ==.
;	apps/ydrip/ydrip.c:1014: enableESP();					// Send ESP-12 asleep here so we don't get any noise while listening for Dexcom packets	
	lcall	_enableESP
	C$ydrip.c$1015$1$1 ==.
;	apps/ydrip/ydrip.c:1015: uartEnable();
	lcall	_uartEnable
	C$ydrip.c$1016$1$1 ==.
;	apps/ydrip/ydrip.c:1016: ESPsleep();						// Disconnect and send the ESP-12 aseep
	lcall	_ESPsleep
	C$ydrip.c$1017$1$1 ==.
;	apps/ydrip/ydrip.c:1017: while(1) {
00112$:
	C$ydrip.c$1019$2$2 ==.
;	apps/ydrip/ydrip.c:1019: memset(&Pkt, 0, sizeof(Dexcom_packet));
	mov	r0,#_memset_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#_memset_PARM_3
	mov	a,#0x15
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_main_Pkt_2_2
	mov	b,#0x00
	lcall	_memset
	C$ydrip.c$1020$2$2 ==.
;	apps/ydrip/ydrip.c:1020: boardService();
	lcall	_boardService
	C$ydrip.c$1022$2$2 ==.
;	apps/ydrip/ydrip.c:1022: if (debug_mode) {
	jnb	_debug_mode,00104$
	C$ydrip.c$1023$3$3 ==.
;	apps/ydrip/ydrip.c:1023: enableESP();
	lcall	_enableESP
	C$ydrip.c$1024$3$3 ==.
;	apps/ydrip/ydrip.c:1024: print_packet(&Pkt);	
	mov	dptr,#_main_Pkt_2_2
	lcall	_print_packet
	C$ydrip.c$1025$3$3 ==.
;	apps/ydrip/ydrip.c:1025: ESPsleep();											// Disconnect and send the ESP asleep
	lcall	_ESPsleep
	C$ydrip.c$1026$3$3 ==.
;	apps/ydrip/ydrip.c:1026: delayMs(5000);
	mov	dptr,#0x1388
	lcall	_delayMs
	sjmp	00105$
00104$:
	C$ydrip.c$1028$3$4 ==.
;	apps/ydrip/ydrip.c:1028: if(get_packet(&Pkt)) {
	mov	dptr,#_main_Pkt_2_2
	lcall	_get_packet
	jnc	00105$
	C$ydrip.c$1029$4$5 ==.
;	apps/ydrip/ydrip.c:1029: RFST = 4;
	mov	_RFST,#0x04
	C$ydrip.c$1030$4$5 ==.
;	apps/ydrip/ydrip.c:1030: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$ydrip.c$1031$4$5 ==.
;	apps/ydrip/ydrip.c:1031: radioMacSleep();									// Switch off radio before switching on ESP to save a bit of battery
	lcall	_radioMacSleep
	C$ydrip.c$1032$4$5 ==.
;	apps/ydrip/ydrip.c:1032: enableESP();
	lcall	_enableESP
	C$ydrip.c$1033$4$5 ==.
;	apps/ydrip/ydrip.c:1033: print_packet(&Pkt);
	mov	dptr,#_main_Pkt_2_2
	lcall	_print_packet
	C$ydrip.c$1034$4$5 ==.
;	apps/ydrip/ydrip.c:1034: ESPsleep();											// Disconnect and send the ESP asleep
	lcall	_ESPsleep
00105$:
	C$ydrip.c$1037$2$2 ==.
;	apps/ydrip/ydrip.c:1037: if(usbPowerPresent()){
	lcall	_usbPowerPresent
	jnc	00107$
	C$ydrip.c$1038$3$6 ==.
;	apps/ydrip/ydrip.c:1038: sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
00107$:
	C$ydrip.c$1040$2$2 ==.
;	apps/ydrip/ydrip.c:1040: if(sequential_missed_packets > 0) {
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	jz	00109$
	C$ydrip.c$1041$3$7 ==.
;	apps/ydrip/ydrip.c:1041: int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	b,a
	movx	a,@r0
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	r0,#_wake_earlier_for_next_miss
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	C$ydrip.c$1042$3$7 ==.
;	apps/ydrip/ydrip.c:1042: int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	r5,#0x00
	add	a,#0xFF
	mov	dpl,a
	mov	a,r5
	addc	a,#0xFF
	mov	dph,a
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r0,#__mulint_PARM_2
	mov	a,r4
	add	a,#0xFF
	movx	@r0,a
	mov	a,r5
	addc	a,#0xFF
	inc	r0
	movx	@r0,a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_wake_earlier_for_next_miss
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$ydrip.c$1043$3$7 ==.
;	apps/ydrip/ydrip.c:1043: int sleep_time = (220 - first_square + second_square);  // temp from 230
	mov	a,#0xDC
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	C$ydrip.c$1044$3$7 ==.
;	apps/ydrip/ydrip.c:1044: goToSleep(sleep_time);
	lcall	_goToSleep
	sjmp	00110$
00109$:
	C$ydrip.c$1046$3$8 ==.
;	apps/ydrip/ydrip.c:1046: goToSleep(235);		// Wixel sleep for 245 seconds - temp from 245
	mov	dptr,#0x00EB
	lcall	_goToSleep
00110$:
	C$ydrip.c$1051$2$2 ==.
;	apps/ydrip/ydrip.c:1051: killWithWatchdog();									// Set interrupts to reset
	lcall	_killWithWatchdog
	C$ydrip.c$1052$3$9 ==.
;	apps/ydrip/ydrip.c:1052: LED_RED(1);											// Error Indicator
	orl	_P2DIR,#0x02
	C$ydrip.c$1053$2$2 ==.
;	apps/ydrip/ydrip.c:1053: delayMs(2000);										// Wait for interrupt to kick in and reset to occur
	mov	dptr,#0x07D0
	lcall	_delayMs
	C$ydrip.c$1057$2$2 ==.
;	apps/ydrip/ydrip.c:1057: radioMacResume();
	lcall	_radioMacResume
	C$ydrip.c$1058$2$2 ==.
;	apps/ydrip/ydrip.c:1058: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$ydrip.c$1059$2$2 ==.
;	apps/ydrip/ydrip.c:1059: radioMacStrobe();
	lcall	_radioMacStrobe
	ljmp	00112$
	C$ydrip.c$1061$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fydrip$_str_1$0$0 == .
__str_1:
	.ascii "dofile("
	.db 0x22
	.ascii "init.lua"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_2$0$0 == .
__str_2:
	.ascii "-- No need to write out .lua files as they seem to already e"
	.ascii "xist --"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_3$0$0 == .
__str_3:
	.ascii "-- Writing out .lua files as they cannot be found --"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_4$0$0 == .
__str_4:
	.ascii "-- Length is %d"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_5$0$0 == .
__str_5:
	.ascii "file.open("
	.db 0x22
	.ascii "init.lua"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "w"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_6$0$0 == .
__str_6:
	.ascii "file.writeline([[gpio.mode(3, gpio.OUTPUT)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_7$0$0 == .
__str_7:
	.ascii "file.writeline([[gpio.write(3, gpio.LOW)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_8$0$0 == .
__str_8:
	.ascii "file.writeline([[gpio.mode(5, gpio.OUTPUT)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_9$0$0 == .
__str_9:
	.ascii "file.writeline([[gpio.write(5, gpio.LOW)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_10$0$0 == .
__str_10:
	.ascii "file.writeline([[gpio.mode(4, gpio.OUTPUT)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_11$0$0 == .
__str_11:
	.ascii "file.close()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_12$0$0 == .
__str_12:
	.ascii "file.remove('googletime.lua')"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_13$0$0 == .
__str_13:
	.ascii "file.open("
	.db 0x22
	.ascii "googletime.lua"
	.db 0x22
	.ascii ", "
	.db 0x22
	.ascii "w"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_14$0$0 == .
__str_14:
	.ascii "file.writeline([[connG=net.createConnection(net.TCP, 0)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_15$0$0 == .
__str_15:
	.ascii "file.writeline([[connG:on("
	.db 0x22
	.ascii "connection"
	.db 0x22
	.ascii ",function(conn, payloa"
	.ascii "d)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_16$0$0 == .
__str_16:
	.ascii "file.writeline([[connG:send("
	.db 0x22
	.ascii "HEAD / HTTP/1.1"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "nHost: google"
	.ascii ".com"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "nAccept: */*"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "n"
	.db 0x22
	.ascii "..]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_17$0$0 == .
__str_17:
	.ascii "file.writeline([["
	.db 0x22
	.ascii "User-Agent: Mozilla/4.0 (compatible; esp82"
	.ascii "66 Lua;)"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "n"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "n"
	.db 0x22
	.ascii ") end)]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_18$0$0 == .
__str_18:
	.ascii "file.writeline("
	.db 0x22
	.ascii "connG:on("
	.db 0x5C
	.db 0x22
	.ascii "receive"
	.db 0x5C
	.db 0x22
	.ascii ", function(connG, payloa"
	.ascii "d)"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_19$0$0 == .
__str_19:
	.ascii "file.writeline("
	.db 0x22
	.ascii "print(string.sub(payload,string.find(payload"
	.ascii ","
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+18,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+21).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_20$0$0 == .
__str_20:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+15,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+16).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_21$0$0 == .
__str_21:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+11,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+12).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_22$0$0 == .
__str_22:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+23,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+24).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_23$0$0 == .
__str_23:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+26,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+27).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_24$0$0 == .
__str_24:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+29,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+30).."
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_25$0$0 == .
__str_25:
	.ascii "file.writeline("
	.db 0x22
	.ascii "string.sub(payload,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Dat"
	.ascii "e:"
	.db 0x5C
	.db 0x22
	.ascii ")+14,string.find(payload,"
	.db 0x5C
	.db 0x22
	.ascii "Date:"
	.db 0x5C
	.db 0x22
	.ascii ")+16).."
	.db 0x5C
	.db 0x22
	.db 0x5C
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.db 0x5C
	.ascii "n"
	.db 0x5C
	.db 0x22
	.ascii ")"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_26$0$0 == .
__str_26:
	.ascii "file.writeline("
	.db 0x22
	.ascii "connG:close()"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_27$0$0 == .
__str_27:
	.ascii "file.writeline("
	.db 0x22
	.ascii "end)"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_28$0$0 == .
__str_28:
	.ascii "file.writeline([[connG:connect(80,'google.com')]])"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_29$0$0 == .
__str_29:
	.ascii "print('connG ready"
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "n')"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_30$0$0 == .
__str_30:
	.ascii "print(wifi.sta.status())"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_31$0$0 == .
__str_31:
	.ascii "gpio.write(4, gpio.HIGH)"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_32$0$0 == .
__str_32:
	.ascii "gpio.write(4, gpio.LOW)"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_33$0$0 == .
__str_33:
	.ascii "wifi.sta.connect()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_34$0$0 == .
__str_34:
	.ascii "wifi.sta.config("
	.db 0x22
	.ascii "HomeWifiName"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "HomeWifiKey"
	.db 0x22
	.ascii ")  wifi.sta.conn"
	.ascii "ect()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_35$0$0 == .
__str_35:
	.ascii "wifi.sta.config("
	.db 0x22
	.ascii "SchoolWifiDdownstairs"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "SchoolPassword"
	.db 0x22
	.ascii ")  w"
	.ascii "ifi.sta.connect()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_36$0$0 == .
__str_36:
	.ascii "wifi.sta.config("
	.db 0x22
	.ascii "SchoolUpstairs"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "SchoolPassword"
	.db 0x22
	.ascii ")  wifi.sta"
	.ascii ".connect()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_37$0$0 == .
__str_37:
	.ascii "wifi.sta.config("
	.db 0x22
	.ascii "Hillside"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "RandomChars"
	.db 0x22
	.ascii ")  wifi.sta.connect("
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_38$0$0 == .
__str_38:
	.ascii "wifi.sta.config("
	.db 0x22
	.ascii "Cagey_HTC"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "Cagey1234567890"
	.db 0x22
	.ascii ")  wifi.sta.con"
	.ascii "nect()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_39$0$0 == .
__str_39:
	.ascii "sk=net.createConnection(net.TCP, 0)"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_40$0$0 == .
__str_40:
	.ascii "sk:on("
	.db 0x22
	.ascii "receive"
	.db 0x22
	.ascii ", function(sck, c) print(c) end )"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_41$0$0 == .
__str_41:
	.ascii "sk:connect("
	.db 0x00
Fydrip$_str_42$0$0 == .
__str_42:
	.ascii ","
	.db 0x22
	.db 0x00
Fydrip$_str_43$0$0 == .
__str_43:
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_44$0$0 == .
__str_44:
	.ascii "dofile("
	.db 0x22
	.ascii "googletime.lua"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_45$0$0 == .
__str_45:
	.ascii "-- **DEBUG** length of C is %d"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_46$0$0 == .
__str_46:
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_47$0$0 == .
__str_47:
	.ascii "Jan"
	.db 0x00
Fydrip$_str_48$0$0 == .
__str_48:
	.ascii "Feb"
	.db 0x00
Fydrip$_str_49$0$0 == .
__str_49:
	.ascii "Mar"
	.db 0x00
Fydrip$_str_50$0$0 == .
__str_50:
	.ascii "Apr"
	.db 0x00
Fydrip$_str_51$0$0 == .
__str_51:
	.ascii "May"
	.db 0x00
Fydrip$_str_52$0$0 == .
__str_52:
	.ascii "Jun"
	.db 0x00
Fydrip$_str_53$0$0 == .
__str_53:
	.ascii "Jul"
	.db 0x00
Fydrip$_str_54$0$0 == .
__str_54:
	.ascii "Aug"
	.db 0x00
Fydrip$_str_55$0$0 == .
__str_55:
	.ascii "Sep"
	.db 0x00
Fydrip$_str_56$0$0 == .
__str_56:
	.ascii "Oct"
	.db 0x00
Fydrip$_str_57$0$0 == .
__str_57:
	.ascii "Nov"
	.db 0x00
Fydrip$_str_58$0$0 == .
__str_58:
	.ascii "Dec"
	.db 0x00
Fydrip$_str_59$0$0 == .
__str_59:
	.ascii "sk:close()"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_60$0$0 == .
__str_60:
	.ascii "node.dsleep(270000000)"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_62$0$0 == .
__str_62:
	.ascii "-- **DEBUG** iv is %s"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_63$0$0 == .
__str_63:
	.ascii "%s %hhu %s %lu %lu %d %d 100 -6.127100,53.241300"
	.db 0x00
Fydrip$_str_64$0$0 == .
__str_64:
	.ascii "sk:send("
	.db 0x22
	.ascii "yDrip(AES): "
	.db 0x00
Fydrip$_str_65$0$0 == .
__str_65:
	.ascii "%02x"
	.db 0x00
Fydrip$_str_66$0$0 == .
__str_66:
	.ascii " "
	.db 0x00
Fydrip$_str_67$0$0 == .
__str_67:
	.ascii "sk:send("
	.db 0x22
	.ascii "yDrip: "
	.db 0x00
Fydrip$_str_68$0$0 == .
__str_68:
	.db 0x5C
	.ascii "r"
	.db 0x5C
	.ascii "n"
	.db 0x22
	.ascii ")"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fydrip$_str_70$0$0 == .
__str_70:
	.ascii "6F5YP"
	.db 0x00
Fydrip$_str_71$0$0 == .
__str_71:
	.ascii "REPLACEME.DuckDNS.org"
	.db 0x00
Fydrip$_str_72$0$0 == .
__str_72:
	.ascii "17611"
	.db 0x00
Fydrip$_str_73$0$0 == .
__str_73:
	.ascii "GGyDrip"
	.db 0x00
	.area XINIT   (CODE)
Fydrip$__xinit_transmitter_id$0$0 == .
__xinit__transmitter_id:
	.ascii "6F5YP"
	.db 0x00
Fydrip$__xinit_dexie_host_address$0$0 == .
__xinit__dexie_host_address:
	.ascii "REPLACEME.DuckDNS.org"
	.db 0x00
Fydrip$__xinit_dexie_host_port$0$0 == .
__xinit__dexie_host_port:
	.ascii "17611"
	.db 0x00
Fydrip$__xinit_wixFone_ID$0$0 == .
__xinit__wixFone_ID:
	.ascii "GGyDrip"
	.db 0x00
Fydrip$__xinit_key$0$0 == .
__xinit__key:
	.db #0x4D	; 77	'M'
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0x44	; 68	'D'
	.db #0x72	; 114	'r'
	.db #0x7C	; 124
	.db #0x50	; 80	'P'
	.db #0x26	; 38
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
	.db #0x72	; 114	'r'
	.db #0x40	; 64
	.db #0x5B	; 91
	.db #0x4B	; 75	'K'
	.db #0x21	; 33
Fydrip$__xinit_start_channel$0$0 == .
__xinit__start_channel:
	.db #0x00	;  0
Fydrip$__xinit_defaultfOffset$0$0 == .
__xinit__defaultfOffset:
	.db #0xCE	; -50
	.db #0xD5	; -43
	.db #0xE6	; -26
	.db #0xE5	; -27
Fydrip$__xinit_PM2_BUF$0$0 == .
__xinit__PM2_BUF:
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
Fydrip$__xinit_dmaDesc$0$0 == .
__xinit__dmaDesc:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0xBE	; 190
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x20	; 32
	.db #0x42	; 66	'B'
Fydrip$__xinit_AT_TIMEOUT$0$0 == .
__xinit__AT_TIMEOUT:
	.db #0x01	; 1
Fydrip$__xinit_defaultWaitTime$0$0 == .
__xinit__defaultWaitTime:
	.byte #0xF4,#0x01,#0x00,#0x00	; 500
Fydrip$__xinit_SrcNameTable$0$0 == .
__xinit__SrcNameTable:
	.db #0x30	;  48	'0'
	.db #0x31	;  49	'1'
	.db #0x32	;  50	'2'
	.db #0x33	;  51	'3'
	.db #0x34	;  52	'4'
	.db #0x35	;  53	'5'
	.db #0x36	;  54	'6'
	.db #0x37	;  55	'7'
	.db #0x38	;  56	'8'
	.db #0x39	;  57	'9'
	.db #0x41	;  65	'A'
	.db #0x42	;  66	'B'
	.db #0x43	;  67	'C'
	.db #0x44	;  68	'D'
	.db #0x45	;  69	'E'
	.db #0x46	;  70	'F'
	.db #0x47	;  71	'G'
	.db #0x48	;  72	'H'
	.db #0x4A	;  74	'J'
	.db #0x4B	;  75	'K'
	.db #0x4C	;  76	'L'
	.db #0x4D	;  77	'M'
	.db #0x4E	;  78	'N'
	.db #0x50	;  80	'P'
	.db #0x51	;  81	'Q'
	.db #0x52	;  82	'R'
	.db #0x53	;  83	'S'
	.db #0x54	;  84	'T'
	.db #0x55	;  85	'U'
	.db #0x57	;  87	'W'
	.db #0x58	;  88	'X'
	.db #0x59	;  89	'Y'
	.area CABS    (ABS,CODE)
