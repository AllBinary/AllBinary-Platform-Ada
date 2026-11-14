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
limited with org.allbinary.math.DistanceUtil_Package;
package org.allbinary.math.DistanceUtil_Package_References is
   type DistanceUtil_Access is access all org.allbinary.math.DistanceUtil_Package.DistanceUtil'Class;
   type DistanceUtil_Access_Array is array (Natural range <>) of DistanceUtil_Access;
   type DistanceUtil_Access_Array_Access is access all DistanceUtil_Access_Array;
   type DistanceUtil_Access_Array_Access_Array is array (Natural range <>) of DistanceUtil_Access_Array_Access;
   type DistanceUtil_Access_Array_Access_Array_Access is access all DistanceUtil_Access_Array_Access_Array;
   type DistanceUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DistanceUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : DistanceUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DistanceUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DistanceUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DistanceUtil_Access_Array_Access is (if Value /= null and then Value.all in DistanceUtil_Access_Array_Object'Class then DistanceUtil_Access_Array_Object'Class (Value.all).Value else null);
   type DistanceUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DistanceUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DistanceUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DistanceUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DistanceUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DistanceUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DistanceUtil_Access_Array_Access_Array_Object'Class then DistanceUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.DistanceUtil_Package_References;

with org.allbinary.math.DistanceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;

package org.allbinary.math.DistanceUtil_Package is

   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package Reference_Types is
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DistanceUtil_Access is org.allbinary.math.DistanceUtil_Package_References.DistanceUtil_Access;
   function "=" (Left, Right : DistanceUtil_Access) return Boolean renames org.allbinary.math.DistanceUtil_Package_References."=";
   subtype DistanceUtil_Access_Array is org.allbinary.math.DistanceUtil_Package_References.DistanceUtil_Access_Array;
   function "=" (Left, Right : DistanceUtil_Access_Array) return Boolean renames org.allbinary.math.DistanceUtil_Package_References."=";
   subtype DistanceUtil_Access_Array_Access is org.allbinary.math.DistanceUtil_Package_References.DistanceUtil_Access_Array_Access;
   function "=" (Left, Right : DistanceUtil_Access_Array_Access) return Boolean renames org.allbinary.math.DistanceUtil_Package_References."=";
   function Java_Box (Value : DistanceUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.DistanceUtil_Package_References.Java_Box;
   function Java_Unbox_DistanceUtil_Access_Array (Value : access Java_Object'Class) return DistanceUtil_Access_Array_Access renames org.allbinary.math.DistanceUtil_Package_References.Java_Unbox_DistanceUtil_Access_Array;
   subtype DistanceUtil_Access_Array_Access_Array is org.allbinary.math.DistanceUtil_Package_References.DistanceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DistanceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.DistanceUtil_Package_References."=";
   subtype DistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.DistanceUtil_Package_References.DistanceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DistanceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.DistanceUtil_Package_References."=";
   function Java_Box (Value : DistanceUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.DistanceUtil_Package_References.Java_Box;
   function Java_Unbox_DistanceUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return DistanceUtil_Access_Array_Access_Array_Access renames org.allbinary.math.DistanceUtil_Package_References.Java_Unbox_DistanceUtil_Access_Array_Access_Array;

   type DistanceUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : DistanceUtil_Access;

   procedure Initialize (This : in out DistanceUtil'Class);
   function Create return DistanceUtil_Access;
   function getInstance return DistanceUtil_Access;
   function getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer) return Integer;
   procedure getDistance (This : in out DistanceUtil; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer);

end org.allbinary.math.DistanceUtil_Package;


