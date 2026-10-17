-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type NoHardwareComponent is tagged;
   type NoHardwareComponent_Access is access all NoHardwareComponent'Class;
   type NoHardwareComponent_Access_Array is array (Natural range <>) of NoHardwareComponent_Access;
   type NoHardwareComponent_Access_Array_Access is access all NoHardwareComponent_Access_Array;

   type NoHardwareComponent is new HardwareComponentInterface with null record;
   instance : NoHardwareComponent_Access;

   procedure Initialize (This : in out NoHardwareComponent'Class);
   function Create return NoHardwareComponent_Access;
   function getInstance return NoHardwareComponent_Access;
   function compareTo (This : in out NoHardwareComponent; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out NoHardwareComponent; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out NoHardwareComponent) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent_Package;


