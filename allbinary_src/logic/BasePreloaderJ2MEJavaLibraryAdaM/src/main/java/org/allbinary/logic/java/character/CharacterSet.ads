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

package org.allbinary.logic.java.character_Id.CharacterSet_Package is


   type CharacterSet is tagged;
   type CharacterSet_Access is access all CharacterSet'Class;
   type CharacterSet_Access_Array is array (Natural range <>) of CharacterSet_Access;
   type CharacterSet_Access_Array_Access is access all CharacterSet_Access_Array;
   type CharacterSet_Access_Array_Access_Array is array (Natural range <>) of CharacterSet_Access_Array_Access;
   type CharacterSet_Access_Array_Access_Array_Access is access all CharacterSet_Access_Array_Access_Array;

   type CharacterSet is new Java_Object with null record;

   procedure Initialize (This : in out CharacterSet'Class);
   function Create return CharacterSet_Access;
   function toString (This : in out CharacterSet) return Unbounded_String;

end org.allbinary.logic.java.character_Id.CharacterSet_Package;


