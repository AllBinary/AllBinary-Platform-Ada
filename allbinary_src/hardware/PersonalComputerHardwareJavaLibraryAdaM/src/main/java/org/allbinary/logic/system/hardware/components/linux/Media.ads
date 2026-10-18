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
with org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;

package org.allbinary.logic.system.hardware.components.linux.Media_Package is

   package HardwareComponentInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
   package MediaInterface_Package renames Standard.org.allbinary.logic.system.hardware.components.interfaces.MediaInterface_Package;

   type Media is tagged;
   type Media_Access is access all Media'Class;
   type Media_Access_Array is array (Natural range <>) of Media_Access;
   type Media_Access_Array_Access is access all Media_Access_Array;
   type Media_Access_Array_Access_Array is array (Natural range <>) of Media_Access_Array_Access;
   type Media_Access_Array_Access_Array_Access is access all Media_Access_Array_Access_Array;

   type Media is new Java_Object and HardwareComponentInterface and MediaInterface with record
      data : Unbounded_String;
   end record;

   procedure Initialize (This : in out Media'Class; data : Unbounded_String);
   function Create (data : Unbounded_String) return Media_Access;
   function compareTo (This : in out Media; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean;
   procedure compareTo (This : in out Media; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class);
   function toString (This : in out Media) return Unbounded_String;

end org.allbinary.logic.system.hardware.components.linux.Media_Package;


