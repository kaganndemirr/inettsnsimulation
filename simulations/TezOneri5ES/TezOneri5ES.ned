package simulations.TezOneri5ES;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth1G;

network TezOneri5ES extends TsnNetworkBase
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
        ES_0.ethg++ <--> Eth1G <--> SW_0.ethg++;
		SW_0.ethg++ <--> Eth1G <--> SW_1.ethg++;
		SW_0.ethg++ <--> Eth1G <--> SW_4.ethg++;
		SW_4.ethg++ <--> Eth1G <--> SW_2.ethg++;
		SW_2.ethg++ <--> Eth1G <--> SW_3.ethg++;
		SW_1.ethg++ <--> Eth1G <--> SW_3.ethg++;
		SW_0.ethg++ <--> Eth1G <--> SW_2.ethg++;
		SW_2.ethg++ <--> Eth1G <--> ES_1.ethg++;
		SW_4.ethg++ <--> Eth1G <--> ES_2.ethg++;
		SW_1.ethg++ <--> Eth1G <--> ES_3.ethg++;
		SW_3.ethg++ <--> Eth1G <--> ES_4.ethg++;
}
