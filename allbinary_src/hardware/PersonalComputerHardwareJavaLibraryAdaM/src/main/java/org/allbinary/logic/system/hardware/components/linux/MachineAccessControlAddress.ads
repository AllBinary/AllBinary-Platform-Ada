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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package MachineAccessControlAddressInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface_Package;

   type MachineAccessControlAddress is tagged;
   type MachineAccessControlAddress_Access is access all MachineAccessControlAddress'Class;
   type MachineAccessControlAddress_Access_Array is array (Natural range <>) of MachineAccessControlAddress_Access;
   type MachineAccessControlAddress_Access_Array_Access is access all MachineAccessControlAddress_Access_Array;

   type MachineAccessControlAddress is new HardwareComponentInterface and MachineAccessControlAddressInterface with null record;

   procedure Initialize (This : in out MachineAccessControlAddress'Class);
   function Create return MachineAccessControlAddress_Access;
   function compareTo (This : in out MachineAccessControlAddress; componentInterface : HardwareComponentInterface_Access) return Boolean;
   procedure compareTo (This : in out MachineAccessControlAddress; componentInterface : HardwareComponentInterface_Access);
   function toString (This : in out MachineAccessControlAddress) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress_Package;


