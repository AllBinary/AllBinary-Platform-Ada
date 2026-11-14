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
limited with javax.microedition.lcdui.PlatformImage_Package;
package javax.microedition.lcdui.PlatformImage_Package_References is
   type PlatformImage_Access is access all javax.microedition.lcdui.PlatformImage_Package.PlatformImage'Class;
   type PlatformImage_Access_Array is array (Natural range <>) of PlatformImage_Access;
   type PlatformImage_Access_Array_Access is access all PlatformImage_Access_Array;
   type PlatformImage_Access_Array_Access_Array is array (Natural range <>) of PlatformImage_Access_Array_Access;
   type PlatformImage_Access_Array_Access_Array_Access is access all PlatformImage_Access_Array_Access_Array;
   type PlatformImage_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformImage_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformImage_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformImage_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformImage_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformImage_Access_Array_Access is (if Value /= null and then Value.all in PlatformImage_Access_Array_Object'Class then PlatformImage_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformImage_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformImage_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformImage_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformImage_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformImage_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformImage_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformImage_Access_Array_Access_Array_Object'Class then PlatformImage_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.lcdui.PlatformImage_Package_References;

with javax.microedition.lcdui.PlatformImage_Package_References;
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
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package javax.microedition.lcdui.PlatformImage_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype PlatformImage_Access is javax.microedition.lcdui.PlatformImage_Package_References.PlatformImage_Access;
   function "=" (Left, Right : PlatformImage_Access) return Boolean renames javax.microedition.lcdui.PlatformImage_Package_References."=";
   subtype PlatformImage_Access_Array is javax.microedition.lcdui.PlatformImage_Package_References.PlatformImage_Access_Array;
   function "=" (Left, Right : PlatformImage_Access_Array) return Boolean renames javax.microedition.lcdui.PlatformImage_Package_References."=";
   subtype PlatformImage_Access_Array_Access is javax.microedition.lcdui.PlatformImage_Package_References.PlatformImage_Access_Array_Access;
   function "=" (Left, Right : PlatformImage_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PlatformImage_Package_References."=";
   function Java_Box (Value : PlatformImage_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.PlatformImage_Package_References.Java_Box;
   function Java_Unbox_PlatformImage_Access_Array (Value : access Java_Object'Class) return PlatformImage_Access_Array_Access renames javax.microedition.lcdui.PlatformImage_Package_References.Java_Unbox_PlatformImage_Access_Array;
   subtype PlatformImage_Access_Array_Access_Array is javax.microedition.lcdui.PlatformImage_Package_References.PlatformImage_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformImage_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.PlatformImage_Package_References."=";
   subtype PlatformImage_Access_Array_Access_Array_Access is javax.microedition.lcdui.PlatformImage_Package_References.PlatformImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformImage_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PlatformImage_Package_References."=";
   function Java_Box (Value : PlatformImage_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.PlatformImage_Package_References.Java_Box;
   function Java_Unbox_PlatformImage_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformImage_Access_Array_Access_Array_Access renames javax.microedition.lcdui.PlatformImage_Package_References.Java_Unbox_PlatformImage_Access_Array_Access_Array;

   type PlatformImage is new Java_Object with null record;

   procedure Initialize (This : in out PlatformImage'Class);
   function Create return PlatformImage_Access;
   function getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class) return Java_Object_Access;
   procedure getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class);
   function getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer) return Integer;
   procedure getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer);
   function getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer) return Integer;
   procedure getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer);
   function getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer) return Integer;
   procedure getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer);
   function getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer) return Integer;
   procedure getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer);
   function getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) return Graphics_Access;
   procedure getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   procedure drawImage (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x : Integer; y : Integer; anchor : Integer; g2_Param : access Graphics_Package.Graphics'Class; g_Param : access Java_Object'Class);
   procedure drawRegion (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x_src : Integer; y_src : Integer; width : Integer; height : Integer; transform : Integer; x_dst : Integer; y_dst : Integer; anchor : Integer; g_Param : access Graphics_Package.Graphics'Class);
   procedure getRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   procedure setRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class);
   function getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class) return Integer_Array_Access;
   procedure getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class);
   function getImage (This : in out PlatformImage; Value : Unbounded_String) return Java_Object_Access;
   procedure getImage (This : in out PlatformImage; Value : Unbounded_String);

end javax.microedition.lcdui.PlatformImage_Package;


