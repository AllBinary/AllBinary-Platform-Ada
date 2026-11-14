-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
package org.allbinary.platform.graphics.PlatformBitmapBase_Package_References is
   type PlatformBitmapBase_Access is access all org.allbinary.platform.graphics.PlatformBitmapBase_Package.PlatformBitmapBase'Class;
   type PlatformBitmapBase_Access_Array is array (Natural range <>) of PlatformBitmapBase_Access;
   type PlatformBitmapBase_Access_Array_Access is access all PlatformBitmapBase_Access_Array;
   type PlatformBitmapBase_Access_Array_Access_Array is array (Natural range <>) of PlatformBitmapBase_Access_Array_Access;
   type PlatformBitmapBase_Access_Array_Access_Array_Access is access all PlatformBitmapBase_Access_Array_Access_Array;
   type PlatformBitmapBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformBitmapBase_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformBitmapBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformBitmapBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformBitmapBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformBitmapBase_Access_Array_Access is (if Value /= null and then Value.all in PlatformBitmapBase_Access_Array_Object'Class then PlatformBitmapBase_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformBitmapBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformBitmapBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformBitmapBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformBitmapBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformBitmapBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformBitmapBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformBitmapBase_Access_Array_Access_Array_Object'Class then PlatformBitmapBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;

with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.platform.graphics.PlatformBitmapBase_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
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


   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   function Java_Box (Value : PlatformBitmapBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.Java_Box;
   function Java_Unbox_PlatformBitmapBase_Access_Array (Value : access Java_Object'Class) return PlatformBitmapBase_Access_Array_Access renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.Java_Unbox_PlatformBitmapBase_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   function Java_Box (Value : PlatformBitmapBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.Java_Box;
   function Java_Unbox_PlatformBitmapBase_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformBitmapBase_Access_Array_Access_Array_Access renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.Java_Unbox_PlatformBitmapBase_Access_Array_Access_Array;

   type PlatformBitmapBase is new Java_Object with record
      alpha : Integer;
      basicColor : BasicColor_Access;
   end record;
   NULL_PLATFORM_BITMAP_BASE : PlatformBitmapBase_Access;

   procedure Initialize (This : in out PlatformBitmapBase'Class);
   function Create return PlatformBitmapBase_Access;
   function getWidth (This : in out PlatformBitmapBase) return Integer;
   function getHeight (This : in out PlatformBitmapBase) return Integer;
   function getImage (This : in out PlatformBitmapBase) return Image_Access;

end org.allbinary.platform.graphics.PlatformBitmapBase_Package;


