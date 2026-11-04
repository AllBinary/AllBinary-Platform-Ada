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

limited with org.allbinary.emulator.device.TrueTypeFontUtil_Package;
package org.allbinary.emulator.device.TrueTypeFontUtil_Package_References is
   type TrueTypeFontUtil_Access is access all org.allbinary.emulator.device.TrueTypeFontUtil_Package.TrueTypeFontUtil'Class;
   type TrueTypeFontUtil_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access;
   type TrueTypeFontUtil_Access_Array_Access is access all TrueTypeFontUtil_Access_Array;
   type TrueTypeFontUtil_Access_Array_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access_Array_Access;
   type TrueTypeFontUtil_Access_Array_Access_Array_Access is access all TrueTypeFontUtil_Access_Array_Access_Array;
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
limited with org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.PreResourceImageUtil_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;
with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package; use org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;

package org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package PreResourceImageUtil_Package renames Standard.org.allbinary.image.PreResourceImageUtil_Package;
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
   subtype PreResourceImageUtil_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access;
   use type PreResourceImageUtil_Access;
   subtype PreResourceImageUtil_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array;
   use type PreResourceImageUtil_Access_Array;
   subtype PreResourceImageUtil_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access;
   use type PreResourceImageUtil_Access_Array_Access;
   subtype PreResourceImageUtil_Access_Array_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array;
   use type PreResourceImageUtil_Access_Array_Access_Array;
   subtype PreResourceImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array_Access;
   use type PreResourceImageUtil_Access_Array_Access_Array_Access;
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
   subtype TrueTypeFontUtil_Access_Array_Access_Array is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";
   subtype TrueTypeFontUtil_Access_Array_Access_Array_Access is org.allbinary.emulator.device.TrueTypeFontUtil_Package_References.TrueTypeFontUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrueTypeFontUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.device.TrueTypeFontUtil_Package_References."=";

   type TrueTypeFontUtil is new TrueTypeFontUtilBase with record
      preResourceImageUtil : PreResourceImageUtil_Access;
      widthFloatArray : Float_Array_Access;
      fontImage : OpenGLESImage_Access;
      widthScale : Float;
   end record;
   instance : TrueTypeFontUtil_Access;

   procedure Initialize (This : in out TrueTypeFontUtil'Class);
   function Create return TrueTypeFontUtil_Access;
   function getInstance return TrueTypeFontUtil_Access;
   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access;
   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil);
   function getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access;
   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access;
   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


