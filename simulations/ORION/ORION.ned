package simulations.ORION;

import inet.networks.base.TsnNetworkBase;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;
import inet.node.ethernet.Eth1G;

network ORION extends TsnNetworkBase
{
    parameters:
        @display("bgb=1802,811");

    submodules:
        SW_22: TsnSwitch {
            @display("p=833,225;i=device/switch");
        }
        SW_36: TsnSwitch {
            @display("p=719,319;i=device/switch");
        }
        SW_35: TsnSwitch {
            @display("p=717,477;i=device/switch");
        }
        SW_34: TsnSwitch {
            @display("p=875,560;i=device/switch");
        }
        SW_23: TsnSwitch {
            @display("p=1098,226;i=device/switch");
        }
        SW_33: TsnSwitch {
            @display("p=1082,488;i=device/switch");
        }
        SW_32: TsnSwitch {
            @display("p=1244,360;i=device/switch");
        }
        SW_24: TsnSwitch {
            @display("p=1427,204;i=device/switch");
        }
        SW_27: TsnSwitch {
            @display("p=1427,382;i=device/switch");
        }
        SW_31: TsnSwitch {
            @display("p=1427,542;i=device/switch");
        }
        SW_25: TsnSwitch {
            @display("p=1648,197;i=device/switch");
        }
        SW_26: TsnSwitch {
            @display("p=1647,300;i=device/switch");
        }
        SW_28: TsnSwitch {
            @display("p=1647,411;i=device/switch");
        }
        SW_29: TsnSwitch {
            @display("p=1647,501;i=device/switch");
        }
        SW_30: TsnSwitch {
            @display("p=1647,603;i=device/switch");
        }
        ES_Steering_Actuator: TsnDevice {
            @display("p=440,34;i=device/pc");
        }
        ES_Steering_Angle_Sensor: TsnDevice {
            @display("p=740,34;i=device/pc");
        }
        ES_Braking_Actuator_3: TsnDevice {
            @display("p=933,59;i=device/pc");
        }
        ES_Braking_Controller: TsnDevice {
            @display("p=1098,82;i=device/pc");
        }
        ES_Velocity_Sensor_5: TsnDevice {
            @display("p=1268,47;i=device/pc");
        }
        ES_Braking_Actuator_6: TsnDevice {
            @display("p=1433,82;i=device/pc");
        }
        ES_Acceleration_Sensor_7: TsnDevice {
            @display("p=1634,47;i=device/pc");
        }
        ES_Acceleration_Sensor_8: TsnDevice {
            @display("p=1634,700;i=device/pc");
        }
        ES_Braking_Actuator_9: TsnDevice {
            @display("p=1459,660;i=device/pc");
        }
        ES_Velocity_Sensor_10: TsnDevice {
            @display("p=1268,700;i=device/pc");
        }
        ES_Steering_Controller: TsnDevice {
            @display("p=1077,677;i=device/pc");
        }
        ES_Driver_Interface: TsnDevice {
            @display("p=875,713;i=device/pc");
        }
        ES_Braking_Actuator_13: TsnDevice {
            @display("p=687,676;i=device/pc");
        }
        ES_Steering_Angle_Sensor_14: TsnDevice {
            @display("p=493,713;i=device/pc");
        }
        ES_Lateral_Function_ECU: TsnDevice {
            @display("p=313,660;i=device/pc");
        }
        ES_Wireless_Communication_ECU: TsnDevice {
            @display("p=350,542;i=device/pc");
        }
        ES_Engine_Torque_Sensor: TsnDevice {
            @display("p=334,438;i=device/pc");
        }
        ES_Mode_Function_ECU: TsnDevice {
            @display("p=313,332;i=device/pc");
        }
        ES_Longitudinal_Function_ECU: TsnDevice {
            @display("p=313,228;i=device/pc");
        }
        ES_Engine_Actuator: TsnDevice {
            @display("p=366,122;i=device/pc");
        }
        ES_Drivetrain_Actuator: TsnDevice {
            @display("p=581,149;i=device/pc");
        }
    connections:
        SW_22.ethg[1] <--> Eth1G <--> ES_Steering_Actuator.ethg[1];
        SW_22.ethg[2] <--> Eth1G <--> ES_Braking_Actuator_3.ethg[2];
        SW_22.ethg[3] <--> Eth1G <--> SW_23.ethg[3];
        SW_22.ethg[4] <--> Eth1G <--> SW_33.ethg[4];
        SW_36.ethg[1] <--> Eth1G <--> ES_Drivetrain_Actuator.ethg[1];
        SW_36.ethg[2] <--> Eth1G <--> ES_Engine_Actuator.ethg[2];
        SW_36.ethg[3] <--> Eth1G <--> ES_Longitudinal_Function_ECU.ethg[3];
        SW_36.ethg[4] <--> Eth1G <--> SW_23.ethg[4];
        SW_36.ethg[5] <--> Eth1G <--> SW_33.ethg[5];
        SW_35.ethg[1] <--> Eth1G <--> ES_Longitudinal_Function_ECU.ethg[1];
        SW_35.ethg[2] <--> Eth1G <--> ES_Mode_Function_ECU.ethg[2];
        SW_35.ethg[3] <--> Eth1G <--> ES_Wireless_Communication_ECU.ethg[3];
        SW_35.ethg[4] <--> Eth1G <--> ES_Lateral_Function_ECU.ethg[4];
        SW_35.ethg[5] <--> Eth1G <--> SW_23.ethg[5];
        SW_35.ethg[6] <--> Eth1G <--> SW_33.ethg[6];
        SW_34.ethg[1] <--> Eth1G <--> ES_Braking_Actuator_13.ethg[1];
        SW_34.ethg[2] <--> Eth1G <--> SW_23.ethg[2];
        SW_34.ethg[3] <--> Eth1G <--> SW_33.ethg[3];
        SW_33.ethg[5] <--> Eth1G <--> ES_Steering_Controller.ethg[5];
        SW_33.ethg[6] <--> Eth1G <--> SW_31.ethg[6];
        SW_33.ethg[7] <--> Eth1G <--> SW_32.ethg[7];
        SW_33.ethg[8] <--> Eth1G <--> SW_22.ethg[8];
        SW_33.ethg[9] <--> Eth1G <--> SW_35.ethg[9];
        SW_33.ethg[10] <--> Eth1G <--> SW_34.ethg[10];
        SW_31.ethg[2] <--> Eth1G <--> ES_Braking_Actuator_9.ethg[2];
        SW_31.ethg[3] <--> Eth1G <--> SW_30.ethg[3];
        SW_31.ethg[4] <--> Eth1G <--> SW_28.ethg[4];
        SW_31.ethg[5] <--> Eth1G <--> SW_27.ethg[5];
        SW_31.ethg[6] <--> Eth1G <--> SW_32.ethg[6];
        SW_31.ethg[7] <--> Eth1G <--> SW_33.ethg[7];
        SW_27.ethg[2] <--> Eth1G <--> SW_31.ethg[2];
        SW_27.ethg[3] <--> Eth1G <--> SW_29.ethg[3];
        SW_27.ethg[4] <--> Eth1G <--> SW_26.ethg[4];
        SW_27.ethg[5] <--> Eth1G <--> SW_24.ethg[5];
        SW_24.ethg[2] <--> Eth1G <--> SW_27.ethg[2];
        SW_24.ethg[3] <--> Eth1G <--> SW_28.ethg[3];
        SW_24.ethg[4] <--> Eth1G <--> SW_25.ethg[4];
        SW_24.ethg[5] <--> Eth1G <--> ES_Braking_Actuator_6.ethg[5];
        SW_30.ethg[2] <--> Eth1G <--> SW_31.ethg[2];
        SW_30.ethg[3] <--> Eth1G <--> SW_29.ethg[3];
        SW_29.ethg[3] <--> Eth1G <--> SW_27.ethg[3];
        SW_29.ethg[4] <--> Eth1G <--> SW_30.ethg[4];
        SW_28.ethg[3] <--> Eth1G <--> SW_31.ethg[3];
        SW_28.ethg[4] <--> Eth1G <--> SW_24.ethg[4];
        SW_26.ethg[2] <--> Eth1G <--> SW_27.ethg[2];
        SW_26.ethg[3] <--> Eth1G <--> SW_25.ethg[3];
        SW_25.ethg[3] <--> Eth1G <--> SW_26.ethg[3];
        SW_25.ethg[4] <--> Eth1G <--> SW_24.ethg[4];
        SW_32.ethg[3] <--> Eth1G <--> SW_33.ethg[3];
        SW_32.ethg[4] <--> Eth1G <--> ES_Steering_Controller.ethg[4];
        SW_32.ethg[5] <--> Eth1G <--> SW_31.ethg[5];
        SW_32.ethg[6] <--> Eth1G <--> SW_23.ethg[6];
        SW_32.ethg[7] <--> Eth1G <--> ES_Braking_Controller.ethg[7];
        SW_32.ethg[8] <--> Eth1G <--> SW_24.ethg[8];
        SW_23.ethg[6] <--> Eth1G <--> SW_32.ethg[6];
        SW_23.ethg[7] <--> Eth1G <--> SW_24.ethg[7];
        SW_23.ethg[8] <--> Eth1G <--> ES_Braking_Controller.ethg[8];
        SW_23.ethg[9] <--> Eth1G <--> SW_22.ethg[9];
        SW_23.ethg[10] <--> Eth1G <--> SW_36.ethg[10];
        SW_23.ethg[11] <--> Eth1G <--> SW_35.ethg[11];
        SW_23.ethg[12] <--> Eth1G <--> SW_34.ethg[12];
        ES_Steering_Angle_Sensor.ethg[1] <--> Eth1G <--> SW_22.ethg[1];
        ES_Velocity_Sensor_5.ethg[1] <--> Eth1G <--> SW_24.ethg[1];
        ES_Acceleration_Sensor_7.ethg[1] <--> Eth1G <--> SW_24.ethg[1];
        ES_Acceleration_Sensor_8.ethg[1] <--> Eth1G <--> SW_31.ethg[1];
        ES_Velocity_Sensor_10.ethg[1] <--> Eth1G <--> SW_31.ethg[1];
        ES_Steering_Controller.ethg[3] <--> Eth1G <--> SW_33.ethg[3];
        ES_Driver_Interface.ethg[1] <--> Eth1G <--> SW_33.ethg[1];
        ES_Steering_Angle_Sensor_14.ethg[1] <--> Eth1G <--> SW_34.ethg[1];
        ES_Lateral_Function_ECU.ethg[2] <--> Eth1G <--> SW_35.ethg[2];
        ES_Wireless_Communication_ECU.ethg[2] <--> Eth1G <--> SW_35.ethg[2];
        ES_Engine_Torque_Sensor.ethg[1] <--> Eth1G <--> SW_35.ethg[1];
        ES_Mode_Function_ECU.ethg[2] <--> Eth1G <--> SW_35.ethg[2];
        ES_Longitudinal_Function_ECU.ethg[3] <--> Eth1G <--> SW_35.ethg[3];
        ES_Longitudinal_Function_ECU.ethg[4] <--> Eth1G <--> SW_36.ethg[4];
        ES_Braking_Controller.ethg[3] <--> Eth1G <--> SW_23.ethg[3];
        ES_Braking_Controller.ethg[4] <--> Eth1G <--> SW_32.ethg[4];
        SW_33.ethg[15] <--> Eth1G <--> SW_36.ethg[15];
        SW_24.ethg[12] <--> Eth1G <--> SW_23.ethg[12];
        SW_24.ethg[13] <--> Eth1G <--> SW_32.ethg[13];
}
