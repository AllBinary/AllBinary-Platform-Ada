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
limited with org.allbinary.input.automation.PointHelper_Package;
package org.allbinary.input.automation.PointHelper_Package_References is
   type PointHelper_Access is access all org.allbinary.input.automation.PointHelper_Package.PointHelper'Class;
   type PointHelper_Access_Array is array (Natural range <>) of PointHelper_Access;
   type PointHelper_Access_Array_Access is access all PointHelper_Access_Array;
   type PointHelper_Access_Array_Access_Array is array (Natural range <>) of PointHelper_Access_Array_Access;
   type PointHelper_Access_Array_Access_Array_Access is access all PointHelper_Access_Array_Access_Array;
   type PointHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : PointHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointHelper_Access_Array_Access is (if Value /= null and then Value.all in PointHelper_Access_Array_Object'Class then PointHelper_Access_Array_Object'Class (Value.all).Value else null);
   type PointHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PointHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PointHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PointHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PointHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PointHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PointHelper_Access_Array_Access_Array_Object'Class then PointHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.PointHelper_Package_References;

with org.allbinary.input.automation.PointHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.Point_Package;
with org.allbinary.input.automation.Point_Package_References;
limited with org.allbinary.input.automation.Rectangle_Package;
with org.allbinary.input.automation.Rectangle_Package_References;

package org.allbinary.input.automation.PointHelper_Package is

   package Reference_Types is
   subtype Point_Access is org.allbinary.input.automation.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PointHelper_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access;
   function "=" (Left, Right : PointHelper_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array;
   function "=" (Left, Right : PointHelper_Access_Array) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access;
   function "=" (Left, Right : PointHelper_Access_Array_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   function Java_Box (Value : PointHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.PointHelper_Package_References.Java_Box;
   function Java_Unbox_PointHelper_Access_Array (Value : access Java_Object'Class) return PointHelper_Access_Array_Access renames org.allbinary.input.automation.PointHelper_Package_References.Java_Unbox_PointHelper_Access_Array;
   subtype PointHelper_Access_Array_Access_Array is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PointHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   subtype PointHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.PointHelper_Package_References.PointHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.PointHelper_Package_References."=";
   function Java_Box (Value : PointHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.PointHelper_Package_References.Java_Box;
   function Java_Unbox_PointHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return PointHelper_Access_Array_Access_Array_Access renames org.allbinary.input.automation.PointHelper_Package_References.Java_Unbox_PointHelper_Access_Array_Access_Array;

   type PointHelper is new Java_Object with null record;
   two : constant Long_Float := 2.0;

   procedure Initialize (This : in out PointHelper'Class);
   function Create return PointHelper_Access;
   function getCenterPoint (rectangle_Param : access Rectangle_Package.Rectangle'Class) return Point_Access;
   procedure getCenterPoint (rectangle_Param : access Rectangle_Package.Rectangle'Class);

end org.allbinary.input.automation.PointHelper_Package;


