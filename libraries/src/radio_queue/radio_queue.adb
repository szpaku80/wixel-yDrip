M:radio_queue
F:G$radioQueueInit$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:Fradio_queue$randomTxDelay$0$0({2}DF,SC:U),C,0,0,0,0,0
F:G$radioQueueTxAvailable$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$radioQueueTxQueued$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$radioQueueTxCurrentPacket$0$0({2}DF,DX,SC:U),Z,0,0,0,0,0
F:G$radioQueueTxSendPacket$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioQueueRxCurrentPacket$0$0({2}DF,DX,SC:U),Z,0,0,0,0,0
F:G$radioQueueRxDoneWithPacket$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:Fradio_queue$takeInitiative$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
T:Fradio_queue$__00010000[({0}S:S$SRCADDRH$0$0({1}SC:U),Z,0,0)({1}S:S$SRCADDRL$0$0({1}SC:U),Z,0,0)({2}S:S$DESTADDRH$0$0({1}SC:U),Z,0,0)({3}S:S$DESTADDRL$0$0({1}SC:U),Z,0,0)({4}S:S$VLEN_LENH$0$0({1}SC:U),Z,0,0)({5}S:S$LENL$0$0({1}SC:U),Z,0,0)({6}S:S$DC6$0$0({1}SC:U),Z,0,0)({7}S:S$DC7$0$0({1}SC:U),Z,0,0)]
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$radioMacEventHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Fradio_queue$radioQueueRxMainLoopIndex$0$0({1}SC:U),E,0,0
S:Fradio_queue$radioQueueRxInterruptIndex$0$0({1}SC:U),E,0,0
S:Fradio_queue$radioQueueTxMainLoopIndex$0$0({1}SC:U),E,0,0
S:Fradio_queue$radioQueueTxInterruptIndex$0$0({1}SC:U),E,0,0
S:G$radioRxOverflowOccurred$0$0({1}SB0$1:U),H,0,0
S:G$radioTxUnderflowOccurred$0$0({1}SB0$1:U),H,0,0
S:Fradio_queue$channel_select$0$0({1}SB0$1:U),H,0,0
S:G$radioQueueAllowCrcErrors$0$0({1}SB0$1:U),H,0,0
S:Fradio_queue$channel_number$0$0({4}SL:S),P,0,0
S:Lradio_queue.radioMacEventHandler$event$1$1({1}SC:U),R,0,0,[r7]
S:Lradio_queue.radioMacEventHandler$currentRxPacket$2$6({2}DX,SC:U),R,0,0,[r5,r6]
S:Lradio_queue.radioMacEventHandler$nextradioQueueRxInterruptIndex$3$10({1}SC:U),R,0,0,[r6]
S:Fradio_queue$SYNC1$0$0({1}SC:U),F,0,0
S:Fradio_queue$SYNC0$0$0({1}SC:U),F,0,0
S:Fradio_queue$PKTLEN$0$0({1}SC:U),F,0,0
S:Fradio_queue$PKTCTRL1$0$0({1}SC:U),F,0,0
S:Fradio_queue$PKTCTRL0$0$0({1}SC:U),F,0,0
S:Fradio_queue$ADDR$0$0({1}SC:U),F,0,0
S:Fradio_queue$CHANNR$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCTRL1$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCTRL0$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREQ2$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREQ1$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREQ0$0$0({1}SC:U),F,0,0
S:Fradio_queue$MDMCFG4$0$0({1}SC:U),F,0,0
S:Fradio_queue$MDMCFG3$0$0({1}SC:U),F,0,0
S:Fradio_queue$MDMCFG2$0$0({1}SC:U),F,0,0
S:Fradio_queue$MDMCFG1$0$0({1}SC:U),F,0,0
S:Fradio_queue$MDMCFG0$0$0({1}SC:U),F,0,0
S:Fradio_queue$DEVIATN$0$0({1}SC:U),F,0,0
S:Fradio_queue$MCSM2$0$0({1}SC:U),F,0,0
S:Fradio_queue$MCSM1$0$0({1}SC:U),F,0,0
S:Fradio_queue$MCSM0$0$0({1}SC:U),F,0,0
S:Fradio_queue$FOCCFG$0$0({1}SC:U),F,0,0
S:Fradio_queue$BSCFG$0$0({1}SC:U),F,0,0
S:Fradio_queue$AGCCTRL2$0$0({1}SC:U),F,0,0
S:Fradio_queue$AGCCTRL1$0$0({1}SC:U),F,0,0
S:Fradio_queue$AGCCTRL0$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREND1$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREND0$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCAL3$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCAL2$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCAL1$0$0({1}SC:U),F,0,0
S:Fradio_queue$FSCAL0$0$0({1}SC:U),F,0,0
S:Fradio_queue$TEST2$0$0({1}SC:U),F,0,0
S:Fradio_queue$TEST1$0$0({1}SC:U),F,0,0
S:Fradio_queue$TEST0$0$0({1}SC:U),F,0,0
S:Fradio_queue$PA_TABLE0$0$0({1}SC:U),F,0,0
S:Fradio_queue$IOCFG2$0$0({1}SC:U),F,0,0
S:Fradio_queue$IOCFG1$0$0({1}SC:U),F,0,0
S:Fradio_queue$IOCFG0$0$0({1}SC:U),F,0,0
S:Fradio_queue$PARTNUM$0$0({1}SC:U),F,0,0
S:Fradio_queue$VERSION$0$0({1}SC:U),F,0,0
S:Fradio_queue$FREQEST$0$0({1}SC:U),F,0,0
S:Fradio_queue$LQI$0$0({1}SC:U),F,0,0
S:Fradio_queue$RSSI$0$0({1}SC:U),F,0,0
S:Fradio_queue$MARCSTATE$0$0({1}SC:U),F,0,0
S:Fradio_queue$PKTSTATUS$0$0({1}SC:U),F,0,0
S:Fradio_queue$VCO_VC_DAC$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SCFG0$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SCFG1$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SDATL$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SDATH$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SWCNT$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SSTAT$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SCLKF0$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SCLKF1$0$0({1}SC:U),F,0,0
S:Fradio_queue$I2SCLKF2$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBADDR$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBPOW$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBIIF$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBOIF$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCIF$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBIIE$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBOIE$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCIE$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBFRML$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBFRMH$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBINDEX$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBMAXI$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCSIL$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCSIH$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBMAXO$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCSOL$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCSOH$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCNTL$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBCNTH$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF0$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF1$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF2$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF3$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF4$0$0({1}SC:U),F,0,0
S:Fradio_queue$USBF5$0$0({1}SC:U),F,0,0
S:Fradio_queue$radioQueueRxPacket$0$0({66}DA3,DA22,SC:U),F,0,0
S:Fradio_queue$radioQueueTxPacket$0$0({320}DA16,DA20,SC:U),F,0,0
S:Fradio_queue$P0$0$0({1}SC:U),I,0,0
S:Fradio_queue$SP$0$0({1}SC:U),I,0,0
S:Fradio_queue$DPL0$0$0({1}SC:U),I,0,0
S:Fradio_queue$DPH0$0$0({1}SC:U),I,0,0
S:Fradio_queue$DPL1$0$0({1}SC:U),I,0,0
S:Fradio_queue$DPH1$0$0({1}SC:U),I,0,0
S:Fradio_queue$U0CSR$0$0({1}SC:U),I,0,0
S:Fradio_queue$PCON$0$0({1}SC:U),I,0,0
S:Fradio_queue$TCON$0$0({1}SC:U),I,0,0
S:Fradio_queue$P0IFG$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1IFG$0$0({1}SC:U),I,0,0
S:Fradio_queue$P2IFG$0$0({1}SC:U),I,0,0
S:Fradio_queue$PICTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1IEN$0$0({1}SC:U),I,0,0
S:Fradio_queue$P0INP$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1$0$0({1}SC:U),I,0,0
S:Fradio_queue$RFIM$0$0({1}SC:U),I,0,0
S:Fradio_queue$DPS$0$0({1}SC:U),I,0,0
S:Fradio_queue$MPAGE$0$0({1}SC:U),I,0,0
S:Fradio_queue$ENDIAN$0$0({1}SC:U),I,0,0
S:Fradio_queue$S0CON$0$0({1}SC:U),I,0,0
S:Fradio_queue$IEN2$0$0({1}SC:U),I,0,0
S:Fradio_queue$S1CON$0$0({1}SC:U),I,0,0
S:Fradio_queue$T2CT$0$0({1}SC:U),I,0,0
S:Fradio_queue$T2PR$0$0({1}SC:U),I,0,0
S:Fradio_queue$T2CTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$P2$0$0({1}SC:U),I,0,0
S:Fradio_queue$WORIRQ$0$0({1}SC:U),I,0,0
S:Fradio_queue$WORCTRL$0$0({1}SC:U),I,0,0
S:Fradio_queue$WOREVT0$0$0({1}SC:U),I,0,0
S:Fradio_queue$WOREVT1$0$0({1}SC:U),I,0,0
S:Fradio_queue$WORTIME0$0$0({1}SC:U),I,0,0
S:Fradio_queue$WORTIME1$0$0({1}SC:U),I,0,0
S:Fradio_queue$IEN0$0$0({1}SC:U),I,0,0
S:Fradio_queue$IP0$0$0({1}SC:U),I,0,0
S:Fradio_queue$FWT$0$0({1}SC:U),I,0,0
S:Fradio_queue$FADDRL$0$0({1}SC:U),I,0,0
S:Fradio_queue$FADDRH$0$0({1}SC:U),I,0,0
S:Fradio_queue$FCTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$FWDATA$0$0({1}SC:U),I,0,0
S:Fradio_queue$ENCDI$0$0({1}SC:U),I,0,0
S:Fradio_queue$ENCDO$0$0({1}SC:U),I,0,0
S:Fradio_queue$ENCCS$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCCON1$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCCON2$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCCON3$0$0({1}SC:U),I,0,0
S:Fradio_queue$IEN1$0$0({1}SC:U),I,0,0
S:Fradio_queue$IP1$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCL$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCH$0$0({1}SC:U),I,0,0
S:Fradio_queue$RNDL$0$0({1}SC:U),I,0,0
S:Fradio_queue$RNDH$0$0({1}SC:U),I,0,0
S:Fradio_queue$SLEEP$0$0({1}SC:U),I,0,0
S:Fradio_queue$IRCON$0$0({1}SC:U),I,0,0
S:Fradio_queue$U0DBUF$0$0({1}SC:U),I,0,0
S:Fradio_queue$U0BAUD$0$0({1}SC:U),I,0,0
S:Fradio_queue$U0UCR$0$0({1}SC:U),I,0,0
S:Fradio_queue$U0GCR$0$0({1}SC:U),I,0,0
S:Fradio_queue$CLKCON$0$0({1}SC:U),I,0,0
S:Fradio_queue$MEMCTR$0$0({1}SC:U),I,0,0
S:Fradio_queue$WDCTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CNT$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CCTL0$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CC0$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CCTL1$0$0({1}SC:U),I,0,0
S:Fradio_queue$T3CC1$0$0({1}SC:U),I,0,0
S:Fradio_queue$PSW$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMAIRQ$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMA1CFGL$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMA1CFGH$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMA0CFGL$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMA0CFGH$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMAARM$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMAREQ$0$0({1}SC:U),I,0,0
S:Fradio_queue$TIMIF$0$0({1}SC:U),I,0,0
S:Fradio_queue$RFD$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC0L$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC0H$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC1L$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC1H$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC2L$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CC2H$0$0({1}SC:U),I,0,0
S:Fradio_queue$ACC$0$0({1}SC:U),I,0,0
S:Fradio_queue$RFST$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CNTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CNTH$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CCTL0$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CCTL1$0$0({1}SC:U),I,0,0
S:Fradio_queue$T1CCTL2$0$0({1}SC:U),I,0,0
S:Fradio_queue$IRCON2$0$0({1}SC:U),I,0,0
S:Fradio_queue$RFIF$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CNT$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CTL$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CCTL0$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CC0$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CCTL1$0$0({1}SC:U),I,0,0
S:Fradio_queue$T4CC1$0$0({1}SC:U),I,0,0
S:Fradio_queue$B$0$0({1}SC:U),I,0,0
S:Fradio_queue$PERCFG$0$0({1}SC:U),I,0,0
S:Fradio_queue$ADCCFG$0$0({1}SC:U),I,0,0
S:Fradio_queue$P0SEL$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1SEL$0$0({1}SC:U),I,0,0
S:Fradio_queue$P2SEL$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1INP$0$0({1}SC:U),I,0,0
S:Fradio_queue$P2INP$0$0({1}SC:U),I,0,0
S:Fradio_queue$U1CSR$0$0({1}SC:U),I,0,0
S:Fradio_queue$U1DBUF$0$0({1}SC:U),I,0,0
S:Fradio_queue$U1BAUD$0$0({1}SC:U),I,0,0
S:Fradio_queue$U1UCR$0$0({1}SC:U),I,0,0
S:Fradio_queue$U1GCR$0$0({1}SC:U),I,0,0
S:Fradio_queue$P0DIR$0$0({1}SC:U),I,0,0
S:Fradio_queue$P1DIR$0$0({1}SC:U),I,0,0
S:Fradio_queue$P2DIR$0$0({1}SC:U),I,0,0
S:Fradio_queue$DMA0CFG$0$0({2}SI:U),I,0,0
S:Fradio_queue$DMA1CFG$0$0({2}SI:U),I,0,0
S:Fradio_queue$FADDR$0$0({2}SI:U),I,0,0
S:Fradio_queue$ADC$0$0({2}SI:U),I,0,0
S:Fradio_queue$T1CC0$0$0({2}SI:U),I,0,0
S:Fradio_queue$T1CC1$0$0({2}SI:U),I,0,0
S:Fradio_queue$T1CC2$0$0({2}SI:U),I,0,0
S:Fradio_queue$P0_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_3$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_5$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0_7$0$0({1}SX:U),J,0,0
S:Fradio_queue$_TCON_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$RFTXRXIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$_TCON_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$URX0IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$_TCON_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$ADCIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$_TCON_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$URX1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_3$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_5$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1_7$0$0({1}SX:U),J,0,0
S:Fradio_queue$ENCIF_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$ENCIF_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON2$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON3$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON4$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON5$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON6$0$0({1}SX:U),J,0,0
S:Fradio_queue$_SOCON7$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_3$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_5$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2_7$0$0({1}SX:U),J,0,0
S:Fradio_queue$RFTXRXIE$0$0({1}SX:U),J,0,0
S:Fradio_queue$ADCIE$0$0({1}SX:U),J,0,0
S:Fradio_queue$URX0IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$URX1IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$ENCIE$0$0({1}SX:U),J,0,0
S:Fradio_queue$STIE$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IEN06$0$0({1}SX:U),J,0,0
S:Fradio_queue$EA$0$0({1}SX:U),J,0,0
S:Fradio_queue$DMAIE$0$0({1}SX:U),J,0,0
S:Fradio_queue$T1IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$T2IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$T3IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$T4IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0IE$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IEN16$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IEN17$0$0({1}SX:U),J,0,0
S:Fradio_queue$DMAIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T2IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T3IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T4IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$P0IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IRCON6$0$0({1}SX:U),J,0,0
S:Fradio_queue$STIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$P$0$0({1}SX:U),J,0,0
S:Fradio_queue$F1$0$0({1}SX:U),J,0,0
S:Fradio_queue$OV$0$0({1}SX:U),J,0,0
S:Fradio_queue$RS0$0$0({1}SX:U),J,0,0
S:Fradio_queue$RS1$0$0({1}SX:U),J,0,0
S:Fradio_queue$F0$0$0({1}SX:U),J,0,0
S:Fradio_queue$AC$0$0({1}SX:U),J,0,0
S:Fradio_queue$CY$0$0({1}SX:U),J,0,0
S:Fradio_queue$T3OVFIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T3CH0IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T3CH1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T4OVFIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T4CH0IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$T4CH1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$OVFIM$0$0({1}SX:U),J,0,0
S:Fradio_queue$_TIMIF7$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_3$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_5$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$ACC_7$0$0({1}SX:U),J,0,0
S:Fradio_queue$P2IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$UTX0IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$UTX1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$P1IF$0$0({1}SX:U),J,0,0
S:Fradio_queue$WDTIF$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IRCON25$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IRCON26$0$0({1}SX:U),J,0,0
S:Fradio_queue$_IRCON27$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_0$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_1$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_2$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_3$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_4$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_5$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_6$0$0({1}SX:U),J,0,0
S:Fradio_queue$B_7$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1ACTIVE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1TX_BYTE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1RX_BYTE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1ERR$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1FE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1SLAVE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1RE$0$0({1}SX:U),J,0,0
S:Fradio_queue$U1MODE$0$0({1}SX:U),J,0,0
S:G$radioMacInit$0$0({2}DF,SV:S),C,0,0
S:G$radioMacStrobe$0$0({2}DF,SV:S),C,0,0
S:G$radioMacSleep$0$0({2}DF,SV:S),C,0,0
S:G$radioMacResume$0$0({2}DF,SV:S),C,0,0
S:G$radioMacTx$0$0({2}DF,SV:S),C,0,0
S:G$radioMacRx$0$0({2}DF,SV:S),C,0,0
S:G$ISR_RF$0$0({2}DF,SV:S),C,0,0
S:G$radioRegistersInit$0$0({2}DF,SV:S),C,0,0
S:G$radioLqi$0$0({2}DF,SC:U),C,0,0
S:G$radioRssi$0$0({2}DF,SC:S),C,0,0
S:G$radioCrcPassed$0$0({2}DF,SB0$1:U),C,0,0
S:G$randomSeedFromAdc$0$0({2}DF,SV:S),C,0,0
S:G$randomSeedFromSerialNumber$0$0({2}DF,SV:S),C,0,0
S:G$randomNumber$0$0({2}DF,SC:U),C,0,0
S:G$randomSeed$0$0({2}DF,SV:S),C,0,0
S:Fradio_queue$randomTxDelay$0$0({2}DF,SC:U),C,0,0
S:Fradio_queue$takeInitiative$0$0({2}DF,SV:S),C,0,0
S:G$param_radio_channel$0$0({4}SL:S),D,0,0
