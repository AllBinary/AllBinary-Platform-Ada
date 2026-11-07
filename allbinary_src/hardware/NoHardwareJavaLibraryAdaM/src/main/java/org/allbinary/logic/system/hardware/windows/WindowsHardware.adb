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
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References;
with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;

package body org.allbinary.logic.system.hardware.windows.WindowsHardware_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype BridgeInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References.BridgeInterface_Access;
   function "=" (Left, Right : BridgeInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References."=";
   subtype BridgeInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References.BridgeInterface_Access_Array;
   function "=" (Left, Right : BridgeInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References."=";
   subtype BridgeInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References.BridgeInterface_Access_Array_Access;
   function "=" (Left, Right : BridgeInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References."=";
   subtype BridgeInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References.BridgeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BridgeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References."=";
   subtype BridgeInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References.BridgeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BridgeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package_References."=";
   subtype CpuInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access;
   function "=" (Left, Right : CpuInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array;
   function "=" (Left, Right : CpuInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access;
   function "=" (Left, Right : CpuInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CpuInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype CpuInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References.CpuInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CpuInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package_References."=";
   subtype EthernetInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access;
   function "=" (Left, Right : EthernetInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array;
   function "=" (Left, Right : EthernetInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype EthernetInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References.EthernetInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EthernetInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package_References."=";
   subtype FireWireInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access;
   function "=" (Left, Right : FireWireInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array;
   function "=" (Left, Right : FireWireInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype FireWireInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References.FireWireInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FireWireInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package_References."=";
   subtype HardDriveControllerInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References.HardDriveControllerInterface_Access;
   function "=" (Left, Right : HardDriveControllerInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References."=";
   subtype HardDriveControllerInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References.HardDriveControllerInterface_Access_Array;
   function "=" (Left, Right : HardDriveControllerInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References."=";
   subtype HardDriveControllerInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References.HardDriveControllerInterface_Access_Array_Access;
   function "=" (Left, Right : HardDriveControllerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References."=";
   subtype HardDriveControllerInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References.HardDriveControllerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardDriveControllerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References."=";
   subtype HardDriveControllerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References.HardDriveControllerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardDriveControllerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package_References."=";
   subtype HardDriveInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References.HardDriveInterface_Access;
   function "=" (Left, Right : HardDriveInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References."=";
   subtype HardDriveInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References.HardDriveInterface_Access_Array;
   function "=" (Left, Right : HardDriveInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References."=";
   subtype HardDriveInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References.HardDriveInterface_Access_Array_Access;
   function "=" (Left, Right : HardDriveInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References."=";
   subtype HardDriveInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References.HardDriveInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardDriveInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References."=";
   subtype HardDriveInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References.HardDriveInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardDriveInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package_References."=";
   subtype HardwareComponentInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype MachineAccessControlAddressInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References.MachineAccessControlAddressInterface_Access;
   function "=" (Left, Right : MachineAccessControlAddressInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References."=";
   subtype MachineAccessControlAddressInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References.MachineAccessControlAddressInterface_Access_Array;
   function "=" (Left, Right : MachineAccessControlAddressInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References."=";
   subtype MachineAccessControlAddressInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References.MachineAccessControlAddressInterface_Access_Array_Access;
   function "=" (Left, Right : MachineAccessControlAddressInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References."=";
   subtype MachineAccessControlAddressInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References.MachineAccessControlAddressInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MachineAccessControlAddressInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References."=";
   subtype MachineAccessControlAddressInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References.MachineAccessControlAddressInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MachineAccessControlAddressInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package_References."=";
   subtype MediaInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References.MediaInterface_Access;
   function "=" (Left, Right : MediaInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References."=";
   subtype MediaInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References.MediaInterface_Access_Array;
   function "=" (Left, Right : MediaInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References."=";
   subtype MediaInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References.MediaInterface_Access_Array_Access;
   function "=" (Left, Right : MediaInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References."=";
   subtype MediaInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References.MediaInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MediaInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References."=";
   subtype MediaInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References.MediaInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package_References."=";
   subtype MonitorInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References.MonitorInterface_Access;
   function "=" (Left, Right : MonitorInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References."=";
   subtype MonitorInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References.MonitorInterface_Access_Array;
   function "=" (Left, Right : MonitorInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References."=";
   subtype MonitorInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References.MonitorInterface_Access_Array_Access;
   function "=" (Left, Right : MonitorInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References."=";
   subtype MonitorInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References.MonitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MonitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References."=";
   subtype MonitorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References.MonitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MonitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package_References."=";
   subtype UsbInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access;
   function "=" (Left, Right : UsbInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array;
   function "=" (Left, Right : UsbInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access;
   function "=" (Left, Right : UsbInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UsbInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype UsbInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References.UsbInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UsbInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package_References."=";
   subtype VideoInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access;
   function "=" (Left, Right : VideoInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array;
   function "=" (Left, Right : VideoInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access;
   function "=" (Left, Right : VideoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VideoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype VideoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References.VideoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VideoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
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


