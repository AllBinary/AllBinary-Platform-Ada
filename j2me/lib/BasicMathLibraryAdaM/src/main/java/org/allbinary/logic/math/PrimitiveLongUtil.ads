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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.math.PrimitiveLongUtil_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PrimitiveLongUtil is tagged;
   type PrimitiveLongUtil_Access is access all PrimitiveLongUtil'Class;
   type PrimitiveLongUtil_Access_Array is array (Natural range <>) of PrimitiveLongUtil_Access;
   type PrimitiveLongUtil_Access_Array_Access is access all PrimitiveLongUtil_Access_Array;

   type PrimitiveLongUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      powerOfTen : Integer;
      maxValue : Integer;
      maxDigits : Integer;
      charArray : Character_Array_Access;
      currentTotalDigits : Integer;
      primitiveLongSingleton : PrimitiveLongSingleton_Access;
   end record;

   procedure Initialize (This : in out PrimitiveLongUtil'Class; powerOfTen : Integer; unused : Java_Object_Access);
   function Create (powerOfTen : Integer; unused : Java_Object_Access) return PrimitiveLongUtil_Access;
   function createPowerOfTen (powerOfTen : Integer) return PrimitiveLongUtil_Access;
   procedure createPowerOfTen (powerOfTen : Integer);
   function getCharArray (This : in out PrimitiveLongUtil; value : Integer) return Character_Array_Access;
   procedure getCharArray (This : in out PrimitiveLongUtil; value : Integer);
   procedure setCurrentTotalDigits (This : in out PrimitiveLongUtil; currentTotalDigits : Integer);
   function getCurrentTotalDigits (This : in out PrimitiveLongUtil) return Integer;
   procedure getCurrentTotalDigits (This : in out PrimitiveLongUtil);
   function getMaxDigits (This : in out PrimitiveLongUtil) return Integer;
   procedure getMaxDigits (This : in out PrimitiveLongUtil);

end org.allbinary.logic.math.PrimitiveLongUtil_Package;


