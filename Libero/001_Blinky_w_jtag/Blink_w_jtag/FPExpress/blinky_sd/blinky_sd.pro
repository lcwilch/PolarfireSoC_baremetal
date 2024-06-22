<project name="blinky_sd" version="1.2">
    <ProjectDirectory>
        /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/FPExpress/blinky_sd
    </ProjectDirectory>
    <View>
        ChainView
    </View>
    <LiberoTargetDevice>
        
    </LiberoTargetDevice>
    <LogFile>
        /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/FPExpress/blinky_sd/blinky_sd.log
    </LogFile>
    <SerializationOption>
        Skip
    </SerializationOption>
    <ProgrammingInterface>
        JTAGMode
    </ProgrammingInterface>
    <programmer status="enable" type="FlashPro5" revision="UndefRev" connection="usb1.1">
        <name>
            S20085DQOY
        </name>
        <id>
            S20085DQOY
        </id>
    </programmer>
    <Servers>
    </Servers>
    <configuration>
        <Hardware>
            <FlashPro>
                <TCK>
                    4000000
                </TCK>
                <Vpp/>
                <Vpn/>
                <Vddl/>
                <Vdd>
2500                </Vdd>
            </FlashPro>
            <FlashProLite>
                <TCK>
                    4000000
                </TCK>
                <Vpp/>
                <Vpn/>
            </FlashProLite>
            <FlashPro3>
                <TCK>
                    4000000
                </TCK>
                <ClkMode>
                    FreeRunningClk
                </ClkMode>
            </FlashPro3>
            <FlashPro4>
                <TCK>
                    4000000
                </TCK>
                <ClkMode>
                    FreeRunningClk
                </ClkMode>
            </FlashPro4>
            <FlashPro5>
                <TCK>
                    4000000
                </TCK>
                <ClkMode>
                    DiscreteClk
                </ClkMode>
            </FlashPro5>
            <FlashPro6>
                <TCK>
                    4000000
                </TCK>
                <SCK>
                    20000000
                </SCK>
                <ClkMode>
                    DiscreteClk
                </ClkMode>
            </FlashPro6>
        </Hardware>
        <Device type="ACTEL">
            <Name>
                MPFS025T
            </Name>
            <Custom>
                MPFS025T
            </Custom>
            <SpiFlashFile>
                
            </SpiFlashFile>
            <SpiFlashSelectedAction>
                
            </SpiFlashSelectedAction>
            <Algo type="PDB">
                <filename>
                    /home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/FPExpress/blinky_sd/blinky_sd.ppd
                </filename>
                <local>
                    projectData/blinky_sd.ppd
                </local>
                <SelectedAction>
                    DEVICE_INFO
                </SelectedAction>
                <Action name="PROGRAM" deselectedProcedures="DO_VERIFY">
                </Action>
            </Algo>
        </Device>
        <Algo type="unknown">
            <irlength>
                0
            </irlength>
            <MaxTCK>
                0
            </MaxTCK>
        </Algo>
    </configuration>
</project>