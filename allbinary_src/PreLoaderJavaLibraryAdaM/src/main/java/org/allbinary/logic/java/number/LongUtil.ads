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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.logic.java.number.LongData_Package; use org.allbinary.logic.java.number.LongData_Package;

package org.allbinary.logic.java.number.LongUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;

   type LongUtil is tagged;
   type LongUtil_Access is access all LongUtil'Class;
   type LongUtil_Access_Array is array (Natural range <>) of LongUtil_Access;
   type LongUtil_Access_Array_Access is access all LongUtil_Access_Array;

   type LongUtil is new Java_Object with null record;

   procedure Initialize (This : in out LongUtil'Class);
   function Create return LongUtil_Access;
   function fillIn (end_Id : Unbounded_String) return Unbounded_String;
   procedure fillIn (end_Id : Unbounded_String);

end org.allbinary.logic.java.number.LongUtil_Package;


