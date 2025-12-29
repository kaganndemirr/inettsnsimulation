package simulations.TezOneriLFA;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth1G;

network TezOneriLFA extends TsnNetworkBase
{
    parameters:
        @display("bgb=1280,720");

    submodules:
        SW_0: TsnSwitch {
            @display("p=563,305;i=device/switch");
        }
        SW_1: TsnSwitch {
            @display("p=562,498;i=device/switch");
        }
        SW_2: TsnSwitch {
            @display("p=982,307;i=device/switch");
        }
        SW_3: TsnSwitch {
            @display("p=981,498;i=device/switch");
        }
        SW_4: TsnSwitch {
            @display("p=764,138;i=device/switch");
        }
        ES_0: TsnDevice {
            @display("p=390,307;i=device/pc");
        }
        ES_1: TsnDevice {
            @display("p=1162,308;i=device/pc");
        }
    connections:
        ES_0.ethg[0] <--> Eth1G <--> SW_0.ethg[0];
        SW_0.ethg[1] <--> Eth1G <--> SW_1.ethg[0];
        SW_0.ethg[2] <--> Eth1G <--> SW_4.ethg[0];
        SW_4.ethg[1] <--> Eth1G <--> SW_2.ethg[0];
        SW_2.ethg[1] <--> Eth1G <--> SW_3.ethg[0];
        SW_1.ethg[1] <--> Eth1G <--> SW_3.ethg[1];
        SW_0.ethg[3] <--> Eth1G <--> SW_2.ethg[2];
        SW_2.ethg[3] <--> Eth1G <--> ES_1.ethg[0];
}
