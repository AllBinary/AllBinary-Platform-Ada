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
limited with org.allbinary.graphics.color.BasicColorUtil_Package;
package org.allbinary.graphics.color.BasicColorUtil_Package_References is
   type BasicColorUtil_Access is access all org.allbinary.graphics.color.BasicColorUtil_Package.BasicColorUtil'Class;
   type BasicColorUtil_Access_Array is array (Natural range <>) of BasicColorUtil_Access;
   type BasicColorUtil_Access_Array_Access is access all BasicColorUtil_Access_Array;
   type BasicColorUtil_Access_Array_Access_Array is array (Natural range <>) of BasicColorUtil_Access_Array_Access;
   type BasicColorUtil_Access_Array_Access_Array_Access is access all BasicColorUtil_Access_Array_Access_Array;
   type BasicColorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorUtil_Access_Array_Access is (if Value /= null and then Value.all in BasicColorUtil_Access_Array_Object'Class then BasicColorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BasicColorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicColorUtil_Access_Array_Access_Array_Object'Class then BasicColorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.BasicColorUtil_Package_References;

with org.allbinary.graphics.color.BasicColorUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.BasicColorUtil_Package is

   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicColorUtil_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access;
   function "=" (Left, Right : BasicColorUtil_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array;
   function "=" (Left, Right : BasicColorUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   function Java_Box (Value : BasicColorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorUtil_Package_References.Java_Box;
   function Java_Unbox_BasicColorUtil_Access_Array (Value : access Java_Object'Class) return BasicColorUtil_Access_Array_Access renames org.allbinary.graphics.color.BasicColorUtil_Package_References.Java_Unbox_BasicColorUtil_Access_Array;
   subtype BasicColorUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   function Java_Box (Value : BasicColorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorUtil_Package_References.Java_Box;
   function Java_Unbox_BasicColorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicColorUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.BasicColorUtil_Package_References.Java_Unbox_BasicColorUtil_Access_Array_Access_Array;

   type BasicColorUtil is new Java_Object with record
      ZERO_ARRAY : BasicColor_Access_Array_Access;
      ALPHA : Integer;
      isAlpha : Boolean;
      ffOpaque : Boolean;
   end record;
   instance : BasicColorUtil_Access;

   procedure Initialize (This : in out BasicColorUtil'Class);
   function Create return BasicColorUtil_Access;
   function getInstance return BasicColorUtil_Access;
   function getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer) return Integer;
   procedure getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer);
   function getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer) return Integer;
   procedure getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer);
   function get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer) return Integer;
   procedure get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer);
   function invert (This : in out BasicColorUtil; color : Integer) return Integer;
   procedure invert (This : in out BasicColorUtil; color : Integer);

end org.allbinary.graphics.color.BasicColorUtil_Package;


