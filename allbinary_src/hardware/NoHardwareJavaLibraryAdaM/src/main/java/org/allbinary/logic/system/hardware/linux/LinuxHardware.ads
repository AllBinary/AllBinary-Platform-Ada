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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.logic.system.hardware.linux.LinuxHardware_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package HardwareInterface_Package renames org.allbinary.logic.system.hardware.HardwareInterface_Package;
   package BridgeInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.BridgeInterface_Package;
   package CpuInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.CpuInterface_Package;
   package EthernetInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.EthernetInterface_Package;
   package FireWireInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.FireWireInterface_Package;
   package HardDriveControllerInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface_Package;
   package HardDriveInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.HardDriveInterface_Package;
   package HardwareComponentInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package MachineAccessControlAddressInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;
   package MediaInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;
   package MonitorInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.MonitorInterface_Package;
   package UsbInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.UsbInterface_Package;
   package VideoInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.VideoInterface_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type LinuxHardware is tagged;
   type LinuxHardware_Access is access all LinuxHardware'Class;
   type LinuxHardware_Access_Array is array (Natural range <>) of LinuxHardware_Access;
   type LinuxHardware_Access_Array_Access is access all LinuxHardware_Access_Array;

   type LinuxHardware is new HardwareInterface with null record;

   procedure Initialize (This : in out LinuxHardware'Class);
   function Create return LinuxHardware_Access;
   function getMultimedia (This : in out LinuxHardware; index : Integer) return MediaInterface_Access;
   procedure getMultimedia (This : in out LinuxHardware; index : Integer);
   function getBridge (This : in out LinuxHardware; index : Integer) return BridgeInterface_Access;
   procedure getBridge (This : in out LinuxHardware; index : Integer);
   function getCpu (This : in out LinuxHardware; index : Integer) return CpuInterface_Access;
   procedure getCpu (This : in out LinuxHardware; index : Integer);
   function getEthernet (This : in out LinuxHardware; index : Integer) return EthernetInterface_Access;
   procedure getEthernet (This : in out LinuxHardware; index : Integer);
   function getFireWire (This : in out LinuxHardware; index : Integer) return FireWireInterface_Access;
   procedure getFireWire (This : in out LinuxHardware; index : Integer);
   function getHardDriveController (This : in out LinuxHardware; index : Integer) return HardDriveControllerInterface_Access;
   procedure getHardDriveController (This : in out LinuxHardware; index : Integer);
   function getHardDrive (This : in out LinuxHardware; index : Integer) return HardDriveInterface_Access;
   procedure getHardDrive (This : in out LinuxHardware; index : Integer);
   function getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer) return MachineAccessControlAddressInterface_Access;
   procedure getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer);
   function getMonitor (This : in out LinuxHardware; index : Integer) return MonitorInterface_Access;
   procedure getMonitor (This : in out LinuxHardware; index : Integer);
   function getUsb (This : in out LinuxHardware; index : Integer) return UsbInterface_Access;
   procedure getUsb (This : in out LinuxHardware; index : Integer);
   function getVideo (This : in out LinuxHardware; index : Integer) return VideoInterface_Access;
   procedure getVideo (This : in out LinuxHardware; index : Integer);
   function getComponent (This : in out LinuxHardware; index : Integer) return HardwareComponentInterface_Access;
   procedure getComponent (This : in out LinuxHardware; index : Integer);
   function toString (This : in out LinuxHardware) return Unbounded_String;
   procedure toString (This : in out LinuxHardware);
   function compareTo (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) return Boolean;
   procedure compareTo (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access);
   function difference (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) return ABHashtable_Access;
   procedure difference (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access);
   function isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String) return Boolean;
   procedure isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String);

end org.allbinary.logic.system.hardware.linux.LinuxHardware_Package;


