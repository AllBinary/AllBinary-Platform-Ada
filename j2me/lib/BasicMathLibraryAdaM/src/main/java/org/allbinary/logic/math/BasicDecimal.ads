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
limited with org.allbinary.logic.math.BasicDecimal_Package;
package org.allbinary.logic.math.BasicDecimal_Package_References is
   type BasicDecimal_Access is access all org.allbinary.logic.math.BasicDecimal_Package.BasicDecimal'Class;
   type BasicDecimal_Access_Array is array (Natural range <>) of BasicDecimal_Access;
   type BasicDecimal_Access_Array_Access is access all BasicDecimal_Access_Array;
   type BasicDecimal_Access_Array_Access_Array is array (Natural range <>) of BasicDecimal_Access_Array_Access;
   type BasicDecimal_Access_Array_Access_Array_Access is access all BasicDecimal_Access_Array_Access_Array;
   type BasicDecimal_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDecimal_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDecimal_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDecimal_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDecimal_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDecimal_Access_Array_Access is (if Value /= null and then Value.all in BasicDecimal_Access_Array_Object'Class then BasicDecimal_Access_Array_Object'Class (Value.all).Value else null);
   type BasicDecimal_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicDecimal_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicDecimal_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicDecimal_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicDecimal_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicDecimal_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicDecimal_Access_Array_Access_Array_Object'Class then BasicDecimal_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.BasicDecimal_Package_References;

with org.allbinary.logic.math.BasicDecimal_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.math.BasicDecimal_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   function Java_Box (Value : BasicDecimal_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.BasicDecimal_Package_References.Java_Box;
   function Java_Unbox_BasicDecimal_Access_Array (Value : access Java_Object'Class) return BasicDecimal_Access_Array_Access renames org.allbinary.logic.math.BasicDecimal_Package_References.Java_Unbox_BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   function Java_Box (Value : BasicDecimal_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.BasicDecimal_Package_References.Java_Box;
   function Java_Unbox_BasicDecimal_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicDecimal_Access_Array_Access_Array_Access renames org.allbinary.logic.math.BasicDecimal_Package_References.Java_Unbox_BasicDecimal_Access_Array_Access_Array;

   type BasicDecimal is new Java_Object with record
      units : Long_Long_Integer;
      scaled : Integer;
      factor : Integer;
      factorValue : Integer;
   end record;
   ZERO_BIGDECIMAL : BasicDecimal_Access;

   procedure Initialize (This : in out BasicDecimal'Class; units : Long_Long_Integer);
   function Create (units : Long_Long_Integer) return BasicDecimal_Access;
   function createBigDecimal (bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return BasicDecimal_Access;
   procedure createBigDecimal (bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure setint (This : in out BasicDecimal; value : Integer);
   procedure setlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure set (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure addint (This : in out BasicDecimal; value : Integer);
   procedure addlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure add (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure subtractint (This : in out BasicDecimal; value : Integer);
   procedure subtractlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure subtract (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure multiplyint (This : in out BasicDecimal; value : Integer);
   procedure multiplylong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure multiply (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   procedure divideint (This : in out BasicDecimal; value : Integer);
   procedure dividelong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure divide (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   function getUnscaled (This : in out BasicDecimal) return Long_Long_Integer;
   procedure updateScaled (This : in out BasicDecimal);
   function getScaled (This : in out BasicDecimal) return Integer;
   function toString (This : in out BasicDecimal) return Unbounded_String;
   function getScaledFactor (This : in out BasicDecimal) return Integer;
   function getScaledFactorValue (This : in out BasicDecimal) return Integer;

end org.allbinary.logic.math.BasicDecimal_Package;


