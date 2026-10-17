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
with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;

package org.allbinary.init.NoLicense_Package is

   package Globals_Package renames org.allbinary.globals.Globals_Package;

   type NoLicense is tagged;
   type NoLicense_Access is access all NoLicense'Class;
   type NoLicense_Access_Array is array (Natural range <>) of NoLicense_Access;
   type NoLicense_Access_Array_Access is access all NoLicense_Access_Array;

   type NoLicense is new Java_Object with null record;

   procedure Initialize (This : in out NoLicense'Class);
   function Create return NoLicense_Access;
   procedure init (classLoader : ClassLoader_Access; pathString : Unbounded_String);

end org.allbinary.init.NoLicense_Package;


