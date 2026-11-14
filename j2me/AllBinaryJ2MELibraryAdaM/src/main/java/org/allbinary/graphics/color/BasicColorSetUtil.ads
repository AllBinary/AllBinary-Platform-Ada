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
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
package org.allbinary.graphics.color.BasicColorSetUtil_Package_References is
   type BasicColorSetUtil_Access is access all org.allbinary.graphics.color.BasicColorSetUtil_Package.BasicColorSetUtil'Class;
   type BasicColorSetUtil_Access_Array is array (Natural range <>) of BasicColorSetUtil_Access;
   type BasicColorSetUtil_Access_Array_Access is access all BasicColorSetUtil_Access_Array;
   type BasicColorSetUtil_Access_Array_Access_Array is array (Natural range <>) of BasicColorSetUtil_Access_Array_Access;
   type BasicColorSetUtil_Access_Array_Access_Array_Access is access all BasicColorSetUtil_Access_Array_Access_Array;
   type BasicColorSetUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorSetUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorSetUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorSetUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorSetUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorSetUtil_Access_Array_Access is (if Value /= null and then Value.all in BasicColorSetUtil_Access_Array_Object'Class then BasicColorSetUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BasicColorSetUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorSetUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorSetUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorSetUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorSetUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorSetUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicColorSetUtil_Access_Array_Access_Array_Object'Class then BasicColorSetUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.BasicColorSetUtil_Package_References;

with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.BasicColorSetUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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


   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   function Java_Box (Value : BasicColorSetUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References.Java_Box;
   function Java_Unbox_BasicColorSetUtil_Access_Array (Value : access Java_Object'Class) return BasicColorSetUtil_Access_Array_Access renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References.Java_Unbox_BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorSetUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References."=";
   function Java_Box (Value : BasicColorSetUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References.Java_Box;
   function Java_Unbox_BasicColorSetUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicColorSetUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.BasicColorSetUtil_Package_References.Java_Unbox_BasicColorSetUtil_Access_Array_Access_Array;

   type BasicColorSetUtil is new Java_Object with null record;
   instance : BasicColorSetUtil_Access;

   procedure Initialize (This : in out BasicColorSetUtil'Class);
   function Create return BasicColorSetUtil_Access;
   function getInstance return BasicColorSetUtil_Access;
   procedure setBasicColorP (This : in out BasicColorSetUtil; graphics_Param : access Graphics_Package.Graphics'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setBasicColorP3 (This : in out BasicColorSetUtil; graphics_Param : access Graphics_Package.Graphics'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; value : Integer);

end org.allbinary.graphics.color.BasicColorSetUtil_Package;


