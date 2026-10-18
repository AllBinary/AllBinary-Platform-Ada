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

package org.allbinary.logic.system.hardware.components.linux.Unknown_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;

   type Unknown is tagged;
   type Unknown_Access is access all Unknown'Class;
   type Unknown_Access_Array is array (Natural range <>) of Unknown_Access;
   type Unknown_Access_Array_Access is access all Unknown_Access_Array;
   type Unknown_Access_Array_Access_Array is array (Natural range <>) of Unknown_Access_Array_Access;
   type Unknown_Access_Array_Access_Array_Access is access all Unknown_Access_Array_Access_Array;

   type Unknown is new Java_Object and HardwareComponentInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Unknown'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Unknown_Access;
   function compareTo (This : in out Unknown; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Unknown; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Unknown) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Unknown_Package;


