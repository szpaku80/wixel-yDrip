M:uart1
F:G$uart1Init$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1SetBaudRate$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1SetParity$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1SetStopBits$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1TxAvailable$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$uart1TxSend$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1TxSendByte$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$uart1RxAvailable$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$uart1RxReceiveByte$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$ISR_UTX1$0$0({2}DF,SV:S),Z,0,0,1,14,0
F:G$ISR_URX1$0$0({2}DF,SV:S),Z,0,0,1,3,0
F:G$uartTxPendingBytes$0$0({2}DF,SC:U),C,0,0,0,0,0
T:Fuart1$__00010000[({0}S:S$SRCADDRH$0$0({1}SC:U),Z,0,0)({1}S:S$SRCADDRL$0$0({1}SC:U),Z,0,0)({2}S:S$DESTADDRH$0$0({1}SC:U),Z,0,0)({3}S:S$DESTADDRL$0$0({1}SC:U),Z,0,0)({4}S:S$VLEN_LENH$0$0({1}SC:U),Z,0,0)({5}S:S$LENL$0$0({1}SC:U),Z,0,0)({6}S:S$DC6$0$0({1}SC:U),Z,0,0)({7}S:S$DC7$0$0({1}SC:U),Z,0,0)]
T:Fuart1$ACM_LINE_CODING[({0}S:S$dwDTERate$0$0({4}SL:U),Z,0,0)({4}S:S$bCharFormat$0$0({1}SC:U),Z,0,0)({5}S:S$bParityType$0$0({1}SC:U),Z,0,0)({6}S:S$bDataBits$0$0({1}SC:U),Z,0,0)]
S:Fuart1$uartTxBufferMainLoopIndex$0$0({1}SC:U),E,0,0
S:Fuart1$uartTxBufferInterruptIndex$0$0({1}SC:U),E,0,0
S:Fuart1$uartRxBufferMainLoopIndex$0$0({1}SC:U),E,0,0
S:Fuart1$uartRxBufferInterruptIndex$0$0({1}SC:U),E,0,0
S:Luart1.uart1SetBaudRate$sloc0$1$0({4}SL:U),E,0,0
S:G$uart1RxParityErrorOccurred$0$0({1}SB0$1:U),H,0,0
S:G$uart1RxFramingErrorOccurred$0$0({1}SB0$1:U),H,0,0
S:G$uart1RxBufferFullOccurred$0$0({1}SB0$1:U),H,0,0
S:Luart1.uart1SetBaudRate$baud$1$1({4}SL:U),R,0,0,[r7,r6,r5,r4]
S:Luart1.uart1SetBaudRate$baudMPlus256$1$1({4}SL:U),R,0,0,[r4,r5,r6,r7]
S:Luart1.uart1SetBaudRate$baudE$1$1({1}SC:U),R,0,0,[r3]
S:Luart1.uart1SetParity$parity$1$1({1}SC:U),R,0,0,[r7]
S:Luart1.uart1SetParity$tmp$1$1({1}SC:U),R,0,0,[r6]
S:Luart1.uart1SetStopBits$stopBits$1$1({1}SC:U),R,0,0,[r7]
S:Luart1.uart1TxSend$size$1$1({1}SC:U),P,0,0
S:Luart1.uart1TxSend$buffer$1$1({2}DX,SC:U),R,0,0,[r6,r7]
S:Luart1.uart1TxSendByte$byte$1$1({1}SC:U),R,0,0,[r7]
S:Luart1.uart1RxReceiveByte$byte$1$1({1}SC:U),R,0,0,[r7]
S:Luart1.ISR_URX1$csr$1$1({1}SC:U),R,0,0,[r7]
S:Fuart1$SYNC1$0$0({1}SC:U),F,0,0
S:Fuart1$SYNC0$0$0({1}SC:U),F,0,0
S:Fuart1$PKTLEN$0$0({1}SC:U),F,0,0
S:Fuart1$PKTCTRL1$0$0({1}SC:U),F,0,0
S:Fuart1$PKTCTRL0$0$0({1}SC:U),F,0,0
S:Fuart1$ADDR$0$0({1}SC:U),F,0,0
S:Fuart1$CHANNR$0$0({1}SC:U),F,0,0
S:Fuart1$FSCTRL1$0$0({1}SC:U),F,0,0
S:Fuart1$FSCTRL0$0$0({1}SC:U),F,0,0
S:Fuart1$FREQ2$0$0({1}SC:U),F,0,0
S:Fuart1$FREQ1$0$0({1}SC:U),F,0,0
S:Fuart1$FREQ0$0$0({1}SC:U),F,0,0
S:Fuart1$MDMCFG4$0$0({1}SC:U),F,0,0
S:Fuart1$MDMCFG3$0$0({1}SC:U),F,0,0
S:Fuart1$MDMCFG2$0$0({1}SC:U),F,0,0
S:Fuart1$MDMCFG1$0$0({1}SC:U),F,0,0
S:Fuart1$MDMCFG0$0$0({1}SC:U),F,0,0
S:Fuart1$DEVIATN$0$0({1}SC:U),F,0,0
S:Fuart1$MCSM2$0$0({1}SC:U),F,0,0
S:Fuart1$MCSM1$0$0({1}SC:U),F,0,0
S:Fuart1$MCSM0$0$0({1}SC:U),F,0,0
S:Fuart1$FOCCFG$0$0({1}SC:U),F,0,0
S:Fuart1$BSCFG$0$0({1}SC:U),F,0,0
S:Fuart1$AGCCTRL2$0$0({1}SC:U),F,0,0
S:Fuart1$AGCCTRL1$0$0({1}SC:U),F,0,0
S:Fuart1$AGCCTRL0$0$0({1}SC:U),F,0,0
S:Fuart1$FREND1$0$0({1}SC:U),F,0,0
S:Fuart1$FREND0$0$0({1}SC:U),F,0,0
S:Fuart1$FSCAL3$0$0({1}SC:U),F,0,0
S:Fuart1$FSCAL2$0$0({1}SC:U),F,0,0
S:Fuart1$FSCAL1$0$0({1}SC:U),F,0,0
S:Fuart1$FSCAL0$0$0({1}SC:U),F,0,0
S:Fuart1$TEST2$0$0({1}SC:U),F,0,0
S:Fuart1$TEST1$0$0({1}SC:U),F,0,0
S:Fuart1$TEST0$0$0({1}SC:U),F,0,0
S:Fuart1$PA_TABLE0$0$0({1}SC:U),F,0,0
S:Fuart1$IOCFG2$0$0({1}SC:U),F,0,0
S:Fuart1$IOCFG1$0$0({1}SC:U),F,0,0
S:Fuart1$IOCFG0$0$0({1}SC:U),F,0,0
S:Fuart1$PARTNUM$0$0({1}SC:U),F,0,0
S:Fuart1$VERSION$0$0({1}SC:U),F,0,0
S:Fuart1$FREQEST$0$0({1}SC:U),F,0,0
S:Fuart1$LQI$0$0({1}SC:U),F,0,0
S:Fuart1$RSSI$0$0({1}SC:U),F,0,0
S:Fuart1$MARCSTATE$0$0({1}SC:U),F,0,0
S:Fuart1$PKTSTATUS$0$0({1}SC:U),F,0,0
S:Fuart1$VCO_VC_DAC$0$0({1}SC:U),F,0,0
S:Fuart1$I2SCFG0$0$0({1}SC:U),F,0,0
S:Fuart1$I2SCFG1$0$0({1}SC:U),F,0,0
S:Fuart1$I2SDATL$0$0({1}SC:U),F,0,0
S:Fuart1$I2SDATH$0$0({1}SC:U),F,0,0
S:Fuart1$I2SWCNT$0$0({1}SC:U),F,0,0
S:Fuart1$I2SSTAT$0$0({1}SC:U),F,0,0
S:Fuart1$I2SCLKF0$0$0({1}SC:U),F,0,0
S:Fuart1$I2SCLKF1$0$0({1}SC:U),F,0,0
S:Fuart1$I2SCLKF2$0$0({1}SC:U),F,0,0
S:Fuart1$USBADDR$0$0({1}SC:U),F,0,0
S:Fuart1$USBPOW$0$0({1}SC:U),F,0,0
S:Fuart1$USBIIF$0$0({1}SC:U),F,0,0
S:Fuart1$USBOIF$0$0({1}SC:U),F,0,0
S:Fuart1$USBCIF$0$0({1}SC:U),F,0,0
S:Fuart1$USBIIE$0$0({1}SC:U),F,0,0
S:Fuart1$USBOIE$0$0({1}SC:U),F,0,0
S:Fuart1$USBCIE$0$0({1}SC:U),F,0,0
S:Fuart1$USBFRML$0$0({1}SC:U),F,0,0
S:Fuart1$USBFRMH$0$0({1}SC:U),F,0,0
S:Fuart1$USBINDEX$0$0({1}SC:U),F,0,0
S:Fuart1$USBMAXI$0$0({1}SC:U),F,0,0
S:Fuart1$USBCSIL$0$0({1}SC:U),F,0,0
S:Fuart1$USBCSIH$0$0({1}SC:U),F,0,0
S:Fuart1$USBMAXO$0$0({1}SC:U),F,0,0
S:Fuart1$USBCSOL$0$0({1}SC:U),F,0,0
S:Fuart1$USBCSOH$0$0({1}SC:U),F,0,0
S:Fuart1$USBCNTL$0$0({1}SC:U),F,0,0
S:Fuart1$USBCNTH$0$0({1}SC:U),F,0,0
S:Fuart1$USBF0$0$0({1}SC:U),F,0,0
S:Fuart1$USBF1$0$0({1}SC:U),F,0,0
S:Fuart1$USBF2$0$0({1}SC:U),F,0,0
S:Fuart1$USBF3$0$0({1}SC:U),F,0,0
S:Fuart1$USBF4$0$0({1}SC:U),F,0,0
S:Fuart1$USBF5$0$0({1}SC:U),F,0,0
S:Fuart1$uartTxBuffer$0$0({256}DA256,SC:U),F,0,0
S:Fuart1$uartRxBuffer$0$0({256}DA256,SC:U),F,0,0
S:Fuart1$P0$0$0({1}SC:U),I,0,0
S:Fuart1$SP$0$0({1}SC:U),I,0,0
S:Fuart1$DPL0$0$0({1}SC:U),I,0,0
S:Fuart1$DPH0$0$0({1}SC:U),I,0,0
S:Fuart1$DPL1$0$0({1}SC:U),I,0,0
S:Fuart1$DPH1$0$0({1}SC:U),I,0,0
S:Fuart1$U0CSR$0$0({1}SC:U),I,0,0
S:Fuart1$PCON$0$0({1}SC:U),I,0,0
S:Fuart1$TCON$0$0({1}SC:U),I,0,0
S:Fuart1$P0IFG$0$0({1}SC:U),I,0,0
S:Fuart1$P1IFG$0$0({1}SC:U),I,0,0
S:Fuart1$P2IFG$0$0({1}SC:U),I,0,0
S:Fuart1$PICTL$0$0({1}SC:U),I,0,0
S:Fuart1$P1IEN$0$0({1}SC:U),I,0,0
S:Fuart1$P0INP$0$0({1}SC:U),I,0,0
S:Fuart1$P1$0$0({1}SC:U),I,0,0
S:Fuart1$RFIM$0$0({1}SC:U),I,0,0
S:Fuart1$DPS$0$0({1}SC:U),I,0,0
S:Fuart1$MPAGE$0$0({1}SC:U),I,0,0
S:Fuart1$ENDIAN$0$0({1}SC:U),I,0,0
S:Fuart1$S0CON$0$0({1}SC:U),I,0,0
S:Fuart1$IEN2$0$0({1}SC:U),I,0,0
S:Fuart1$S1CON$0$0({1}SC:U),I,0,0
S:Fuart1$T2CT$0$0({1}SC:U),I,0,0
S:Fuart1$T2PR$0$0({1}SC:U),I,0,0
S:Fuart1$T2CTL$0$0({1}SC:U),I,0,0
S:Fuart1$P2$0$0({1}SC:U),I,0,0
S:Fuart1$WORIRQ$0$0({1}SC:U),I,0,0
S:Fuart1$WORCTRL$0$0({1}SC:U),I,0,0
S:Fuart1$WOREVT0$0$0({1}SC:U),I,0,0
S:Fuart1$WOREVT1$0$0({1}SC:U),I,0,0
S:Fuart1$WORTIME0$0$0({1}SC:U),I,0,0
S:Fuart1$WORTIME1$0$0({1}SC:U),I,0,0
S:Fuart1$IEN0$0$0({1}SC:U),I,0,0
S:Fuart1$IP0$0$0({1}SC:U),I,0,0
S:Fuart1$FWT$0$0({1}SC:U),I,0,0
S:Fuart1$FADDRL$0$0({1}SC:U),I,0,0
S:Fuart1$FADDRH$0$0({1}SC:U),I,0,0
S:Fuart1$FCTL$0$0({1}SC:U),I,0,0
S:Fuart1$FWDATA$0$0({1}SC:U),I,0,0
S:Fuart1$ENCDI$0$0({1}SC:U),I,0,0
S:Fuart1$ENCDO$0$0({1}SC:U),I,0,0
S:Fuart1$ENCCS$0$0({1}SC:U),I,0,0
S:Fuart1$ADCCON1$0$0({1}SC:U),I,0,0
S:Fuart1$ADCCON2$0$0({1}SC:U),I,0,0
S:Fuart1$ADCCON3$0$0({1}SC:U),I,0,0
S:Fuart1$IEN1$0$0({1}SC:U),I,0,0
S:Fuart1$IP1$0$0({1}SC:U),I,0,0
S:Fuart1$ADCL$0$0({1}SC:U),I,0,0
S:Fuart1$ADCH$0$0({1}SC:U),I,0,0
S:Fuart1$RNDL$0$0({1}SC:U),I,0,0
S:Fuart1$RNDH$0$0({1}SC:U),I,0,0
S:Fuart1$SLEEP$0$0({1}SC:U),I,0,0
S:Fuart1$IRCON$0$0({1}SC:U),I,0,0
S:Fuart1$U0DBUF$0$0({1}SC:U),I,0,0
S:Fuart1$U0BAUD$0$0({1}SC:U),I,0,0
S:Fuart1$U0UCR$0$0({1}SC:U),I,0,0
S:Fuart1$U0GCR$0$0({1}SC:U),I,0,0
S:Fuart1$CLKCON$0$0({1}SC:U),I,0,0
S:Fuart1$MEMCTR$0$0({1}SC:U),I,0,0
S:Fuart1$WDCTL$0$0({1}SC:U),I,0,0
S:Fuart1$T3CNT$0$0({1}SC:U),I,0,0
S:Fuart1$T3CTL$0$0({1}SC:U),I,0,0
S:Fuart1$T3CCTL0$0$0({1}SC:U),I,0,0
S:Fuart1$T3CC0$0$0({1}SC:U),I,0,0
S:Fuart1$T3CCTL1$0$0({1}SC:U),I,0,0
S:Fuart1$T3CC1$0$0({1}SC:U),I,0,0
S:Fuart1$PSW$0$0({1}SC:U),I,0,0
S:Fuart1$DMAIRQ$0$0({1}SC:U),I,0,0
S:Fuart1$DMA1CFGL$0$0({1}SC:U),I,0,0
S:Fuart1$DMA1CFGH$0$0({1}SC:U),I,0,0
S:Fuart1$DMA0CFGL$0$0({1}SC:U),I,0,0
S:Fuart1$DMA0CFGH$0$0({1}SC:U),I,0,0
S:Fuart1$DMAARM$0$0({1}SC:U),I,0,0
S:Fuart1$DMAREQ$0$0({1}SC:U),I,0,0
S:Fuart1$TIMIF$0$0({1}SC:U),I,0,0
S:Fuart1$RFD$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC0L$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC0H$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC1L$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC1H$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC2L$0$0({1}SC:U),I,0,0
S:Fuart1$T1CC2H$0$0({1}SC:U),I,0,0
S:Fuart1$ACC$0$0({1}SC:U),I,0,0
S:Fuart1$RFST$0$0({1}SC:U),I,0,0
S:Fuart1$T1CNTL$0$0({1}SC:U),I,0,0
S:Fuart1$T1CNTH$0$0({1}SC:U),I,0,0
S:Fuart1$T1CTL$0$0({1}SC:U),I,0,0
S:Fuart1$T1CCTL0$0$0({1}SC:U),I,0,0
S:Fuart1$T1CCTL1$0$0({1}SC:U),I,0,0
S:Fuart1$T1CCTL2$0$0({1}SC:U),I,0,0
S:Fuart1$IRCON2$0$0({1}SC:U),I,0,0
S:Fuart1$RFIF$0$0({1}SC:U),I,0,0
S:Fuart1$T4CNT$0$0({1}SC:U),I,0,0
S:Fuart1$T4CTL$0$0({1}SC:U),I,0,0
S:Fuart1$T4CCTL0$0$0({1}SC:U),I,0,0
S:Fuart1$T4CC0$0$0({1}SC:U),I,0,0
S:Fuart1$T4CCTL1$0$0({1}SC:U),I,0,0
S:Fuart1$T4CC1$0$0({1}SC:U),I,0,0
S:Fuart1$B$0$0({1}SC:U),I,0,0
S:Fuart1$PERCFG$0$0({1}SC:U),I,0,0
S:Fuart1$ADCCFG$0$0({1}SC:U),I,0,0
S:Fuart1$P0SEL$0$0({1}SC:U),I,0,0
S:Fuart1$P1SEL$0$0({1}SC:U),I,0,0
S:Fuart1$P2SEL$0$0({1}SC:U),I,0,0
S:Fuart1$P1INP$0$0({1}SC:U),I,0,0
S:Fuart1$P2INP$0$0({1}SC:U),I,0,0
S:Fuart1$U1CSR$0$0({1}SC:U),I,0,0
S:Fuart1$U1DBUF$0$0({1}SC:U),I,0,0
S:Fuart1$U1BAUD$0$0({1}SC:U),I,0,0
S:Fuart1$U1UCR$0$0({1}SC:U),I,0,0
S:Fuart1$U1GCR$0$0({1}SC:U),I,0,0
S:Fuart1$P0DIR$0$0({1}SC:U),I,0,0
S:Fuart1$P1DIR$0$0({1}SC:U),I,0,0
S:Fuart1$P2DIR$0$0({1}SC:U),I,0,0
S:Fuart1$DMA0CFG$0$0({2}SI:U),I,0,0
S:Fuart1$DMA1CFG$0$0({2}SI:U),I,0,0
S:Fuart1$FADDR$0$0({2}SI:U),I,0,0
S:Fuart1$ADC$0$0({2}SI:U),I,0,0
S:Fuart1$T1CC0$0$0({2}SI:U),I,0,0
S:Fuart1$T1CC1$0$0({2}SI:U),I,0,0
S:Fuart1$T1CC2$0$0({2}SI:U),I,0,0
S:Fuart1$P0_0$0$0({1}SX:U),J,0,0
S:Fuart1$P0_1$0$0({1}SX:U),J,0,0
S:Fuart1$P0_2$0$0({1}SX:U),J,0,0
S:Fuart1$P0_3$0$0({1}SX:U),J,0,0
S:Fuart1$P0_4$0$0({1}SX:U),J,0,0
S:Fuart1$P0_5$0$0({1}SX:U),J,0,0
S:Fuart1$P0_6$0$0({1}SX:U),J,0,0
S:Fuart1$P0_7$0$0({1}SX:U),J,0,0
S:Fuart1$_TCON_0$0$0({1}SX:U),J,0,0
S:Fuart1$RFTXRXIF$0$0({1}SX:U),J,0,0
S:Fuart1$_TCON_2$0$0({1}SX:U),J,0,0
S:Fuart1$URX0IF$0$0({1}SX:U),J,0,0
S:Fuart1$_TCON_4$0$0({1}SX:U),J,0,0
S:Fuart1$ADCIF$0$0({1}SX:U),J,0,0
S:Fuart1$_TCON_6$0$0({1}SX:U),J,0,0
S:Fuart1$URX1IF$0$0({1}SX:U),J,0,0
S:Fuart1$P1_0$0$0({1}SX:U),J,0,0
S:Fuart1$P1_1$0$0({1}SX:U),J,0,0
S:Fuart1$P1_2$0$0({1}SX:U),J,0,0
S:Fuart1$P1_3$0$0({1}SX:U),J,0,0
S:Fuart1$P1_4$0$0({1}SX:U),J,0,0
S:Fuart1$P1_5$0$0({1}SX:U),J,0,0
S:Fuart1$P1_6$0$0({1}SX:U),J,0,0
S:Fuart1$P1_7$0$0({1}SX:U),J,0,0
S:Fuart1$ENCIF_0$0$0({1}SX:U),J,0,0
S:Fuart1$ENCIF_1$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON2$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON3$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON4$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON5$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON6$0$0({1}SX:U),J,0,0
S:Fuart1$_SOCON7$0$0({1}SX:U),J,0,0
S:Fuart1$P2_0$0$0({1}SX:U),J,0,0
S:Fuart1$P2_1$0$0({1}SX:U),J,0,0
S:Fuart1$P2_2$0$0({1}SX:U),J,0,0
S:Fuart1$P2_3$0$0({1}SX:U),J,0,0
S:Fuart1$P2_4$0$0({1}SX:U),J,0,0
S:Fuart1$P2_5$0$0({1}SX:U),J,0,0
S:Fuart1$P2_6$0$0({1}SX:U),J,0,0
S:Fuart1$P2_7$0$0({1}SX:U),J,0,0
S:Fuart1$RFTXRXIE$0$0({1}SX:U),J,0,0
S:Fuart1$ADCIE$0$0({1}SX:U),J,0,0
S:Fuart1$URX0IE$0$0({1}SX:U),J,0,0
S:Fuart1$URX1IE$0$0({1}SX:U),J,0,0
S:Fuart1$ENCIE$0$0({1}SX:U),J,0,0
S:Fuart1$STIE$0$0({1}SX:U),J,0,0
S:Fuart1$_IEN06$0$0({1}SX:U),J,0,0
S:Fuart1$EA$0$0({1}SX:U),J,0,0
S:Fuart1$DMAIE$0$0({1}SX:U),J,0,0
S:Fuart1$T1IE$0$0({1}SX:U),J,0,0
S:Fuart1$T2IE$0$0({1}SX:U),J,0,0
S:Fuart1$T3IE$0$0({1}SX:U),J,0,0
S:Fuart1$T4IE$0$0({1}SX:U),J,0,0
S:Fuart1$P0IE$0$0({1}SX:U),J,0,0
S:Fuart1$_IEN16$0$0({1}SX:U),J,0,0
S:Fuart1$_IEN17$0$0({1}SX:U),J,0,0
S:Fuart1$DMAIF$0$0({1}SX:U),J,0,0
S:Fuart1$T1IF$0$0({1}SX:U),J,0,0
S:Fuart1$T2IF$0$0({1}SX:U),J,0,0
S:Fuart1$T3IF$0$0({1}SX:U),J,0,0
S:Fuart1$T4IF$0$0({1}SX:U),J,0,0
S:Fuart1$P0IF$0$0({1}SX:U),J,0,0
S:Fuart1$_IRCON6$0$0({1}SX:U),J,0,0
S:Fuart1$STIF$0$0({1}SX:U),J,0,0
S:Fuart1$P$0$0({1}SX:U),J,0,0
S:Fuart1$F1$0$0({1}SX:U),J,0,0
S:Fuart1$OV$0$0({1}SX:U),J,0,0
S:Fuart1$RS0$0$0({1}SX:U),J,0,0
S:Fuart1$RS1$0$0({1}SX:U),J,0,0
S:Fuart1$F0$0$0({1}SX:U),J,0,0
S:Fuart1$AC$0$0({1}SX:U),J,0,0
S:Fuart1$CY$0$0({1}SX:U),J,0,0
S:Fuart1$T3OVFIF$0$0({1}SX:U),J,0,0
S:Fuart1$T3CH0IF$0$0({1}SX:U),J,0,0
S:Fuart1$T3CH1IF$0$0({1}SX:U),J,0,0
S:Fuart1$T4OVFIF$0$0({1}SX:U),J,0,0
S:Fuart1$T4CH0IF$0$0({1}SX:U),J,0,0
S:Fuart1$T4CH1IF$0$0({1}SX:U),J,0,0
S:Fuart1$OVFIM$0$0({1}SX:U),J,0,0
S:Fuart1$_TIMIF7$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_0$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_1$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_2$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_3$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_4$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_5$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_6$0$0({1}SX:U),J,0,0
S:Fuart1$ACC_7$0$0({1}SX:U),J,0,0
S:Fuart1$P2IF$0$0({1}SX:U),J,0,0
S:Fuart1$UTX0IF$0$0({1}SX:U),J,0,0
S:Fuart1$UTX1IF$0$0({1}SX:U),J,0,0
S:Fuart1$P1IF$0$0({1}SX:U),J,0,0
S:Fuart1$WDTIF$0$0({1}SX:U),J,0,0
S:Fuart1$_IRCON25$0$0({1}SX:U),J,0,0
S:Fuart1$_IRCON26$0$0({1}SX:U),J,0,0
S:Fuart1$_IRCON27$0$0({1}SX:U),J,0,0
S:Fuart1$B_0$0$0({1}SX:U),J,0,0
S:Fuart1$B_1$0$0({1}SX:U),J,0,0
S:Fuart1$B_2$0$0({1}SX:U),J,0,0
S:Fuart1$B_3$0$0({1}SX:U),J,0,0
S:Fuart1$B_4$0$0({1}SX:U),J,0,0
S:Fuart1$B_5$0$0({1}SX:U),J,0,0
S:Fuart1$B_6$0$0({1}SX:U),J,0,0
S:Fuart1$B_7$0$0({1}SX:U),J,0,0
S:Fuart1$U1ACTIVE$0$0({1}SX:U),J,0,0
S:Fuart1$U1TX_BYTE$0$0({1}SX:U),J,0,0
S:Fuart1$U1RX_BYTE$0$0({1}SX:U),J,0,0
S:Fuart1$U1ERR$0$0({1}SX:U),J,0,0
S:Fuart1$U1FE$0$0({1}SX:U),J,0,0
S:Fuart1$U1SLAVE$0$0({1}SX:U),J,0,0
S:Fuart1$U1RE$0$0({1}SX:U),J,0,0
S:Fuart1$U1MODE$0$0({1}SX:U),J,0,0
S:G$uartTxPendingBytes$0$0({2}DF,SC:U),C,0,0
