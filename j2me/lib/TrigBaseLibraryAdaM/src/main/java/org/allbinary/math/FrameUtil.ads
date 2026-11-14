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
limited with org.allbinary.math.FrameUtil_Package;
package org.allbinary.math.FrameUtil_Package_References is
   type FrameUtil_Access is access all org.allbinary.math.FrameUtil_Package.FrameUtil'Class;
   type FrameUtil_Access_Array is array (Natural range <>) of FrameUtil_Access;
   type FrameUtil_Access_Array_Access is access all FrameUtil_Access_Array;
   type FrameUtil_Access_Array_Access_Array is array (Natural range <>) of FrameUtil_Access_Array_Access;
   type FrameUtil_Access_Array_Access_Array_Access is access all FrameUtil_Access_Array_Access_Array;
   type FrameUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FrameUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : FrameUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FrameUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FrameUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FrameUtil_Access_Array_Access is (if Value /= null and then Value.all in FrameUtil_Access_Array_Object'Class then FrameUtil_Access_Array_Object'Class (Value.all).Value else null);
   type FrameUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FrameUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FrameUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FrameUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FrameUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FrameUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FrameUtil_Access_Array_Access_Array_Object'Class then FrameUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.FrameUtil_Package_References;

with org.allbinary.math.FrameUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.math.FrameUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FrameUtil_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access;
   function "=" (Left, Right : FrameUtil_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array;
   function "=" (Left, Right : FrameUtil_Access_Array) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access;
   function "=" (Left, Right : FrameUtil_Access_Array_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   function Java_Box (Value : FrameUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.FrameUtil_Package_References.Java_Box;
   function Java_Unbox_FrameUtil_Access_Array (Value : access Java_Object'Class) return FrameUtil_Access_Array_Access renames org.allbinary.math.FrameUtil_Package_References.Java_Unbox_FrameUtil_Access_Array;
   subtype FrameUtil_Access_Array_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FrameUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   subtype FrameUtil_Access_Array_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FrameUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.FrameUtil_Package_References."=";
   function Java_Box (Value : FrameUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.FrameUtil_Package_References.Java_Box;
   function Java_Unbox_FrameUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return FrameUtil_Access_Array_Access_Array_Access renames org.allbinary.math.FrameUtil_Package_References.Java_Unbox_FrameUtil_Access_Array_Access_Array;

   type FrameUtil is new Java_Object with null record;
   instance : FrameUtil_Access;

   procedure Initialize (This : in out FrameUtil'Class);
   function Create return FrameUtil_Access;
   function getInstance return FrameUtil_Access;
   function getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer) return Integer;
   procedure getFrameForAngle (This : in out FrameUtil; angle : Short_Integer; angleIncrement : Integer);
   function getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer) return Integer;
   procedure getFrameAngle (This : in out FrameUtil; frame : Integer; angleIncrement : Integer);
   function adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer) return Integer;
   procedure adjustAngleToFrameAngle (This : in out FrameUtil; currentAngle_Param : Integer);

end org.allbinary.math.FrameUtil_Package;


