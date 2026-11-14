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
limited with org.allbinary.emulator.device.TrueTypeFontUtil_Package;
package org.allbinary.emulator.device.TrueTypeFontUtil_Package_References is
   type TrueTypeFontUtil_Access is access all org.allbinary.emulator.device.TrueTypeFontUtil_Package.TrueTypeFontUtil'Class;
   type TrueTypeFontUtil_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access;
   type TrueTypeFontUtil_Access_Array_Access is access all TrueTypeFontUtil_Access_Array;
   type TrueTypeFontUtil_Access_Array_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access_Array_Access;
   type TrueTypeFontUtil_Access_Array_Access_Array_Access is access all TrueTypeFontUtil_Access_Array_Access_Array;
   type TrueTypeFontUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrueTypeFontUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TrueTypeFontUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrueTypeFontUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrueTypeFontUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrueTypeFontUtil_Access_Array_Access is (if Value /= null and then Value.all in TrueTypeFontUtil_Access_Array_Object'Class then TrueTypeFontUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TrueTypeFontUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrueTypeFontUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrueTypeFontUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrueTypeFontUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrueTypeFontUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrueTypeFontUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrueTypeFontUtil_Access_Array_Access_Array_Object'Class then TrueTypeFontUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.emulator.device.TrueTypeFontUtil_Package_References;

with org.allbinary.emulator.device.TrueTypeFontUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;
with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package; use org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;

package org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
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
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   use type OpenGLESImage_Access;
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   use type OpenGLESImage_Access_Array;
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access;
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   use type OpenGLESImage_Access_Array_Access_Array;
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   use type OpenGLESImage_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TrueTypeFontUtil_Access is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access;
   function "=" (Left, Right : TrueTypeFontUtil_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   subtype TrueTypeFontUtil_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   subtype TrueTypeFontUtil_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   function Java_Box (Value : TrueTypeFontUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.Java_Box;
   function Java_Unbox_TrueTypeFontUtil_Access_Array (Value : access Java_Object'Class) return TrueTypeFontUtil_Access_Array_Access renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.Java_Unbox_TrueTypeFontUtil_Access_Array;
   subtype TrueTypeFontUtil_Access_Array_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   subtype TrueTypeFontUtil_Access_Array_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   function Java_Box (Value : TrueTypeFontUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.Java_Box;
   function Java_Unbox_TrueTypeFontUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TrueTypeFontUtil_Access_Array_Access_Array_Access renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.Java_Unbox_TrueTypeFontUtil_Access_Array_Access_Array;

   type TrueTypeFontUtil is new TrueTypeFontUtilBase with record
      fontImage : OpenGLESImage_Access;
   end record;
   instance : TrueTypeFontUtil_Access;

   procedure Initialize (This : in out TrueTypeFontUtil'Class);
   function Create return TrueTypeFontUtil_Access;
   function getInstance return TrueTypeFontUtil_Access;
   function getAsTextureSize (This : in out TrueTypeFontUtil; textureSize : Integer) return Integer;
   procedure getAsTextureSize (This : in out TrueTypeFontUtil; textureSize : Integer);
   function getCellSize (This : in out TrueTypeFontUtil; cellSize : Integer) return Integer;
   procedure getCellSize (This : in out TrueTypeFontUtil; cellSize : Integer);
   function getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access;
   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil);
   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access;
   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access;
   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


