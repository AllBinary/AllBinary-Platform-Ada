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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.system.hardware.windows.WindowsHardware_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out WindowsHardware'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WindowsHardware'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WindowsHardware_Access is
      This : constant WindowsHardware_Access := new WindowsHardware;
   begin
      WindowsHardware_Package.Initialize (This.all);
      return This;
   end Create;

   function getMultimedia (This : in out WindowsHardware; index : Integer) return MediaInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMultimedia;

   function getBridge (This : in out WindowsHardware; index : Integer) return BridgeInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getBridge;

   function getCpu (This : in out WindowsHardware; index : Integer) return CpuInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCpu;

   function getEthernet (This : in out WindowsHardware; index : Integer) return EthernetInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getEthernet;

   function getFireWire (This : in out WindowsHardware; index : Integer) return FireWireInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getFireWire;

   function getHardDriveController (This : in out WindowsHardware; index : Integer) return HardDriveControllerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHardDriveController;

   function getHardDrive (This : in out WindowsHardware; index : Integer) return HardDriveInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHardDrive;

   function getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer) return MachineAccessControlAddressInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMachineAccessControlAddress;

   function getMonitor (This : in out WindowsHardware; index : Integer) return MonitorInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMonitor;

   function getUsb (This : in out WindowsHardware; index : Integer) return UsbInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getUsb;

   function getVideo (This : in out WindowsHardware; index : Integer) return VideoInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getVideo;

   function getComponent (This : in out WindowsHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getComponent;

   function toString (This : in out WindowsHardware) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
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

   procedure getMultimedia (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MediaInterface_Access := WindowsHardware'Class (This).getMultimedia (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultimedia;

   procedure getBridge (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant BridgeInterface_Access := WindowsHardware'Class (This).getBridge (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBridge;

   procedure getCpu (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant CpuInterface_Access := WindowsHardware'Class (This).getCpu (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpu;

   procedure getEthernet (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant EthernetInterface_Access := WindowsHardware'Class (This).getEthernet (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEthernet;

   procedure getFireWire (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant FireWireInterface_Access := WindowsHardware'Class (This).getFireWire (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFireWire;

   procedure getHardDriveController (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardDriveControllerInterface_Access := WindowsHardware'Class (This).getHardDriveController (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDriveController;

   procedure getHardDrive (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardDriveInterface_Access := WindowsHardware'Class (This).getHardDrive (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDrive;

   procedure getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MachineAccessControlAddressInterface_Access := WindowsHardware'Class (This).getMachineAccessControlAddress (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMachineAccessControlAddress;

   procedure getMonitor (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant MonitorInterface_Access := WindowsHardware'Class (This).getMonitor (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMonitor;

   procedure getUsb (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant UsbInterface_Access := WindowsHardware'Class (This).getUsb (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsb;

   procedure getVideo (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant VideoInterface_Access := WindowsHardware'Class (This).getVideo (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVideo;

   procedure getComponent (This : in out WindowsHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := WindowsHardware'Class (This).getComponent (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant Boolean := WindowsHardware'Class (This).compareTo (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant ABHashtable_Access := WindowsHardware'Class (This).difference (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

end org.allbinary.logic.system.hardware.windows.WindowsHardware_Package;


