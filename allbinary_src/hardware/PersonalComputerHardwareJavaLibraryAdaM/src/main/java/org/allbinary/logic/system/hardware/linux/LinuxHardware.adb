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


with java.io.FileReader_Package; use java.io.FileReader_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
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
with org.allbinary.logic.system.hardware.components.linux.Cpu_Package; use org.allbinary.logic.system.hardware.components.linux.Cpu_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package; use org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.system.hardware.components.Component_Package;
with org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigType_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.system.hardware.linux.PCComponentFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.system.hardware.components.linux.Cpu_Package_References;

package body org.allbinary.logic.system.hardware.linux.LinuxHardware_Package is

   package FileReader_Package renames Standard.java.io.FileReader_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FilePathData_Package renames Standard.org.allbinary.logic.io.file.FilePathData_Package;
   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Cpu_Package renames Standard.org.allbinary.logic.system.hardware.components.linux.Cpu_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out LinuxHardware'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
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
      This.NAME := To_Unbounded_String ("Linux Hardware Profile");
      This.MINHARDWARE := 5;
   end Initialize_Fields;


   procedure Initialize (This : in out LinuxHardware'Class; path : Unbounded_String) is
   begin
      Initialize_Fields (This);
        LinuxHardware'Class (This).init (path);
   end Initialize;

   function Create (path : Unbounded_String) return LinuxHardware_Access is
      This : constant LinuxHardware_Access := new LinuxHardware;
   begin
      LinuxHardware_Package.Initialize (This.all, path);
      return This;
   end Create;

   procedure Initialize (This : in out LinuxHardware'Class) is
      cpu : Cpu_Access;
   begin
      Initialize_Fields (This);
        LinuxHardware'Class (This).init (PCIFILE);
        if (This.componentInterfaceVector.size) < (This.MINHARDWARE) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Enough Data For A Valid License On Linux")));
        end if;
        cpu := Cpu_Package.Create;
        if (not org.allbinary.logic.system.hardware.components.linux.Cpu_Package_References."=" (cpu, null)) then
            This.cpuInterfaceVector.add (Java_Object_Access (cpu));
            This.componentInterfaceVector.add (Java_Object_Access (cpu));
        end if;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
            This.logUtil.putF (To_Unbounded_String ("Hardware Data: ") & LinuxHardware'Class (This).toString, LinuxHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return LinuxHardware_Access is
      This : constant LinuxHardware_Access := new LinuxHardware;
   begin
      LinuxHardware_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out LinuxHardware; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access;
   begin
        lineNumberReader := null;
        begin
            LinuxHardware'Class (This).init (lineNumberReader, filePath);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                This.logUtil.put (To_Unbounded_String ("Hardware Data: ") & LinuxHardware'Class (This).toString, LinuxHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end init;

   --  throws Exception
   procedure init (This : in out LinuxHardware; lineNumberReader_Param : access LineNumberReader_Package.LineNumberReader'Class; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access := LineNumberReader_Access (lineNumberReader_Param);
      pciFile : FileReader_Access;
      fileVector : BasicArrayList_Access;
      file : AbFile_Access;
      nextLine : Unbounded_String;
      componentData : StringMaker_Access;
      componentType : Unbounded_String;
      componentInterface : HardwareComponentInterface_Access;
   begin
        begin
            This.componentInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.videoInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.hardDriveControllerInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.cpuInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.usbInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.ethernetInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.multimediaInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.fireWireInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.bridgeInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.hardDriveInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.macInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            This.monitorInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            pciFile := FileReader_Package.Create (filePath);
            lineNumberReader := LineNumberReader_Package.Create (pciFile);
            if (lineNumberReader) = (null) then
                fileVector := SubDirectory_Package.getInstance.search (filePath, AbFile_Package.createAbFile (FilePathData_Package.getInstance.PATH_START));
                if not (fileVector.isEmpty) then
                    file := AbFile_Access (fileVector.get (0));
                    lineNumberReader := LineNumberReader_Package.Create (FileReader_Package.Create (file.getPath));
                end if;
                if (lineNumberReader) = (null) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Linux File Data")));
                end if;
            end if;
            if (lineNumberReader) /= (null) then
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                    This.logUtil.putF (To_Unbounded_String ("PCI File Found"), LinuxHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end if;
                nextLine := lineNumberReader.readLine;
                while (nextLine) /= (Null_Unbounded_String) loop
                    if LinuxHardware'Class (This).isNextHardware (nextLine) then
                        exit;
                    end if;
                    nextLine := lineNumberReader.readLine;
                end loop;
                while LinuxHardware'Class (This).isNextHardware (nextLine) loop
                    componentData := StringMaker_Package.Create;
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                        This.logUtil.putF (To_Unbounded_String ("Found Hardware Device: ") & Java_Image (This.componentInterfaceVector.size), LinuxHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                    end if;
                    componentData.append (nextLine);
                    componentData.append (CommonSeps_Package.getInstance.NEW_LINE);
                    nextLine := lineNumberReader.readLine;
                    componentType := PCComponentFactory_Package.getInstance.getComponentType (nextLine);
                    while True loop
                        componentData.append (nextLine);
                        componentData.append (CommonSeps_Package.getInstance.NEW_LINE);
                        nextLine := lineNumberReader.readLine;
                        if ((nextLine) = (Null_Unbounded_String)) or else (LinuxHardware'Class (This).isNextHardware (nextLine)) then
                            exit;
                        end if;
                    end loop;
                    componentInterface := HardwareComponentInterface_Access (PCComponentFactory_Package.getInstance.getInstance (componentType, componentData.toString));
                    if (componentInterface) /= (null) then
                        This.componentInterfaceVector.add (HardwareComponentInterface_Package.Java_Object_Access_From_HardwareComponentInterface (componentInterface));
                    end if;
                end loop;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                    This.logUtil.putF (To_Unbounded_String ("Could not load PCI File"), LinuxHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end if;
            end if;
            lineNumberReader.close;
        end;
        --  finally
        begin
            if (lineNumberReader) /= (null) then
                lineNumberReader.close;
            end if;
        end;
   end init;

   function getMultimedia (This : in out LinuxHardware; index : Integer) return MediaInterface_Access is
   begin
        return MediaInterface_Access (This.multimediaInterfaceVector.get (index));
   end getMultimedia;

   function getBridge (This : in out LinuxHardware; index : Integer) return BridgeInterface_Access is
   begin
        return BridgeInterface_Access (This.bridgeInterfaceVector.get (index));
   end getBridge;

   function getCpu (This : in out LinuxHardware; index : Integer) return CpuInterface_Access is
   begin
        return CpuInterface_Access (This.cpuInterfaceVector.get (index));
   end getCpu;

   function getEthernet (This : in out LinuxHardware; index : Integer) return EthernetInterface_Access is
   begin
        return EthernetInterface_Access (This.ethernetInterfaceVector.get (index));
   end getEthernet;

   function getFireWire (This : in out LinuxHardware; index : Integer) return FireWireInterface_Access is
   begin
        return FireWireInterface_Access (This.fireWireInterfaceVector.get (index));
   end getFireWire;

   function getHardDriveController (This : in out LinuxHardware; index : Integer) return HardDriveControllerInterface_Access is
   begin
        return HardDriveControllerInterface_Access (This.hardDriveControllerInterfaceVector.get (index));
   end getHardDriveController;

   function getHardDrive (This : in out LinuxHardware; index : Integer) return HardDriveInterface_Access is
   begin
        return HardDriveInterface_Access (This.hardDriveInterfaceVector.get (index));
   end getHardDrive;

   function getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer) return MachineAccessControlAddressInterface_Access is
   begin
        return MachineAccessControlAddressInterface_Access (This.macInterfaceVector.get (index));
   end getMachineAccessControlAddress;

   function getMonitor (This : in out LinuxHardware; index : Integer) return MonitorInterface_Access is
   begin
        return MonitorInterface_Access (This.monitorInterfaceVector.get (index));
   end getMonitor;

   function getUsb (This : in out LinuxHardware; index : Integer) return UsbInterface_Access is
   begin
        return UsbInterface_Access (This.usbInterfaceVector.get (index));
   end getUsb;

   function getVideo (This : in out LinuxHardware; index : Integer) return VideoInterface_Access is
   begin
        return VideoInterface_Access (This.videoInterfaceVector.get (index));
   end getVideo;

   function getComponent (This : in out LinuxHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        return HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
   end getComponent;

   function toString (This : in out LinuxHardware) return Unbounded_String is
      hardwareBuffer : StringMaker_Access;
      size : Integer;
      componentInterface : HardwareComponentInterface_Access;
      index : Integer;
   begin
        hardwareBuffer := StringMaker_Package.Create;
        size := This.componentInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            componentInterface := HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
            hardwareBuffer.append (To_Unbounded_String ("Component "));
            hardwareBuffer.appendint (index);
            hardwareBuffer.append (To_Unbounded_String (": " & ASCII.LF & ""));
            hardwareBuffer.append (Java_Object'Class (componentInterface.all).toString);
            hardwareBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return hardwareBuffer.toString;
   end toString;

   function compareTo (This : in out LinuxHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return True;
   end compareTo;

   function difference (This : in out LinuxHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
   end difference;

   function isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String) return Boolean is
      index : Integer;
   begin
        if (nextLine) /= (Null_Unbounded_String) then
            index := Java_Index_Of (nextLine, Java_Image (To_Unbounded_String ("Bus")));
            if ((index) >= (0)) and then ((index) < (4)) then
                return True;
            end if;
        end if;
        return False;
   end isNextHardware;

   procedure getMultimedia (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MediaInterface_Access := LinuxHardware'Class (This).getMultimedia (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultimedia;

   procedure getBridge (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant BridgeInterface_Access := LinuxHardware'Class (This).getBridge (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBridge;

   procedure getCpu (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant CpuInterface_Access := LinuxHardware'Class (This).getCpu (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpu;

   procedure getEthernet (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant EthernetInterface_Access := LinuxHardware'Class (This).getEthernet (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEthernet;

   procedure getFireWire (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant FireWireInterface_Access := LinuxHardware'Class (This).getFireWire (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFireWire;

   procedure getHardDriveController (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardDriveControllerInterface_Access := LinuxHardware'Class (This).getHardDriveController (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDriveController;

   procedure getHardDrive (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardDriveInterface_Access := LinuxHardware'Class (This).getHardDrive (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDrive;

   procedure getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MachineAccessControlAddressInterface_Access := LinuxHardware'Class (This).getMachineAccessControlAddress (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMachineAccessControlAddress;

   procedure getMonitor (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MonitorInterface_Access := LinuxHardware'Class (This).getMonitor (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMonitor;

   procedure getUsb (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant UsbInterface_Access := LinuxHardware'Class (This).getUsb (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsb;

   procedure getVideo (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant VideoInterface_Access := LinuxHardware'Class (This).getVideo (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVideo;

   procedure getComponent (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := LinuxHardware'Class (This).getComponent (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out LinuxHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant Boolean := LinuxHardware'Class (This).compareTo (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out LinuxHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant ABHashtable_Access := LinuxHardware'Class (This).difference (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

   procedure isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String) is
      Java_Result : constant Boolean := LinuxHardware'Class (This).isNextHardware (nextLine => nextLine);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNextHardware;

begin
   null;
   PCIFILE := To_Unbounded_String ("/proc/pci");

end org.allbinary.logic.system.hardware.linux.LinuxHardware_Package;


