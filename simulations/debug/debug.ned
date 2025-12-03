//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

package simulations.debug;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth1G;

network Debug extends TsnNetworkBase
{
    parameters:
        @display("bgb=1280,720");

    submodules:
        S0: TsnSwitch {
            @display("p=570,331;i=device/switch");
        }
        S1: TsnSwitch {
            @display("p=570,498;i=device/switch");
        }
        S2: TsnSwitch {
            @display("p=859,334;i=device/switch");
        }
        S3: TsnSwitch {
            @display("p=859,498;i=device/switch");
        }
        S4: TsnSwitch {
            @display("p=713,197;i=device/switch");
        }
        ES0: TsnDevice {
            @display("p=467,332;i=device/pc");
        }
        ES1: TsnDevice {
            @display("p=997,337;i=device/pc");
        }
        ES2: TsnDevice {
            @display("p=713,87;i=device/pc");
        }
        ES3: TsnDevice {
            @display("p=570,612;i=device/pc");
        }
        ES4: TsnDevice {
            @display("p=859,599;i=device/pc");
        }
    connections:
        ES0.ethg++ <--> Eth1G <--> S0.ethg++;

        S0.ethg++ <--> Eth1G <--> S4.ethg++;
        S0.ethg++ <--> Eth1G <--> S2.ethg++;
        S0.ethg++ <--> Eth1G <--> S1.ethg++;

        ES2.ethg++ <--> Eth1G <--> S4.ethg++;
        S4.ethg++ <--> Eth1G <--> S2.ethg++;

        ES1.ethg++ <--> Eth1G <--> S2.ethg++;
        S2.ethg++ <--> Eth1G <--> S3.ethg++;

        ES4.ethg++ <--> Eth1G <--> S3.ethg++;
        S3.ethg++ <--> Eth1G <--> S1.ethg++;

        ES3.ethg++ <--> Eth1G <--> S1.ethg++;


}
