--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.system.hardware.windows.WindowsHardware_Package is

   procedure Initialize_Fields (This : in out WindowsHardware'Class) is
   begin
      null;
      This.componentInterfaceVector := null;
      This.videoInterfaceVector := null;
      This.hardDriveControllerInterfaceVector := null;
      This.cpuInterfaceVector := null;
      This.usbInterfaceVector := null;
      This.ethernetInterfaceVector := null;
      This.multimediaInterfaceVector := null;
      This.fireWireInterfaceVector := null;
      This.bridgeInterfaceVector := null;
      This.hardDriveInterfaceVector := null;
      This.macInterfaceVector := null;
      This.monitorInterfaceVector := null;
      This.NAME := To_Unbounded_String ("Windows Hardware Profile");
      This.MINHARDWARE := 0;
      This.componentFactory := ComponentFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WindowsHardware'Class) is
   begin
      Initialize_Fields (This);
        begin
            This.componentInterfaceVector := BasicArrayListD_Package.Create;
            This.videoInterfaceVector := BasicArrayListD_Package.Create;
            This.hardDriveControllerInterfaceVector := BasicArrayListD_Package.Create;
            This.cpuInterfaceVector := BasicArrayListD_Package.Create;
            This.usbInterfaceVector := BasicArrayListD_Package.Create;
            This.ethernetInterfaceVector := BasicArrayListD_Package.Create;
            This.multimediaInterfaceVector := BasicArrayListD_Package.Create;
            This.fireWireInterfaceVector := BasicArrayListD_Package.Create;
            This.bridgeInterfaceVector := BasicArrayListD_Package.Create;
            This.hardDriveInterfaceVector := BasicArrayListD_Package.Create;
            This.macInterfaceVector := BasicArrayListD_Package.Create;
            This.monitorInterfaceVector := BasicArrayListD_Package.Create;
            if (This.componentInterfaceVector.size) < (This.MINHARDWARE) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Enough Data For A Valid License On Windows")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create return WindowsHardware_Access is
      This : constant WindowsHardware_Access := new WindowsHardware;
   begin
      WindowsHardware_Package.Initialize (This.all);
      return This;
   end Create;

   function getComponentType (This : in out WindowsHardware; component : Unbounded_String) return Unbounded_String is
   begin
        if ((Index (component, To_String (This.componentFactory.ETHERNET.toString)) - 1)) >= (0) then
            return This.componentFactory.ETHERNET.toString;
        elsif ((Index (component, To_String (This.componentFactory.BRIDGE.toString)) - 1)) >= (0) then
            return This.componentFactory.BRIDGE.toString;
        elsif ((Index (component, To_String (This.componentFactory.IDE.toString)) - 1)) >= (0) then
            return This.componentFactory.IDE.toString;
        elsif ((Index (component, To_String (This.componentFactory.MULTIMEDIA.toString)) - 1)) >= (0) then
            return This.componentFactory.MULTIMEDIA.toString;
        elsif ((Index (component, To_String (This.componentFactory.SCSI.toString)) - 1)) >= (0) then
            return This.componentFactory.SCSI.toString;
        elsif ((Index (component, To_String (This.componentFactory.USB.toString)) - 1)) >= (0) then
            return This.componentFactory.USB.toString;
        elsif ((Index (component, To_String (This.componentFactory.VGA.toString)) - 1)) >= (0) then
            return This.componentFactory.VGA.toString;
        else
            return Null_Unbounded_String;
        end if;
   end getComponentType;

   function getMultimedia (This : in out WindowsHardware; index : Integer) return MediaInterface_Access is
   begin
        return MediaInterface_Access (This.multimediaInterfaceVector.get (index));
   end getMultimedia;

   function getBridge (This : in out WindowsHardware; index : Integer) return BridgeInterface_Access is
   begin
        return BridgeInterface_Access (This.bridgeInterfaceVector.get (index));
   end getBridge;

   function getCpu (This : in out WindowsHardware; index : Integer) return CpuInterface_Access is
   begin
        return CpuInterface_Access (This.cpuInterfaceVector.get (index));
   end getCpu;

   function getEthernet (This : in out WindowsHardware; index : Integer) return EthernetInterface_Access is
   begin
        return EthernetInterface_Access (This.ethernetInterfaceVector.get (index));
   end getEthernet;

   function getFireWire (This : in out WindowsHardware; index : Integer) return FireWireInterface_Access is
   begin
        return FireWireInterface_Access (This.fireWireInterfaceVector.get (index));
   end getFireWire;

   function getHardDriveController (This : in out WindowsHardware; index : Integer) return HardDriveControllerInterface_Access is
   begin
        return HardDriveControllerInterface_Access (This.hardDriveControllerInterfaceVector.get (index));
   end getHardDriveController;

   function getHardDrive (This : in out WindowsHardware; index : Integer) return HardDriveInterface_Access is
   begin
        return HardDriveInterface_Access (This.hardDriveInterfaceVector.get (index));
   end getHardDrive;

   function getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer) return MachineAccessControlAddressInterface_Access is
   begin
        return MachineAccessControlAddressInterface_Access (This.macInterfaceVector.get (index));
   end getMachineAccessControlAddress;

   function getMonitor (This : in out WindowsHardware; index : Integer) return MonitorInterface_Access is
   begin
        return MonitorInterface_Access (This.monitorInterfaceVector.get (index));
   end getMonitor;

   function getUsb (This : in out WindowsHardware; index : Integer) return UsbInterface_Access is
   begin
        return UsbInterface_Access (This.usbInterfaceVector.get (index));
   end getUsb;

   function getVideo (This : in out WindowsHardware; index : Integer) return VideoInterface_Access is
   begin
        return VideoInterface_Access (This.videoInterfaceVector.get (index));
   end getVideo;

   function getComponent (This : in out WindowsHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        return HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
   end getComponent;

   function toString (This : in out WindowsHardware) return Unbounded_String is
      hardwareBuffer : StringMaker_Access;
      size : Integer;
      componentInterface : HardwareComponentInterface_Access;
      index : Integer;
   begin
        hardwareBuffer := StringMaker_Package.Create;
        size := This.componentInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            componentInterface := HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
            hardwareBuffer.append (componentInterface.toString);
            hardwareBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return hardwareBuffer.toString;
   end toString;

   function compareTo (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return True;
   end compareTo;

   function difference (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end difference;

   procedure getComponentType (This : in out WindowsHardware; component : Unbounded_String) is
      Java_Result : constant Unbounded_String := WindowsHardware'Class (This).getComponentType (component);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponentType;

   procedure getMultimedia (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MediaInterface_Access := WindowsHardware'Class (This).getMultimedia (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultimedia;

   procedure getBridge (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant BridgeInterface_Access := WindowsHardware'Class (This).getBridge (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBridge;

   procedure getCpu (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant CpuInterface_Access := WindowsHardware'Class (This).getCpu (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpu;

   procedure getEthernet (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant EthernetInterface_Access := WindowsHardware'Class (This).getEthernet (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEthernet;

   procedure getFireWire (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant FireWireInterface_Access := WindowsHardware'Class (This).getFireWire (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFireWire;

   procedure getHardDriveController (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardDriveControllerInterface_Access := WindowsHardware'Class (This).getHardDriveController (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDriveController;

   procedure getHardDrive (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardDriveInterface_Access := WindowsHardware'Class (This).getHardDrive (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDrive;

   procedure getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MachineAccessControlAddressInterface_Access := WindowsHardware'Class (This).getMachineAccessControlAddress (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMachineAccessControlAddress;

   procedure getMonitor (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MonitorInterface_Access := WindowsHardware'Class (This).getMonitor (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMonitor;

   procedure getUsb (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant UsbInterface_Access := WindowsHardware'Class (This).getUsb (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsb;

   procedure getVideo (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant VideoInterface_Access := WindowsHardware'Class (This).getVideo (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVideo;

   procedure getComponent (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := WindowsHardware'Class (This).getComponent (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant Boolean := WindowsHardware'Class (This).compareTo (hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant ABHashtable_Access := WindowsHardware'Class (This).difference (hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

end org.allbinary.logic.system.hardware.windows.WindowsHardware_Package;


