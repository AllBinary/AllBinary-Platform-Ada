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

with AllBinary_Java;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
package org.allbinary.logic.math.PrimitiveLongUtil_Package_References is
   type PrimitiveLongUtil_Access is access all org.allbinary.logic.math.PrimitiveLongUtil_Package.PrimitiveLongUtil'Class;
   type PrimitiveLongUtil_Access_Array is array (Natural range <>) of PrimitiveLongUtil_Access;
   type PrimitiveLongUtil_Access_Array_Access is access all PrimitiveLongUtil_Access_Array;
   type PrimitiveLongUtil_Access_Array_Access_Array is array (Natural range <>) of PrimitiveLongUtil_Access_Array_Access;
   type PrimitiveLongUtil_Access_Array_Access_Array_Access is access all PrimitiveLongUtil_Access_Array_Access_Array;
   type PrimitiveLongUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveLongUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveLongUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveLongUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveLongUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveLongUtil_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveLongUtil_Access_Array_Object'Class then PrimitiveLongUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PrimitiveLongUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PrimitiveLongUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PrimitiveLongUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PrimitiveLongUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PrimitiveLongUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PrimitiveLongUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PrimitiveLongUtil_Access_Array_Access_Array_Object'Class then PrimitiveLongUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package_References;

package org.allbinary.logic.math.PrimitiveLongUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PrimitiveLongSingleton_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access;
   use type PrimitiveLongSingleton_Access;
   subtype PrimitiveLongSingleton_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array;
   use type PrimitiveLongSingleton_Access_Array;
   subtype PrimitiveLongSingleton_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access;
   use type PrimitiveLongSingleton_Access_Array_Access;
   subtype PrimitiveLongSingleton_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array;
   use type PrimitiveLongSingleton_Access_Array_Access_Array;
   subtype PrimitiveLongSingleton_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongSingleton_Package_References.PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   use type PrimitiveLongSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   function Java_Box (Value : PrimitiveLongUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References.Java_Box;
   function Java_Unbox_PrimitiveLongUtil_Access_Array (Value : access Java_Object'Class) return PrimitiveLongUtil_Access_Array_Access renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References.Java_Unbox_PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PrimitiveLongUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References."=";
   function Java_Box (Value : PrimitiveLongUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References.Java_Box;
   function Java_Unbox_PrimitiveLongUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PrimitiveLongUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.math.PrimitiveLongUtil_Package_References.Java_Unbox_PrimitiveLongUtil_Access_Array_Access_Array;

   type PrimitiveLongUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      powerOfTen : Integer;
      maxValue : Integer;
      maxDigits : Integer;
      charArray : Character_Array_Access;
      currentTotalDigits : Integer;
      primitiveLongSingleton : PrimitiveLongSingleton_Access;
   end record;

   procedure Initialize (This : in out PrimitiveLongUtil'Class; powerOfTen : Integer; unused_Param : access Java_Object'Class);
   function Create (powerOfTen : Integer; unused_Param : access Java_Object'Class) return PrimitiveLongUtil_Access;
   function createPowerOfTen (powerOfTen : Integer) return PrimitiveLongUtil_Access;
   procedure createPowerOfTen (powerOfTen : Integer);
   function getCharArray (This : in out PrimitiveLongUtil; value : Integer) return Character_Array_Access;
   procedure getCharArray (This : in out PrimitiveLongUtil; value : Integer);
   procedure setCurrentTotalDigits (This : in out PrimitiveLongUtil; currentTotalDigits : Integer);
   function getCurrentTotalDigits (This : in out PrimitiveLongUtil) return Integer;
   function getMaxDigits (This : in out PrimitiveLongUtil) return Integer;

end org.allbinary.logic.math.PrimitiveLongUtil_Package;


