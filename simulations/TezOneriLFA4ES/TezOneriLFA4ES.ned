package simulations.TezOneriLFA4ES;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth1G;

network TezOneriLFA4ES extends TsnNetworkBase
{
    parameters:
        @display("bgb=1280,720");

    submodules:
        SW_0: TsnSwitch {
            @display("p=570,321;i=device/switch");
        }
        SW_1: TsnSwitch {
            @display("p=570,512;i=device/switch");
        }
        SW_2: TsnSwitch {
            @display("p=913,321;i=device/switch");
        }
        SW_3: TsnSwitch {
            @display("p=912,512;i=device/switch");
        }
        SW_4: TsnSwitch {
            @display("p=759,183;i=device/switch");
        }
        ES_0: TsnDevice {
            @display("p=360,323;i=device/pc");
        }
        ES_1: TsnDevice {
            @display("p=1107,323;i=device/pc");
        }
        ES_2: TsnDevice {
            @display("p=758,67;i=device/pc");
        }
        ES_3: TsnDevice {
            @display("p=570,636;i=device/pc");
        }
        ES_4: TsnDevice {
            @display("p=912,636;i=device/pc");
        }
    connections:
        ES_0.ethg[1] <--> Eth1G <--> SW_0.ethg[1];
        SW_0.ethg[2] <--> Eth1G <--> ES_0.ethg[2];
        SW_0.ethg[3] <--> Eth1G <--> SW_1.ethg[3];
        SW_1.ethg[2] <--> Eth1G <--> SW_0.ethg[2];
        SW_0.ethg[5] <--> Eth1G <--> SW_4.ethg[5];
        SW_4.ethg[2] <--> Eth1G <--> SW_0.ethg[2];
        SW_4.ethg[3] <--> Eth1G <--> SW_2.ethg[3];
        SW_2.ethg[2] <--> Eth1G <--> SW_4.ethg[2];
        SW_2.ethg[3] <--> Eth1G <--> SW_3.ethg[3];
        SW_3.ethg[2] <--> Eth1G <--> SW_2.ethg[2];
        SW_1.ethg[3] <--> Eth1G <--> SW_3.ethg[3];
        SW_3.ethg[4] <--> Eth1G <--> SW_1.ethg[4];
        SW_0.ethg[7] <--> Eth1G <--> SW_2.ethg[7];
        SW_2.ethg[6] <--> Eth1G <--> SW_0.ethg[6];
        SW_2.ethg[7] <--> Eth1G <--> ES_1.ethg[7];
        ES_1.ethg[2] <--> Eth1G <--> SW_2.ethg[2];
        SW_4.ethg[5] <--> Eth1G <--> ES_2.ethg[5];
        ES_2.ethg[2] <--> Eth1G <--> SW_4.ethg[2];
        SW_1.ethg[5] <--> Eth1G <--> ES_3.ethg[5];
        ES_3.ethg[2] <--> Eth1G <--> SW_1.ethg[2];
        SW_3.ethg[5] <--> Eth1G <--> ES_4.ethg[5];
        ES_4.ethg[2] <--> Eth1G <--> SW_3.ethg[2];
}
