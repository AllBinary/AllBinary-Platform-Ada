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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.math.MathData_Package; use org.allbinary.logic.math.MathData_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.string_Id.SpecialCharacterUtil_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package MathData_Package renames Standard.org.allbinary.logic.math.MathData_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type SpecialCharacterUtil is tagged;
   type SpecialCharacterUtil_Access is access all SpecialCharacterUtil'Class;
   type SpecialCharacterUtil_Access_Array is array (Natural range <>) of SpecialCharacterUtil_Access;
   type SpecialCharacterUtil_Access_Array_Access is access all SpecialCharacterUtil_Access_Array;

   type SpecialCharacterUtil is new Java_Object with null record;

   procedure Initialize (This : in out SpecialCharacterUtil'Class);
   function Create return SpecialCharacterUtil_Access;
   function getHashMap return HashMap_Access;
   procedure getHashMap;

end org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;


