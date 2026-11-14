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
limited with org.allbinary.graphics.Rectangle_Package;
package org.allbinary.graphics.Rectangle_Package_References is
   type Rectangle_Access is access all org.allbinary.graphics.Rectangle_Package.Rectangle'Class;
   type Rectangle_Access_Array is array (Natural range <>) of Rectangle_Access;
   type Rectangle_Access_Array_Access is access all Rectangle_Access_Array;
   type Rectangle_Access_Array_Access_Array is array (Natural range <>) of Rectangle_Access_Array_Access;
   type Rectangle_Access_Array_Access_Array_Access is access all Rectangle_Access_Array_Access_Array;
   type Rectangle_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Rectangle_Access_Array_Access;
   end record;
   function Java_Box (Value : Rectangle_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Rectangle_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Rectangle_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Rectangle_Access_Array_Access is (if Value /= null and then Value.all in Rectangle_Access_Array_Object'Class then Rectangle_Access_Array_Object'Class (Value.all).Value else null);
   type Rectangle_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Rectangle_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Rectangle_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Rectangle_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Rectangle_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Rectangle_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Rectangle_Access_Array_Access_Array_Object'Class then Rectangle_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.Rectangle_Package_References;

with org.allbinary.graphics.Rectangle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;

package org.allbinary.graphics.Rectangle_Package is

   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   function Java_Box (Value : Rectangle_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Rectangle_Package_References.Java_Box;
   function Java_Unbox_Rectangle_Access_Array (Value : access Java_Object'Class) return Rectangle_Access_Array_Access renames org.allbinary.graphics.Rectangle_Package_References.Java_Unbox_Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   function Java_Box (Value : Rectangle_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.Rectangle_Package_References.Java_Box;
   function Java_Unbox_Rectangle_Access_Array_Access_Array (Value : access Java_Object'Class) return Rectangle_Access_Array_Access_Array_Access renames org.allbinary.graphics.Rectangle_Package_References.Java_Unbox_Rectangle_Access_Array_Access_Array;

   type Rectangle is new Java_Object with record
      point : GPoint_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out Rectangle'Class; point_Param : access GPoint_Package.GPoint'Class; width : Integer; height : Integer);
   function Create (point_Param : access GPoint_Package.GPoint'Class; width : Integer; height : Integer) return Rectangle_Access;
   function getPoint (This : in out Rectangle) return GPoint_Access;
   procedure setPoint (This : in out Rectangle; point_Param : access GPoint_Package.GPoint'Class);
   function getMaxX (This : in out Rectangle) return Integer;
   function getMaxY (This : in out Rectangle) return Integer;
   function getWidth (This : in out Rectangle) return Integer;
   procedure setWidth (This : in out Rectangle; width : Integer);
   function getHeight (This : in out Rectangle) return Integer;
   procedure setHeight (This : in out Rectangle; height : Integer);
   function toString (This : in out Rectangle) return Unbounded_String;

end org.allbinary.graphics.Rectangle_Package;


