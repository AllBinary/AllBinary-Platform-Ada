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
limited with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
package org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References is
   type AxisMathVectorUtil_Access is access all org.allbinary.logic.math.vector.AxisMathVectorUtil_Package.AxisMathVectorUtil'Class;
   type AxisMathVectorUtil_Access_Array is array (Natural range <>) of AxisMathVectorUtil_Access;
   type AxisMathVectorUtil_Access_Array_Access is access all AxisMathVectorUtil_Access_Array;
   type AxisMathVectorUtil_Access_Array_Access_Array is array (Natural range <>) of AxisMathVectorUtil_Access_Array_Access;
   type AxisMathVectorUtil_Access_Array_Access_Array_Access is access all AxisMathVectorUtil_Access_Array_Access_Array;
   type AxisMathVectorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AxisMathVectorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AxisMathVectorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AxisMathVectorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AxisMathVectorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AxisMathVectorUtil_Access_Array_Access is (if Value /= null and then Value.all in AxisMathVectorUtil_Access_Array_Object'Class then AxisMathVectorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AxisMathVectorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AxisMathVectorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AxisMathVectorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AxisMathVectorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AxisMathVectorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AxisMathVectorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AxisMathVectorUtil_Access_Array_Access_Array_Object'Class then AxisMathVectorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;

with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.math.NoDecimalTrigTable_Package_References;

package org.allbinary.logic.math.vector.AxisMathVectorUtil_Package is

   package NoDecimalTrigTable_Package renames Standard.org.allbinary.math.NoDecimalTrigTable_Package;
   package Reference_Types is
   subtype NoDecimalTrigTable_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access;
   use type NoDecimalTrigTable_Access;
   subtype NoDecimalTrigTable_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array;
   use type NoDecimalTrigTable_Access_Array;
   subtype NoDecimalTrigTable_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access;
   use type NoDecimalTrigTable_Access_Array_Access;
   subtype NoDecimalTrigTable_Access_Array_Access_Array is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array;
   use type NoDecimalTrigTable_Access_Array_Access_Array;
   subtype NoDecimalTrigTable_Access_Array_Access_Array_Access is org.allbinary.math.NoDecimalTrigTable_Package_References.NoDecimalTrigTable_Access_Array_Access_Array_Access;
   use type NoDecimalTrigTable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AxisMathVectorUtil_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   function Java_Box (Value : AxisMathVectorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.Java_Box;
   function Java_Unbox_AxisMathVectorUtil_Access_Array (Value : access Java_Object'Class) return AxisMathVectorUtil_Access_Array_Access renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.Java_Unbox_AxisMathVectorUtil_Access_Array;
   subtype AxisMathVectorUtil_Access_Array_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   subtype AxisMathVectorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AxisMathVectorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References."=";
   function Java_Box (Value : AxisMathVectorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.Java_Box;
   function Java_Unbox_AxisMathVectorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AxisMathVectorUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.Java_Unbox_AxisMathVectorUtil_Access_Array_Access_Array;

   type AxisMathVectorUtil is new Java_Object with record
      noDecimalTrigTable : NoDecimalTrigTable_Access;
   end record;
   instance : AxisMathVectorUtil_Access;

   procedure Initialize (This : in out AxisMathVectorUtil'Class);
   function Create return AxisMathVectorUtil_Access;
   function getInstance return AxisMathVectorUtil_Access;
   function calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer;
   procedure calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer);
   function calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer;
   procedure calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer);
   function calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer) return Long_Long_Integer;
   procedure calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer);

end org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;


