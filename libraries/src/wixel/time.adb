M:time
F:G$ISR_T4$0$0({2}DF,SV:S),Z,0,0,1,12,0
F:G$getMs$0$0({2}DF,SL:U),Z,0,0,0,0,0
F:G$timeInit$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$delayMs$0$0({2}DF,SV:S),Z,0,0,0,0,0
T:Ftime$__00010000[({0}S:S$SRCADDRH$0$0({1}SC:U),Z,0,0)({1}S:S$SRCADDRL$0$0({1}SC:U),Z,0,0)({2}S:S$DESTADDRH$0$0({1}SC:U),Z,0,0)({3}S:S$DESTADDRL$0$0({1}SC:U),Z,0,0)({4}S:S$VLEN_LENH$0$0({1}SC:U),Z,0,0)({5}S:S$LENL$0$0({1}SC:U),Z,0,0)({6}S:S$DC6$0$0({1}SC:U),Z,0,0)({7}S:S$DC7$0$0({1}SC:U),Z,0,0)]
S:G$timeMs$0$0({4}SL:U),P,0,0
S:Ltime.getMs$oldT4IE$1$1({1}SC:U),R,0,0,[r7]
S:Ltime.getMs$time$1$1({4}SL:U),R,0,0,[r3,r4,r5,r6]
S:Ltime.delayMs$milliseconds$1$1({2}SI:U),R,0,0,[r6,r7]
S:Ftime$SYNC1$0$0({1}SC:U),F,0,0
S:Ftime$SYNC0$0$0({1}SC:U),F,0,0
S:Ftime$PKTLEN$0$0({1}SC:U),F,0,0
S:Ftime$PKTCTRL1$0$0({1}SC:U),F,0,0
S:Ftime$PKTCTRL0$0$0({1}SC:U),F,0,0
S:Ftime$ADDR$0$0({1}SC:U),F,0,0
S:Ftime$CHANNR$0$0({1}SC:U),F,0,0
S:Ftime$FSCTRL1$0$0({1}SC:U),F,0,0
S:Ftime$FSCTRL0$0$0({1}SC:U),F,0,0
S:Ftime$FREQ2$0$0({1}SC:U),F,0,0
S:Ftime$FREQ1$0$0({1}SC:U),F,0,0
S:Ftime$FREQ0$0$0({1}SC:U),F,0,0
S:Ftime$MDMCFG4$0$0({1}SC:U),F,0,0
S:Ftime$MDMCFG3$0$0({1}SC:U),F,0,0
S:Ftime$MDMCFG2$0$0({1}SC:U),F,0,0
S:Ftime$MDMCFG1$0$0({1}SC:U),F,0,0
S:Ftime$MDMCFG0$0$0({1}SC:U),F,0,0
S:Ftime$DEVIATN$0$0({1}SC:U),F,0,0
S:Ftime$MCSM2$0$0({1}SC:U),F,0,0
S:Ftime$MCSM1$0$0({1}SC:U),F,0,0
S:Ftime$MCSM0$0$0({1}SC:U),F,0,0
S:Ftime$FOCCFG$0$0({1}SC:U),F,0,0
S:Ftime$BSCFG$0$0({1}SC:U),F,0,0
S:Ftime$AGCCTRL2$0$0({1}SC:U),F,0,0
S:Ftime$AGCCTRL1$0$0({1}SC:U),F,0,0
S:Ftime$AGCCTRL0$0$0({1}SC:U),F,0,0
S:Ftime$FREND1$0$0({1}SC:U),F,0,0
S:Ftime$FREND0$0$0({1}SC:U),F,0,0
S:Ftime$FSCAL3$0$0({1}SC:U),F,0,0
S:Ftime$FSCAL2$0$0({1}SC:U),F,0,0
S:Ftime$FSCAL1$0$0({1}SC:U),F,0,0
S:Ftime$FSCAL0$0$0({1}SC:U),F,0,0
S:Ftime$TEST2$0$0({1}SC:U),F,0,0
S:Ftime$TEST1$0$0({1}SC:U),F,0,0
S:Ftime$TEST0$0$0({1}SC:U),F,0,0
S:Ftime$PA_TABLE0$0$0({1}SC:U),F,0,0
S:Ftime$IOCFG2$0$0({1}SC:U),F,0,0
S:Ftime$IOCFG1$0$0({1}SC:U),F,0,0
S:Ftime$IOCFG0$0$0({1}SC:U),F,0,0
S:Ftime$PARTNUM$0$0({1}SC:U),F,0,0
S:Ftime$VERSION$0$0({1}SC:U),F,0,0
S:Ftime$FREQEST$0$0({1}SC:U),F,0,0
S:Ftime$LQI$0$0({1}SC:U),F,0,0
S:Ftime$RSSI$0$0({1}SC:U),F,0,0
S:Ftime$MARCSTATE$0$0({1}SC:U),F,0,0
S:Ftime$PKTSTATUS$0$0({1}SC:U),F,0,0
S:Ftime$VCO_VC_DAC$0$0({1}SC:U),F,0,0
S:Ftime$I2SCFG0$0$0({1}SC:U),F,0,0
S:Ftime$I2SCFG1$0$0({1}SC:U),F,0,0
S:Ftime$I2SDATL$0$0({1}SC:U),F,0,0
S:Ftime$I2SDATH$0$0({1}SC:U),F,0,0
S:Ftime$I2SWCNT$0$0({1}SC:U),F,0,0
S:Ftime$I2SSTAT$0$0({1}SC:U),F,0,0
S:Ftime$I2SCLKF0$0$0({1}SC:U),F,0,0
S:Ftime$I2SCLKF1$0$0({1}SC:U),F,0,0
S:Ftime$I2SCLKF2$0$0({1}SC:U),F,0,0
S:Ftime$USBADDR$0$0({1}SC:U),F,0,0
S:Ftime$USBPOW$0$0({1}SC:U),F,0,0
S:Ftime$USBIIF$0$0({1}SC:U),F,0,0
S:Ftime$USBOIF$0$0({1}SC:U),F,0,0
S:Ftime$USBCIF$0$0({1}SC:U),F,0,0
S:Ftime$USBIIE$0$0({1}SC:U),F,0,0
S:Ftime$USBOIE$0$0({1}SC:U),F,0,0
S:Ftime$USBCIE$0$0({1}SC:U),F,0,0
S:Ftime$USBFRML$0$0({1}SC:U),F,0,0
S:Ftime$USBFRMH$0$0({1}SC:U),F,0,0
S:Ftime$USBINDEX$0$0({1}SC:U),F,0,0
S:Ftime$USBMAXI$0$0({1}SC:U),F,0,0
S:Ftime$USBCSIL$0$0({1}SC:U),F,0,0
S:Ftime$USBCSIH$0$0({1}SC:U),F,0,0
S:Ftime$USBMAXO$0$0({1}SC:U),F,0,0
S:Ftime$USBCSOL$0$0({1}SC:U),F,0,0
S:Ftime$USBCSOH$0$0({1}SC:U),F,0,0
S:Ftime$USBCNTL$0$0({1}SC:U),F,0,0
S:Ftime$USBCNTH$0$0({1}SC:U),F,0,0
S:Ftime$USBF0$0$0({1}SC:U),F,0,0
S:Ftime$USBF1$0$0({1}SC:U),F,0,0
S:Ftime$USBF2$0$0({1}SC:U),F,0,0
S:Ftime$USBF3$0$0({1}SC:U),F,0,0
S:Ftime$USBF4$0$0({1}SC:U),F,0,0
S:Ftime$USBF5$0$0({1}SC:U),F,0,0
S:Ftime$P0$0$0({1}SC:U),I,0,0
S:Ftime$SP$0$0({1}SC:U),I,0,0
S:Ftime$DPL0$0$0({1}SC:U),I,0,0
S:Ftime$DPH0$0$0({1}SC:U),I,0,0
S:Ftime$DPL1$0$0({1}SC:U),I,0,0
S:Ftime$DPH1$0$0({1}SC:U),I,0,0
S:Ftime$U0CSR$0$0({1}SC:U),I,0,0
S:Ftime$PCON$0$0({1}SC:U),I,0,0
S:Ftime$TCON$0$0({1}SC:U),I,0,0
S:Ftime$P0IFG$0$0({1}SC:U),I,0,0
S:Ftime$P1IFG$0$0({1}SC:U),I,0,0
S:Ftime$P2IFG$0$0({1}SC:U),I,0,0
S:Ftime$PICTL$0$0({1}SC:U),I,0,0
S:Ftime$P1IEN$0$0({1}SC:U),I,0,0
S:Ftime$P0INP$0$0({1}SC:U),I,0,0
S:Ftime$P1$0$0({1}SC:U),I,0,0
S:Ftime$RFIM$0$0({1}SC:U),I,0,0
S:Ftime$DPS$0$0({1}SC:U),I,0,0
S:Ftime$MPAGE$0$0({1}SC:U),I,0,0
S:Ftime$ENDIAN$0$0({1}SC:U),I,0,0
S:Ftime$S0CON$0$0({1}SC:U),I,0,0
S:Ftime$IEN2$0$0({1}SC:U),I,0,0
S:Ftime$S1CON$0$0({1}SC:U),I,0,0
S:Ftime$T2CT$0$0({1}SC:U),I,0,0
S:Ftime$T2PR$0$0({1}SC:U),I,0,0
S:Ftime$T2CTL$0$0({1}SC:U),I,0,0
S:Ftime$P2$0$0({1}SC:U),I,0,0
S:Ftime$WORIRQ$0$0({1}SC:U),I,0,0
S:Ftime$WORCTRL$0$0({1}SC:U),I,0,0
S:Ftime$WOREVT0$0$0({1}SC:U),I,0,0
S:Ftime$WOREVT1$0$0({1}SC:U),I,0,0
S:Ftime$WORTIME0$0$0({1}SC:U),I,0,0
S:Ftime$WORTIME1$0$0({1}SC:U),I,0,0
S:Ftime$IEN0$0$0({1}SC:U),I,0,0
S:Ftime$IP0$0$0({1}SC:U),I,0,0
S:Ftime$FWT$0$0({1}SC:U),I,0,0
S:Ftime$FADDRL$0$0({1}SC:U),I,0,0
S:Ftime$FADDRH$0$0({1}SC:U),I,0,0
S:Ftime$FCTL$0$0({1}SC:U),I,0,0
S:Ftime$FWDATA$0$0({1}SC:U),I,0,0
S:Ftime$ENCDI$0$0({1}SC:U),I,0,0
S:Ftime$ENCDO$0$0({1}SC:U),I,0,0
S:Ftime$ENCCS$0$0({1}SC:U),I,0,0
S:Ftime$ADCCON1$0$0({1}SC:U),I,0,0
S:Ftime$ADCCON2$0$0({1}SC:U),I,0,0
S:Ftime$ADCCON3$0$0({1}SC:U),I,0,0
S:Ftime$IEN1$0$0({1}SC:U),I,0,0
S:Ftime$IP1$0$0({1}SC:U),I,0,0
S:Ftime$ADCL$0$0({1}SC:U),I,0,0
S:Ftime$ADCH$0$0({1}SC:U),I,0,0
S:Ftime$RNDL$0$0({1}SC:U),I,0,0
S:Ftime$RNDH$0$0({1}SC:U),I,0,0
S:Ftime$SLEEP$0$0({1}SC:U),I,0,0
S:Ftime$IRCON$0$0({1}SC:U),I,0,0
S:Ftime$U0DBUF$0$0({1}SC:U),I,0,0
S:Ftime$U0BAUD$0$0({1}SC:U),I,0,0
S:Ftime$U0UCR$0$0({1}SC:U),I,0,0
S:Ftime$U0GCR$0$0({1}SC:U),I,0,0
S:Ftime$CLKCON$0$0({1}SC:U),I,0,0
S:Ftime$MEMCTR$0$0({1}SC:U),I,0,0
S:Ftime$WDCTL$0$0({1}SC:U),I,0,0
S:Ftime$T3CNT$0$0({1}SC:U),I,0,0
S:Ftime$T3CTL$0$0({1}SC:U),I,0,0
S:Ftime$T3CCTL0$0$0({1}SC:U),I,0,0
S:Ftime$T3CC0$0$0({1}SC:U),I,0,0
S:Ftime$T3CCTL1$0$0({1}SC:U),I,0,0
S:Ftime$T3CC1$0$0({1}SC:U),I,0,0
S:Ftime$PSW$0$0({1}SC:U),I,0,0
S:Ftime$DMAIRQ$0$0({1}SC:U),I,0,0
S:Ftime$DMA1CFGL$0$0({1}SC:U),I,0,0
S:Ftime$DMA1CFGH$0$0({1}SC:U),I,0,0
S:Ftime$DMA0CFGL$0$0({1}SC:U),I,0,0
S:Ftime$DMA0CFGH$0$0({1}SC:U),I,0,0
S:Ftime$DMAARM$0$0({1}SC:U),I,0,0
S:Ftime$DMAREQ$0$0({1}SC:U),I,0,0
S:Ftime$TIMIF$0$0({1}SC:U),I,0,0
S:Ftime$RFD$0$0({1}SC:U),I,0,0
S:Ftime$T1CC0L$0$0({1}SC:U),I,0,0
S:Ftime$T1CC0H$0$0({1}SC:U),I,0,0
S:Ftime$T1CC1L$0$0({1}SC:U),I,0,0
S:Ftime$T1CC1H$0$0({1}SC:U),I,0,0
S:Ftime$T1CC2L$0$0({1}SC:U),I,0,0
S:Ftime$T1CC2H$0$0({1}SC:U),I,0,0
S:Ftime$ACC$0$0({1}SC:U),I,0,0
S:Ftime$RFST$0$0({1}SC:U),I,0,0
S:Ftime$T1CNTL$0$0({1}SC:U),I,0,0
S:Ftime$T1CNTH$0$0({1}SC:U),I,0,0
S:Ftime$T1CTL$0$0({1}SC:U),I,0,0
S:Ftime$T1CCTL0$0$0({1}SC:U),I,0,0
S:Ftime$T1CCTL1$0$0({1}SC:U),I,0,0
S:Ftime$T1CCTL2$0$0({1}SC:U),I,0,0
S:Ftime$IRCON2$0$0({1}SC:U),I,0,0
S:Ftime$RFIF$0$0({1}SC:U),I,0,0
S:Ftime$T4CNT$0$0({1}SC:U),I,0,0
S:Ftime$T4CTL$0$0({1}SC:U),I,0,0
S:Ftime$T4CCTL0$0$0({1}SC:U),I,0,0
S:Ftime$T4CC0$0$0({1}SC:U),I,0,0
S:Ftime$T4CCTL1$0$0({1}SC:U),I,0,0
S:Ftime$T4CC1$0$0({1}SC:U),I,0,0
S:Ftime$B$0$0({1}SC:U),I,0,0
S:Ftime$PERCFG$0$0({1}SC:U),I,0,0
S:Ftime$ADCCFG$0$0({1}SC:U),I,0,0
S:Ftime$P0SEL$0$0({1}SC:U),I,0,0
S:Ftime$P1SEL$0$0({1}SC:U),I,0,0
S:Ftime$P2SEL$0$0({1}SC:U),I,0,0
S:Ftime$P1INP$0$0({1}SC:U),I,0,0
S:Ftime$P2INP$0$0({1}SC:U),I,0,0
S:Ftime$U1CSR$0$0({1}SC:U),I,0,0
S:Ftime$U1DBUF$0$0({1}SC:U),I,0,0
S:Ftime$U1BAUD$0$0({1}SC:U),I,0,0
S:Ftime$U1UCR$0$0({1}SC:U),I,0,0
S:Ftime$U1GCR$0$0({1}SC:U),I,0,0
S:Ftime$P0DIR$0$0({1}SC:U),I,0,0
S:Ftime$P1DIR$0$0({1}SC:U),I,0,0
S:Ftime$P2DIR$0$0({1}SC:U),I,0,0
S:Ftime$DMA0CFG$0$0({2}SI:U),I,0,0
S:Ftime$DMA1CFG$0$0({2}SI:U),I,0,0
S:Ftime$FADDR$0$0({2}SI:U),I,0,0
S:Ftime$ADC$0$0({2}SI:U),I,0,0
S:Ftime$T1CC0$0$0({2}SI:U),I,0,0
S:Ftime$T1CC1$0$0({2}SI:U),I,0,0
S:Ftime$T1CC2$0$0({2}SI:U),I,0,0
S:Ftime$P0_0$0$0({1}SX:U),J,0,0
S:Ftime$P0_1$0$0({1}SX:U),J,0,0
S:Ftime$P0_2$0$0({1}SX:U),J,0,0
S:Ftime$P0_3$0$0({1}SX:U),J,0,0
S:Ftime$P0_4$0$0({1}SX:U),J,0,0
S:Ftime$P0_5$0$0({1}SX:U),J,0,0
S:Ftime$P0_6$0$0({1}SX:U),J,0,0
S:Ftime$P0_7$0$0({1}SX:U),J,0,0
S:Ftime$_TCON_0$0$0({1}SX:U),J,0,0
S:Ftime$RFTXRXIF$0$0({1}SX:U),J,0,0
S:Ftime$_TCON_2$0$0({1}SX:U),J,0,0
S:Ftime$URX0IF$0$0({1}SX:U),J,0,0
S:Ftime$_TCON_4$0$0({1}SX:U),J,0,0
S:Ftime$ADCIF$0$0({1}SX:U),J,0,0
S:Ftime$_TCON_6$0$0({1}SX:U),J,0,0
S:Ftime$URX1IF$0$0({1}SX:U),J,0,0
S:Ftime$P1_0$0$0({1}SX:U),J,0,0
S:Ftime$P1_1$0$0({1}SX:U),J,0,0
S:Ftime$P1_2$0$0({1}SX:U),J,0,0
S:Ftime$P1_3$0$0({1}SX:U),J,0,0
S:Ftime$P1_4$0$0({1}SX:U),J,0,0
S:Ftime$P1_5$0$0({1}SX:U),J,0,0
S:Ftime$P1_6$0$0({1}SX:U),J,0,0
S:Ftime$P1_7$0$0({1}SX:U),J,0,0
S:Ftime$ENCIF_0$0$0({1}SX:U),J,0,0
S:Ftime$ENCIF_1$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON2$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON3$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON4$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON5$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON6$0$0({1}SX:U),J,0,0
S:Ftime$_SOCON7$0$0({1}SX:U),J,0,0
S:Ftime$P2_0$0$0({1}SX:U),J,0,0
S:Ftime$P2_1$0$0({1}SX:U),J,0,0
S:Ftime$P2_2$0$0({1}SX:U),J,0,0
S:Ftime$P2_3$0$0({1}SX:U),J,0,0
S:Ftime$P2_4$0$0({1}SX:U),J,0,0
S:Ftime$P2_5$0$0({1}SX:U),J,0,0
S:Ftime$P2_6$0$0({1}SX:U),J,0,0
S:Ftime$P2_7$0$0({1}SX:U),J,0,0
S:Ftime$RFTXRXIE$0$0({1}SX:U),J,0,0
S:Ftime$ADCIE$0$0({1}SX:U),J,0,0
S:Ftime$URX0IE$0$0({1}SX:U),J,0,0
S:Ftime$URX1IE$0$0({1}SX:U),J,0,0
S:Ftime$ENCIE$0$0({1}SX:U),J,0,0
S:Ftime$STIE$0$0({1}SX:U),J,0,0
S:Ftime$_IEN06$0$0({1}SX:U),J,0,0
S:Ftime$EA$0$0({1}SX:U),J,0,0
S:Ftime$DMAIE$0$0({1}SX:U),J,0,0
S:Ftime$T1IE$0$0({1}SX:U),J,0,0
S:Ftime$T2IE$0$0({1}SX:U),J,0,0
S:Ftime$T3IE$0$0({1}SX:U),J,0,0
S:Ftime$T4IE$0$0({1}SX:U),J,0,0
S:Ftime$P0IE$0$0({1}SX:U),J,0,0
S:Ftime$_IEN16$0$0({1}SX:U),J,0,0
S:Ftime$_IEN17$0$0({1}SX:U),J,0,0
S:Ftime$DMAIF$0$0({1}SX:U),J,0,0
S:Ftime$T1IF$0$0({1}SX:U),J,0,0
S:Ftime$T2IF$0$0({1}SX:U),J,0,0
S:Ftime$T3IF$0$0({1}SX:U),J,0,0
S:Ftime$T4IF$0$0({1}SX:U),J,0,0
S:Ftime$P0IF$0$0({1}SX:U),J,0,0
S:Ftime$_IRCON6$0$0({1}SX:U),J,0,0
S:Ftime$STIF$0$0({1}SX:U),J,0,0
S:Ftime$P$0$0({1}SX:U),J,0,0
S:Ftime$F1$0$0({1}SX:U),J,0,0
S:Ftime$OV$0$0({1}SX:U),J,0,0
S:Ftime$RS0$0$0({1}SX:U),J,0,0
S:Ftime$RS1$0$0({1}SX:U),J,0,0
S:Ftime$F0$0$0({1}SX:U),J,0,0
S:Ftime$AC$0$0({1}SX:U),J,0,0
S:Ftime$CY$0$0({1}SX:U),J,0,0
S:Ftime$T3OVFIF$0$0({1}SX:U),J,0,0
S:Ftime$T3CH0IF$0$0({1}SX:U),J,0,0
S:Ftime$T3CH1IF$0$0({1}SX:U),J,0,0
S:Ftime$T4OVFIF$0$0({1}SX:U),J,0,0
S:Ftime$T4CH0IF$0$0({1}SX:U),J,0,0
S:Ftime$T4CH1IF$0$0({1}SX:U),J,0,0
S:Ftime$OVFIM$0$0({1}SX:U),J,0,0
S:Ftime$_TIMIF7$0$0({1}SX:U),J,0,0
S:Ftime$ACC_0$0$0({1}SX:U),J,0,0
S:Ftime$ACC_1$0$0({1}SX:U),J,0,0
S:Ftime$ACC_2$0$0({1}SX:U),J,0,0
S:Ftime$ACC_3$0$0({1}SX:U),J,0,0
S:Ftime$ACC_4$0$0({1}SX:U),J,0,0
S:Ftime$ACC_5$0$0({1}SX:U),J,0,0
S:Ftime$ACC_6$0$0({1}SX:U),J,0,0
S:Ftime$ACC_7$0$0({1}SX:U),J,0,0
S:Ftime$P2IF$0$0({1}SX:U),J,0,0
S:Ftime$UTX0IF$0$0({1}SX:U),J,0,0
S:Ftime$UTX1IF$0$0({1}SX:U),J,0,0
S:Ftime$P1IF$0$0({1}SX:U),J,0,0
S:Ftime$WDTIF$0$0({1}SX:U),J,0,0
S:Ftime$_IRCON25$0$0({1}SX:U),J,0,0
S:Ftime$_IRCON26$0$0({1}SX:U),J,0,0
S:Ftime$_IRCON27$0$0({1}SX:U),J,0,0
S:Ftime$B_0$0$0({1}SX:U),J,0,0
S:Ftime$B_1$0$0({1}SX:U),J,0,0
S:Ftime$B_2$0$0({1}SX:U),J,0,0
S:Ftime$B_3$0$0({1}SX:U),J,0,0
S:Ftime$B_4$0$0({1}SX:U),J,0,0
S:Ftime$B_5$0$0({1}SX:U),J,0,0
S:Ftime$B_6$0$0({1}SX:U),J,0,0
S:Ftime$B_7$0$0({1}SX:U),J,0,0
S:Ftime$U1ACTIVE$0$0({1}SX:U),J,0,0
S:Ftime$U1TX_BYTE$0$0({1}SX:U),J,0,0
S:Ftime$U1RX_BYTE$0$0({1}SX:U),J,0,0
S:Ftime$U1ERR$0$0({1}SX:U),J,0,0
S:Ftime$U1FE$0$0({1}SX:U),J,0,0
S:Ftime$U1SLAVE$0$0({1}SX:U),J,0,0
S:Ftime$U1RE$0$0({1}SX:U),J,0,0
S:Ftime$U1MODE$0$0({1}SX:U),J,0,0
S:G$delayMicroseconds$0$0({2}DF,SV:S),C,0,0
