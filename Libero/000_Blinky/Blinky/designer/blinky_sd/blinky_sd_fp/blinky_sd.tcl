open_project -project {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd_fp/blinky_sd.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd.map} \
    -header {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd.hdr} \
    -snvm {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd_snvm.efc} \
    -spm {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd.spm} \
    -dca {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/designer/blinky_sd/blinky_sd.dca}
export_single_ppd \
    -name {MPFS025T} \
    -file {/home/lcwilch/Projects/PolarfireSoC_baremetal/Libero/000_Blinky/Blinky/FPExpress/tempExport/blinky_sd.ppd}

save_project
close_project
