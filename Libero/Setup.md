To run Libero on Linux, we have to setup floating license server.

**License Request**

To request floating license, see https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/libero-software-later-versions, "Request a Free License or Register and Manage Licenses"

You will need MAC address to register against
*ip addr show*

Copy your active network MAC address, removing the ":", and register it.

After registering an email will be sent to you with a License.dat file. You can reregister a different MAC address later if need be.

create /license directory and place License.dat in dir
*sudo mkdir /licenses
sudo cp License.dat /licenses*


**License Daemons**

To get license server daemon binaries, see https://www.microchip.com/en-us/products/fpgas-and-plds/fpga-and-soc-design-tools/fpga/libero-software-later-versions, "Daemons Downloads"

Download the 64 bit Linux Daemons, decompress them, and place them in /licenses
*sudo tar -xvzf ~/Downloads/Linux_Licensing_Daemon_11.16.1_64-bit.tar.gz -C /licenses/Linux_Licensing_Daemon_64*

Patch binaries
*cd /licenses/Linux_Licensing_Daemon_64
patchelf --set-interpreter /lib64/ld-linux-x86-64.so.2 actlmgrd lmdown lmhostid lmutil snpslmd synplctyd lmdiag lmgrd lmreread mgcld syncad*


**Setup**

See https://coredocs.s3.amazonaws.com/Libero/2024_1/Tool/Libero_Installation_Licensing_Setup_User_Guide.pdf, section 3.4.3, for installation instructions

Edit License.dat computer name and daemon location to point to the daemons we just patched
*SERVER SER7-22 7070fc048fac 1702
DAEMON actlmgrd  /licenses/Linux_Licensing_Daemon_64/Linux_Licensing_Daemon_11.16.1_64-bit/actlmgrd
DAEMON mgcld /licenses/Linux_Licensing_Daemon_64/Linux_Licensing_Daemon_11.16.1_64-bit/mgcld
VENDOR snpslmd  /licenses/Linux_Licensing_Daemon_64/Linux_Licensing_Daemon_11.16.1_64-bit/snpslmd*

To run server:
*sudo /licenses/Linux_Licensing_Daemon_64/Linux_Licensing_Daemon_11.16.1_64-bit/lmgrd -c /licenses/License.dat -l /licenses/License.log*


**Launch Libero**

To run libero:
*export LM_LICENSE_FILE=1702@\<computer name\>
./\<path to Libero bin64 dir>/libero*


**Troubleshooting**

If you run into issue, look at /license/License.log for error messages
*cat /licenses/License.log*

If having trouble with downloading IP
*sudo chmod -R +777 /usr/local/microchip*