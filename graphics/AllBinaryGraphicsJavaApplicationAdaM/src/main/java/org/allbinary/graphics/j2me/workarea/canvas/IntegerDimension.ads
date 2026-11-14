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
limited with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
package org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References is
   type IntegerDimension_Access is access all org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package.IntegerDimension'Class;
   type IntegerDimension_Access_Array is array (Natural range <>) of IntegerDimension_Access;
   type IntegerDimension_Access_Array_Access is access all IntegerDimension_Access_Array;
   type IntegerDimension_Access_Array_Access_Array is array (Natural range <>) of IntegerDimension_Access_Array_Access;
   type IntegerDimension_Access_Array_Access_Array_Access is access all IntegerDimension_Access_Array_Access_Array;
   type IntegerDimension_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IntegerDimension_Access_Array_Access;
   end record;
   function Java_Box (Value : IntegerDimension_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IntegerDimension_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IntegerDimension_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IntegerDimension_Access_Array_Access is (if Value /= null and then Value.all in IntegerDimension_Access_Array_Object'Class then IntegerDimension_Access_Array_Object'Class (Value.all).Value else null);
   type IntegerDimension_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IntegerDimension_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IntegerDimension_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IntegerDimension_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IntegerDimension_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IntegerDimension_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IntegerDimension_Access_Array_Access_Array_Object'Class then IntegerDimension_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype IntegerDimension_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access;
   function "=" (Left, Right : IntegerDimension_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References."=";
   subtype IntegerDimension_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array;
   function "=" (Left, Right : IntegerDimension_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References."=";
   subtype IntegerDimension_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access;
   function "=" (Left, Right : IntegerDimension_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References."=";
   function Java_Box (Value : IntegerDimension_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.Java_Box;
   function Java_Unbox_IntegerDimension_Access_Array (Value : access Java_Object'Class) return IntegerDimension_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.Java_Unbox_IntegerDimension_Access_Array;
   subtype IntegerDimension_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access_Array;
   function "=" (Left, Right : IntegerDimension_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References."=";
   subtype IntegerDimension_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntegerDimension_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References."=";
   function Java_Box (Value : IntegerDimension_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.Java_Box;
   function Java_Unbox_IntegerDimension_Access_Array_Access_Array (Value : access Java_Object'Class) return IntegerDimension_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.Java_Unbox_IntegerDimension_Access_Array_Access_Array;

   type IntegerDimension is new Java_Object with record
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out IntegerDimension'Class; width : Integer; height : Integer);
   function Create (width : Integer; height : Integer) return IntegerDimension_Access;
   function getWidth (This : in out IntegerDimension) return Integer;
   procedure setWidth (This : in out IntegerDimension; width : Integer);
   function getHeight (This : in out IntegerDimension) return Integer;
   procedure setHeight (This : in out IntegerDimension; height : Integer);

end org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;


