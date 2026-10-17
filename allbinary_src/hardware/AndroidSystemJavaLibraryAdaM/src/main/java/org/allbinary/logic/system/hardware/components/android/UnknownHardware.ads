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
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

package org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

   type UnknownHardware is tagged;
   type UnknownHardware_Access is access all UnknownHardware'Class;
   type UnknownHardware_Access_Array is array (Natural range <>) of UnknownHardware_Access;
   type UnknownHardware_Access_Array_Access is access all UnknownHardware_Access_Array;

   type UnknownHardware is new HardwareComponentInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out UnknownHardware'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return UnknownHardware_Access;
   function compareTo (This : in out UnknownHardware; componentInterface_Param : access HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out UnknownHardware; componentInterface_Param : access HardwareComponentInterface'Class);
   function toString (This : in out UnknownHardware) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package;


