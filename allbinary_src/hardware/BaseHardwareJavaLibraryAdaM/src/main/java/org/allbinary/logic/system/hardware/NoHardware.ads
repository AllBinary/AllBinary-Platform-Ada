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
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package; use org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;

package org.allbinary.logic.system.hardware.NoHardware_Package is

   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package HardwareComponentInterface_Package renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package NoHardwareComponent_Package renames org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type NoHardware is tagged;
   type NoHardware_Access is access all NoHardware'Class;
   type NoHardware_Access_Array is array (Natural range <>) of NoHardware_Access;
   type NoHardware_Access_Array_Access is access all NoHardware_Access_Array;

   type NoHardware is new HardwareInterface with null record;
   instance : HardwareInterface_Access;

   procedure Initialize (This : in out NoHardware'Class);
   function Create return NoHardware_Access;
   function getInstance return HardwareInterface_Access;
   procedure getInstance;
   function getComponent (This : in out NoHardware; index : Integer) return HardwareComponentInterface_Access;
   procedure getComponent (This : in out NoHardware; index : Integer);
   function toString (This : in out NoHardware) return Unbounded_String;
   procedure toString (This : in out NoHardware);
   function compareTo (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) return Boolean;
   procedure compareTo (This : in out NoHardware; hardwareInterface : HardwareInterface_Access);
   function difference (This : in out NoHardware; hardwareInterface : HardwareInterface_Access) return ABHashtable_Access;
   procedure difference (This : in out NoHardware; hardwareInterface : HardwareInterface_Access);

end org.allbinary.logic.system.hardware.NoHardware_Package;


