//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTASWILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package simulations.ABB;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.tsn.TsnClock;
import inet.node.ethernet.Eth1G;

network ABB extends TsnNetworkBase
{
    parameters:
        @display("bgb=1280,720");

    submodules:
        SW000: TsnSwitch {
            @display("p=777,358;i=device/switch");
        }
        SW101: TsnSwitch {
            @display("p=771,446;i=device/switch");
        }
        SW102: TsnSwitch {
            @display("p=860,408;i=device/switch");
        }
        SW103: TsnSwitch {
            @display("p=842,290;i=device/switch");
        }
        SW104: TsnSwitch {
            @display("p=727,270;i=device/switch");
        }
        SW100: TsnSwitch {
            @display("p=692,372;i=device/switch");
        }
        SW209: TsnSwitch {
            @display("p=638,219;i=device/switch");
        }
        SW208: TsnSwitch {
            @display("p=740,155;i=device/switch");
        }
        SW207: TsnSwitch {
            @display("p=871,175;i=device/switch");
        }
        SW200: TsnSwitch {
            @display("p=584,333;i=device/switch");
        }
        SW201: TsnSwitch {
            @display("p=607,452;i=device/switch");
        }
        SW202: TsnSwitch {
            @display("p=698,533;i=device/switch");
        }
        SW203: TsnSwitch {
            @display("p=808,559;i=device/switch");
        }
        SW204: TsnSwitch {
            @display("p=916,492;i=device/switch");
        }
        SW205: TsnSwitch {
            @display("p=973,400;i=device/switch");
        }
        SW206: TsnSwitch {
            @display("p=947,270;i=device/switch");
        }
        SW317: TsnSwitch {
            @display("p=684,81;i=device/switch");
        }
        SW316: TsnSwitch {
            @display("p=777,67;i=device/switch");
        }
        SW318: TsnSwitch {
            @display("p=607,129;i=device/switch");
        }
        SW319: TsnSwitch {
            @display("p=542,187;i=device/switch");
        }
        SW300: TsnSwitch {
            @display("p=497,270;i=device/switch");
        }
        SW301: TsnSwitch {
            @display("p=488,365;i=device/switch");
        }
        SW302: TsnSwitch {
            @display("p=511,452;i=device/switch");
        }
        SW303: TsnSwitch {
            @display("p=553,525;i=device/switch");
        }
        SW304: TsnSwitch {
            @display("p=618,595;i=device/switch");
        }
        SW305: TsnSwitch {
            @display("p=684,634;i=device/switch");
        }
        SW306: TsnSwitch {
            @display("p=785,650;i=device/switch");
        }
        SW307: TsnSwitch {
            @display("p=871,634;i=device/switch");
        }
        SW308: TsnSwitch {
            @display("p=945,595;i=device/switch");
        }
        SW309: TsnSwitch {
            @display("p=1008,539;i=device/switch");
        }
        SW310: TsnSwitch {
            @display("p=1052,459;i=device/switch");
        }
        SW311: TsnSwitch {
            @display("p=1069,365;i=device/switch");
        }
        SW312: TsnSwitch {
            @display("p=1052,281;i=device/switch");
        }
        SW313: TsnSwitch {
            @display("p=1021,200;i=device/switch");
        }
        SW314: TsnSwitch {
            @display("p=947,129;i=device/switch");
        }
        SW315: TsnSwitch {
            @display("p=877,87;i=device/switch");
        }
        ES416: TsnDevice {
            @display("p=726,27;i=device/pc");
        }
        ES417: TsnDevice {
            @display("p=617,58;i=device/pc");
        }
        ES418: TsnDevice {
            @display("p=524,107;i=device/pc");
        }
        ES419: TsnDevice {
            @display("p=468,201;i=device/pc");
        }
        ES400: TsnDevice {
            @display("p=432,313;i=device/pc");
        }
        ES401: TsnDevice {
            @display("p=432,428;i=device/pc");
        }
        ES402: TsnDevice {
            @display("p=468,534;i=device/pc");
        }
        ES403: TsnDevice {
            @display("p=541,601;i=device/pc");
        }
        ES404: TsnDevice {
            @display("p=625,676;i=device/pc");
        }
        ES405: TsnDevice {
            @display("p=726,685;i=device/pc");
        }
        ES406: TsnDevice {
            @display("p=831,685;i=device/pc");
        }
        ES407: TsnDevice {
            @display("p=930,685;i=device/pc");
        }
        ES408: TsnDevice {
            @display("p=1026,621;i=device/pc");
        }
        ES409: TsnDevice {
            @display("p=1080,526;i=device/pc");
        }
        ES410: TsnDevice {
            @display("p=1106,414;i=device/pc");
        }
        ES411: TsnDevice {
            @display("p=1118,308;i=device/pc");
        }
        ES412: TsnDevice {
            @display("p=1097,213;i=device/pc");
        }
        ES413: TsnDevice {
            @display("p=1036,130;i=device/pc");
        }
        ES414: TsnDevice {
            @display("p=944,45;i=device/pc");
        }
        ES415: TsnDevice {
            @display("p=841,27;i=device/pc");
        }
//        masterClock: TsnClock {
//            @display("p=803,226;i=device/card");
//        }
    connections:
//		masterClock.ethg++ <--> Eth1G <--> SW000.ethg++;

        SW000.ethg++ <--> Eth1G <--> SW100.ethg++;
        SW000.ethg++ <--> Eth1G <--> SW101.ethg++;
        SW000.ethg++ <--> Eth1G <--> SW102.ethg++;
        SW000.ethg++ <--> Eth1G <--> SW103.ethg++;
        SW000.ethg++ <--> Eth1G <--> SW104.ethg++;
        
        SW104.ethg++ <--> Eth1G <--> SW103.ethg++;
        SW104.ethg++ <--> Eth1G <--> SW208.ethg++;
        SW104.ethg++ <--> Eth1G <--> SW209.ethg++;

        SW100.ethg++ <--> Eth1G <--> SW104.ethg++;
        SW100.ethg++ <--> Eth1G <--> SW200.ethg++;
        SW100.ethg++ <--> Eth1G <--> SW201.ethg++;
        
        SW101.ethg++ <--> Eth1G <--> SW100.ethg++;
        SW101.ethg++ <--> Eth1G <--> SW202.ethg++;
        SW101.ethg++ <--> Eth1G <--> SW203.ethg++;
         
        SW102.ethg++ <--> Eth1G <--> SW101.ethg++;
        SW102.ethg++ <--> Eth1G <--> SW204.ethg++;
        SW102.ethg++ <--> Eth1G <--> SW205.ethg++;
             
        SW103.ethg++ <--> Eth1G <--> SW102.ethg++;
        SW103.ethg++ <--> Eth1G <--> SW206.ethg++;
        SW103.ethg++ <--> Eth1G <--> SW207.ethg++;
        
        SW209.ethg++ <--> Eth1G <--> SW208.ethg++;
        SW209.ethg++ <--> Eth1G <--> SW318.ethg++;
        SW209.ethg++ <--> Eth1G <--> SW319.ethg++;
        
        SW200.ethg++ <--> Eth1G <--> SW209.ethg++;
        SW200.ethg++ <--> Eth1G <--> SW300.ethg++;
        SW200.ethg++ <--> Eth1G <--> SW301.ethg++;
               
        SW201.ethg++ <--> Eth1G <--> SW200.ethg++;
        SW201.ethg++ <--> Eth1G <--> SW302.ethg++;
        SW201.ethg++ <--> Eth1G <--> SW303.ethg++;
        
        SW202.ethg++ <--> Eth1G <--> SW201.ethg++;
        SW202.ethg++ <--> Eth1G <--> SW304.ethg++;
        SW202.ethg++ <--> Eth1G <--> SW305.ethg++;
        
        SW203.ethg++ <--> Eth1G <--> SW202.ethg++;
        SW203.ethg++ <--> Eth1G <--> SW306.ethg++;
        SW203.ethg++ <--> Eth1G <--> SW307.ethg++;
        
        SW204.ethg++ <--> Eth1G <--> SW203.ethg++;
        SW204.ethg++ <--> Eth1G <--> SW308.ethg++;
        SW204.ethg++ <--> Eth1G <--> SW309.ethg++;
        
        SW205.ethg++ <--> Eth1G <--> SW204.ethg++;
        SW205.ethg++ <--> Eth1G <--> SW310.ethg++;
        SW205.ethg++ <--> Eth1G <--> SW311.ethg++;
           
        SW206.ethg++ <--> Eth1G <--> SW205.ethg++;
        SW206.ethg++ <--> Eth1G <--> SW312.ethg++;
        SW206.ethg++ <--> Eth1G <--> SW313.ethg++;
          
        SW207.ethg++ <--> Eth1G <--> SW206.ethg++;     
        SW207.ethg++ <--> Eth1G <--> SW314.ethg++;
        SW207.ethg++ <--> Eth1G <--> SW315.ethg++;
        
        SW208.ethg++ <--> Eth1G <--> SW207.ethg++;
        SW208.ethg++ <--> Eth1G <--> SW316.ethg++;
        SW208.ethg++ <--> Eth1G <--> SW317.ethg++;
        
        SW319.ethg++ <--> Eth1G <--> SW318.ethg++;
        SW319.ethg++ <--> Eth1G <--> ES419.ethg++;
        SW319.ethg++ <--> Eth1G <--> ES418.ethg++;
        
        SW300.ethg++ <--> Eth1G <--> SW319.ethg++;
        SW300.ethg++ <--> Eth1G <--> ES419.ethg++;
        SW300.ethg++ <--> Eth1G <--> ES400.ethg++;
        
        SW301.ethg++ <--> Eth1G <--> SW300.ethg++;
        SW301.ethg++ <--> Eth1G <--> ES400.ethg++;
        SW301.ethg++ <--> Eth1G <--> ES401.ethg++;
        
        SW302.ethg++ <--> Eth1G <--> SW301.ethg++;
        SW302.ethg++ <--> Eth1G <--> ES401.ethg++;
        SW302.ethg++ <--> Eth1G <--> ES402.ethg++;
        
        SW303.ethg++ <--> Eth1G <--> SW302.ethg++;
        SW303.ethg++ <--> Eth1G <--> ES402.ethg++;
        SW303.ethg++ <--> Eth1G <--> ES403.ethg++;
        
        SW304.ethg++ <--> Eth1G <--> SW303.ethg++;
        SW304.ethg++ <--> Eth1G <--> ES403.ethg++;
        SW304.ethg++ <--> Eth1G <--> ES404.ethg++;
        
        SW305.ethg++ <--> Eth1G <--> SW304.ethg++;
        SW305.ethg++ <--> Eth1G <--> ES404.ethg++;
        SW305.ethg++ <--> Eth1G <--> ES405.ethg++;
        
        SW306.ethg++ <--> Eth1G <--> SW305.ethg++;
        SW306.ethg++ <--> Eth1G <--> ES405.ethg++;
        SW306.ethg++ <--> Eth1G <--> ES406.ethg++;
        
        SW307.ethg++ <--> Eth1G <--> SW306.ethg++;
        SW307.ethg++ <--> Eth1G <--> ES406.ethg++;
        SW307.ethg++ <--> Eth1G <--> ES407.ethg++;
        
        SW308.ethg++ <--> Eth1G <--> SW307.ethg++;
        SW308.ethg++ <--> Eth1G <--> ES407.ethg++;
        SW308.ethg++ <--> Eth1G <--> ES408.ethg++;
        
        SW309.ethg++ <--> Eth1G <--> SW308.ethg++;
        SW309.ethg++ <--> Eth1G <--> ES408.ethg++;
        SW309.ethg++ <--> Eth1G <--> ES409.ethg++;
        
        SW310.ethg++ <--> Eth1G <--> SW309.ethg++;
        SW310.ethg++ <--> Eth1G <--> ES409.ethg++;
        SW310.ethg++ <--> Eth1G <--> ES410.ethg++;
        
        SW311.ethg++ <--> Eth1G <--> SW310.ethg++;
        SW311.ethg++ <--> Eth1G <--> ES410.ethg++;
        SW311.ethg++ <--> Eth1G <--> ES411.ethg++;
        
        SW312.ethg++ <--> Eth1G <--> SW311.ethg++;
        SW312.ethg++ <--> Eth1G <--> ES411.ethg++;
        SW312.ethg++ <--> Eth1G <--> ES412.ethg++;
        
        SW313.ethg++ <--> Eth1G <--> SW312.ethg++;
        SW313.ethg++ <--> Eth1G <--> ES412.ethg++;
        SW313.ethg++ <--> Eth1G <--> ES413.ethg++;
        
        SW314.ethg++ <--> Eth1G <--> SW313.ethg++;
        SW314.ethg++ <--> Eth1G <--> ES413.ethg++;
        SW314.ethg++ <--> Eth1G <--> ES414.ethg++;
        
        SW315.ethg++ <--> Eth1G <--> SW314.ethg++;
        SW315.ethg++ <--> Eth1G <--> ES414.ethg++;
        SW315.ethg++ <--> Eth1G <--> ES415.ethg++;
        
        SW316.ethg++ <--> Eth1G <--> SW315.ethg++;
        SW316.ethg++ <--> Eth1G <--> ES415.ethg++;
        SW316.ethg++ <--> Eth1G <--> ES416.ethg++;
        
        SW317.ethg++ <--> Eth1G <--> SW316.ethg++;
        SW317.ethg++ <--> Eth1G <--> ES416.ethg++;
        SW317.ethg++ <--> Eth1G <--> ES417.ethg++;
        
        SW318.ethg++ <--> Eth1G <--> SW317.ethg++;
        SW318.ethg++ <--> Eth1G <--> ES417.ethg++;
        SW318.ethg++ <--> Eth1G <--> ES418.ethg++;
        
}
