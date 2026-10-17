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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package org.allbinary.logic.math.PrimitiveLongSingleton_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type PrimitiveLongSingleton is tagged;
   type PrimitiveLongSingleton_Access is access all PrimitiveLongSingleton'Class;
   type PrimitiveLongSingleton_Access_Array is array (Natural range <>) of PrimitiveLongSingleton_Access;
   type PrimitiveLongSingleton_Access_Array_Access is access all PrimitiveLongSingleton_Access_Array;

   type PrimitiveLongSingleton is new Java_Object with record
      UNK : Character_Array_Access;
      NUMBER_ARRAY : Short_Short_Integer_Array_Access;
      NUMBER_CHAR_ARRAY : Character_Array_Access;
      NUMBER_CHAR_ARRAYS : Character_Array_Access_Array_Access;
      ZERO : Character_Array_Access;
   end record;
   instance : PrimitiveLongSingleton_Access;

   procedure Initialize (This : in out PrimitiveLongSingleton'Class);
   function Create return PrimitiveLongSingleton_Access;
   function getInstance return PrimitiveLongSingleton_Access;
   procedure getInstance;
   function getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character) return Short_Short_Integer;
   procedure getNumberFromChar (This : in out PrimitiveLongSingleton; numberAsChar : Character);

end org.allbinary.logic.math.PrimitiveLongSingleton_Package;


