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
limited with org.allbinary.vector.PointsUtil_Package;
package org.allbinary.vector.PointsUtil_Package_References is
   type PointsUtil_Access is access all org.allbinary.vector.PointsUtil_Package.PointsUtil'Class;
   type PointsUtil_Access_Array is array (Natural range <>) of PointsUtil_Access;
   type PointsUtil_Access_Array_Access is access all PointsUtil_Access_Array;
   type PointsUtil_Access_Array_Access_Array is array (Natural range <>) of PointsUtil_Access_Array_Access;
   type PointsUtil_Access_Array_Access_Array_Access is access all PointsUtil_Access_Array_Access_Array;
   type PointsUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsUtil_Access_Array_Access is (if Value /= null and then Value.all in PointsUtil_Access_Array_Object'Class then PointsUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PointsUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointsUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PointsUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointsUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointsUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointsUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PointsUtil_Access_Array_Access_Array_Object'Class then PointsUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.vector.PointsUtil_Package_References;

with org.allbinary.vector.PointsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.vector.PointsUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PointsUtil_Access is org.allbinary.vector.PointsUtil_Package_References.PointsUtil_Access;
   function "=" (Left, Right : PointsUtil_Access) return Boolean renames org.allbinary.vector.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array is org.allbinary.vector.PointsUtil_Package_References.PointsUtil_Access_Array;
   function "=" (Left, Right : PointsUtil_Access_Array) return Boolean renames org.allbinary.vector.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array_Access is org.allbinary.vector.PointsUtil_Package_References.PointsUtil_Access_Array_Access;
   function "=" (Left, Right : PointsUtil_Access_Array_Access) return Boolean renames org.allbinary.vector.PointsUtil_Package_References."=";
   function Java_Box (Value : PointsUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.vector.PointsUtil_Package_References.Java_Box;
   function Java_Unbox_PointsUtil_Access_Array (Value : access Java_Object'Class) return PointsUtil_Access_Array_Access renames org.allbinary.vector.PointsUtil_Package_References.Java_Unbox_PointsUtil_Access_Array;
   subtype PointsUtil_Access_Array_Access_Array is org.allbinary.vector.PointsUtil_Package_References.PointsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PointsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.PointsUtil_Package_References."=";
   subtype PointsUtil_Access_Array_Access_Array_Access is org.allbinary.vector.PointsUtil_Package_References.PointsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.PointsUtil_Package_References."=";
   function Java_Box (Value : PointsUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.vector.PointsUtil_Package_References.Java_Box;
   function Java_Unbox_PointsUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PointsUtil_Access_Array_Access_Array_Access renames org.allbinary.vector.PointsUtil_Package_References.Java_Unbox_PointsUtil_Access_Array_Access_Array;

   type PointsUtil is new Java_Object with null record;
   instance : PointsUtil_Access;

   procedure Initialize (This : in out PointsUtil'Class);
   function Create return PointsUtil_Access;
   function getInstance return PointsUtil_Access;
   function adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access_Array_Access;
   procedure adjustXY (This : in out PointsUtil; points : Integer_Array_Access_Array_Access_Array_Access; x : Integer; y : Integer);
   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer) return Integer_Array_Access_Array_Access;
   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; both : Integer);
   function adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer) return Integer_Array_Access_Array_Access;
   procedure adjust (This : in out PointsUtil; points : Integer_Array_Access_Array_Access; x : Integer; y : Integer);

end org.allbinary.vector.PointsUtil_Package;


