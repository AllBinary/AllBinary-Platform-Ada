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

package org.allbinary.logic.java.PrimitiveArrayToString_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type PrimitiveArrayToString is tagged;
   type PrimitiveArrayToString_Access is access all PrimitiveArrayToString'Class;
   type PrimitiveArrayToString_Access_Array is array (Natural range <>) of PrimitiveArrayToString_Access;
   type PrimitiveArrayToString_Access_Array_Access is access all PrimitiveArrayToString_Access_Array;

   type PrimitiveArrayToString is new Java_Object with null record;

   procedure Initialize (This : in out PrimitiveArrayToString'Class);
   function Create return PrimitiveArrayToString_Access;
   function toString (floats : Float_Array_Access) return Unbounded_String;
   procedure toString (floats : Float_Array_Access);

end org.allbinary.logic.java.PrimitiveArrayToString_Package;


