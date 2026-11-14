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
limited with org.allbinary.graphics.CustomGPoint_Package;
package org.allbinary.graphics.CustomGPoint_Package_References is
   type CustomGPoint_Access is access all org.allbinary.graphics.CustomGPoint_Package.CustomGPoint'Class;
   type CustomGPoint_Access_Array is array (Natural range <>) of CustomGPoint_Access;
   type CustomGPoint_Access_Array_Access is access all CustomGPoint_Access_Array;
   type CustomGPoint_Access_Array_Access_Array is array (Natural range <>) of CustomGPoint_Access_Array_Access;
   type CustomGPoint_Access_Array_Access_Array_Access is access all CustomGPoint_Access_Array_Access_Array;
   type CustomGPoint_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomGPoint_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomGPoint_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomGPoint_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomGPoint_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomGPoint_Access_Array_Access is (if Value /= null and then Value.all in CustomGPoint_Access_Array_Object'Class then CustomGPoint_Access_Array_Object'Class (Value.all).Value else null);
   type CustomGPoint_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomGPoint_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomGPoint_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomGPoint_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomGPoint_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomGPoint_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomGPoint_Access_Array_Access_Array_Object'Class then CustomGPoint_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.CustomGPoint_Package_References;

with org.allbinary.graphics.CustomGPoint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.graphics.CustomGPoint_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomGPoint_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access;
   function "=" (Left, Right : CustomGPoint_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   function Java_Box (Value : CustomGPoint_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.CustomGPoint_Package_References.Java_Box;
   function Java_Unbox_CustomGPoint_Access_Array (Value : access Java_Object'Class) return CustomGPoint_Access_Array_Access renames org.allbinary.graphics.CustomGPoint_Package_References.Java_Unbox_CustomGPoint_Access_Array;
   subtype CustomGPoint_Access_Array_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   function Java_Box (Value : CustomGPoint_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.CustomGPoint_Package_References.Java_Box;
   function Java_Unbox_CustomGPoint_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomGPoint_Access_Array_Access_Array_Access renames org.allbinary.graphics.CustomGPoint_Package_References.Java_Unbox_CustomGPoint_Access_Array_Access_Array;

   type CustomGPoint is new GPoint with record
      cx : Integer;
      cy : Integer;
      cz : Integer;
   end record;
   NULL_CUSTOM_POINT : CustomGPoint_Access;

   procedure Initialize (This : in out CustomGPoint'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return CustomGPoint_Access;
   function getInstance (point_Param : access GPoint_Package.GPoint'Class) return CustomGPoint_Access;
   procedure getInstance (point_Param : access GPoint_Package.GPoint'Class);
   function getInstance3 (x : Integer; y : Integer) return CustomGPoint_Access;
   procedure getInstance3 (x : Integer; y : Integer);
   procedure setX (This : in out CustomGPoint; x : Integer);
   function getX (This : in out CustomGPoint) return Integer;
   procedure setY (This : in out CustomGPoint; y : Integer);
   function getY (This : in out CustomGPoint) return Integer;
   procedure setZ (This : in out CustomGPoint; z : Integer);
   function getZ (This : in out CustomGPoint) return Integer;

end org.allbinary.graphics.CustomGPoint_Package;


