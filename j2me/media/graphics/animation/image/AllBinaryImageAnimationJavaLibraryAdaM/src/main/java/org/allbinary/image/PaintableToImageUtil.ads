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
limited with org.allbinary.image.PaintableToImageUtil_Package;
package org.allbinary.image.PaintableToImageUtil_Package_References is
   type PaintableToImageUtil_Access is access all org.allbinary.image.PaintableToImageUtil_Package.PaintableToImageUtil'Class;
   type PaintableToImageUtil_Access_Array is array (Natural range <>) of PaintableToImageUtil_Access;
   type PaintableToImageUtil_Access_Array_Access is access all PaintableToImageUtil_Access_Array;
   type PaintableToImageUtil_Access_Array_Access_Array is array (Natural range <>) of PaintableToImageUtil_Access_Array_Access;
   type PaintableToImageUtil_Access_Array_Access_Array_Access is access all PaintableToImageUtil_Access_Array_Access_Array;
   type PaintableToImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaintableToImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : PaintableToImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaintableToImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaintableToImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaintableToImageUtil_Access_Array_Access is (if Value /= null and then Value.all in PaintableToImageUtil_Access_Array_Object'Class then PaintableToImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type PaintableToImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaintableToImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaintableToImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaintableToImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaintableToImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaintableToImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaintableToImageUtil_Access_Array_Access_Array_Object'Class then PaintableToImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.PaintableToImageUtil_Package_References;

with org.allbinary.image.PaintableToImageUtil_Package_References;
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
limited with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;

package org.allbinary.image.PaintableToImageUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
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
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   use type PaintableInterface_Access;
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   use type PaintableInterface_Access_Array;
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access;
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   use type PaintableInterface_Access_Array_Access_Array;
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   use type PaintableInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaintableToImageUtil_Access is org.allbinary.image.PaintableToImageUtil_Package_References.PaintableToImageUtil_Access;
   function "=" (Left, Right : PaintableToImageUtil_Access) return Boolean renames org.allbinary.image.PaintableToImageUtil_Package_References."=";
   subtype PaintableToImageUtil_Access_Array is org.allbinary.image.PaintableToImageUtil_Package_References.PaintableToImageUtil_Access_Array;
   function "=" (Left, Right : PaintableToImageUtil_Access_Array) return Boolean renames org.allbinary.image.PaintableToImageUtil_Package_References."=";
   subtype PaintableToImageUtil_Access_Array_Access is org.allbinary.image.PaintableToImageUtil_Package_References.PaintableToImageUtil_Access_Array_Access;
   function "=" (Left, Right : PaintableToImageUtil_Access_Array_Access) return Boolean renames org.allbinary.image.PaintableToImageUtil_Package_References."=";
   function Java_Box (Value : PaintableToImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.PaintableToImageUtil_Package_References.Java_Box;
   function Java_Unbox_PaintableToImageUtil_Access_Array (Value : access Java_Object'Class) return PaintableToImageUtil_Access_Array_Access renames org.allbinary.image.PaintableToImageUtil_Package_References.Java_Unbox_PaintableToImageUtil_Access_Array;
   subtype PaintableToImageUtil_Access_Array_Access_Array is org.allbinary.image.PaintableToImageUtil_Package_References.PaintableToImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableToImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.PaintableToImageUtil_Package_References."=";
   subtype PaintableToImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.PaintableToImageUtil_Package_References.PaintableToImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableToImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.PaintableToImageUtil_Package_References."=";
   function Java_Box (Value : PaintableToImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.PaintableToImageUtil_Package_References.Java_Box;
   function Java_Unbox_PaintableToImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return PaintableToImageUtil_Access_Array_Access_Array_Access renames org.allbinary.image.PaintableToImageUtil_Package_References.Java_Unbox_PaintableToImageUtil_Access_Array_Access_Array;

   type PaintableToImageUtil is new Java_Object with null record;
   instance : PaintableToImageUtil_Access;

   procedure Initialize (This : in out PaintableToImageUtil'Class);
   function Create return PaintableToImageUtil_Access;
   function getImage (paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class; width : Integer; height : Integer) return Image_Access;
   procedure getImage (paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class; width : Integer; height : Integer);

end org.allbinary.image.PaintableToImageUtil_Package;


