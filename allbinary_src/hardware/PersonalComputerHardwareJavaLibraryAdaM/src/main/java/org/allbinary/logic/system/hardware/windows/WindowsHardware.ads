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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.components.ComponentFactory_Package; use org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
with org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.system.hardware.windows.WindowsHardware_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HardwareInterface_Package renames Standard.org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package ComponentFactory_Package renames Standard.org.allbinary.logic.system.hardware.components.ComponentFactory_Package;
   package BridgeInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
   package CpuInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
   package EthernetInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
   package FireWireInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;
   package HardDriveControllerInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
   package HardDriveInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package MachineAccessControlAddressInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;
   package MediaInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;
   package MonitorInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package;
   package UsbInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
   package VideoInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type WindowsHardware is tagged;
   type WindowsHardware_Access is access all WindowsHardware'Class;
   type WindowsHardware_Access_Array is array (Natural range <>) of WindowsHardware_Access;
   type WindowsHardware_Access_Array_Access is access all WindowsHardware_Access_Array;

   type WindowsHardware is new HardwareInterface with record
      componentInterfaceVector : BasicArrayList_Access;
      videoInterfaceVector : BasicArrayList_Access;
      hardDriveControllerInterfaceVector : BasicArrayList_Access;
      cpuInterfaceVector : BasicArrayList_Access;
      usbInterfaceVector : BasicArrayList_Access;
      ethernetInterfaceVector : BasicArrayList_Access;
      multimediaInterfaceVector : BasicArrayList_Access;
      fireWireInterfaceVector : BasicArrayList_Access;
      bridgeInterfaceVector : BasicArrayList_Access;
      hardDriveInterfaceVector : BasicArrayList_Access;
      macInterfaceVector : BasicArrayList_Access;
      monitorInterfaceVector : BasicArrayList_Access;
      NAME : Unbounded_String;
      MINHARDWARE : Integer;
      componentFactory : ComponentFactory_Access;
   end record;

   procedure Initialize (This : in out WindowsHardware'Class);
   function Create return WindowsHardware_Access;
   function getComponentType (This : in out WindowsHardware; component : Unbounded_String) return Unbounded_String;
   procedure getComponentType (This : in out WindowsHardware; component : Unbounded_String);
   function getMultimedia (This : in out WindowsHardware; index : Integer) return MediaInterface_Access;
   procedure getMultimedia (This : in out WindowsHardware; index : Integer);
   function getBridge (This : in out WindowsHardware; index : Integer) return BridgeInterface_Access;
   procedure getBridge (This : in out WindowsHardware; index : Integer);
   function getCpu (This : in out WindowsHardware; index : Integer) return CpuInterface_Access;
   procedure getCpu (This : in out WindowsHardware; index : Integer);
   function getEthernet (This : in out WindowsHardware; index : Integer) return EthernetInterface_Access;
   procedure getEthernet (This : in out WindowsHardware; index : Integer);
   function getFireWire (This : in out WindowsHardware; index : Integer) return FireWireInterface_Access;
   procedure getFireWire (This : in out WindowsHardware; index : Integer);
   function getHardDriveController (This : in out WindowsHardware; index : Integer) return HardDriveControllerInterface_Access;
   procedure getHardDriveController (This : in out WindowsHardware; index : Integer);
   function getHardDrive (This : in out WindowsHardware; index : Integer) return HardDriveInterface_Access;
   procedure getHardDrive (This : in out WindowsHardware; index : Integer);
   function getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer) return MachineAccessControlAddressInterface_Access;
   procedure getMachineAccessControlAddress (This : in out WindowsHardware; index : Integer);
   function getMonitor (This : in out WindowsHardware; index : Integer) return MonitorInterface_Access;
   procedure getMonitor (This : in out WindowsHardware; index : Integer);
   function getUsb (This : in out WindowsHardware; index : Integer) return UsbInterface_Access;
   procedure getUsb (This : in out WindowsHardware; index : Integer);
   function getVideo (This : in out WindowsHardware; index : Integer) return VideoInterface_Access;
   procedure getVideo (This : in out WindowsHardware; index : Integer);
   function getComponent (This : in out WindowsHardware; index : Integer) return HardwareComponentInterface_Access;
   procedure getComponent (This : in out WindowsHardware; index : Integer);
   function toString (This : in out WindowsHardware) return Unbounded_String;
   function compareTo (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean;
   procedure compareTo (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class);
   function difference (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access;
   procedure difference (This : in out WindowsHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class);

end org.allbinary.logic.system.hardware.windows.WindowsHardware_Package;


