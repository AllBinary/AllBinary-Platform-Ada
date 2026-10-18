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

package org.allbinary.logic.java.characters.CharacterSetData_Package is


   type CharacterSetData is tagged;
   type CharacterSetData_Access is access all CharacterSetData'Class;
   type CharacterSetData_Access_Array is array (Natural range <>) of CharacterSetData_Access;
   type CharacterSetData_Access_Array_Access is access all CharacterSetData_Access_Array;
   type CharacterSetData_Access_Array_Access_Array is array (Natural range <>) of CharacterSetData_Access_Array_Access;
   type CharacterSetData_Access_Array_Access_Array_Access is access all CharacterSetData_Access_Array_Access_Array;

   type CharacterSetData is new Java_Object with record
      US_ASCII : Unbounded_String;
      ISO_8859_1 : Unbounded_String;
      UTF_8 : Unbounded_String;
      UTF_16 : Unbounded_String;
      UTF_16BE : Unbounded_String;
      UTF_16LE : Unbounded_String;
   end record;
   instance : CharacterSetData_Access;

   procedure Initialize (This : in out CharacterSetData'Class);
   function Create return CharacterSetData_Access;
   function getInstance return CharacterSetData_Access;

end org.allbinary.logic.java.characters.CharacterSetData_Package;


