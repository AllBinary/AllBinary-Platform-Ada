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


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageTranslate_Package;

package body org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   function "=" (Left, Right : OpenGLESImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   procedure Initialize_Fields (This : in out TrueTypeFontUtil'Class) is
   begin
      null;
      This.fontImage := OpenGLESImage_Access (OpenGLESImage_Package.NULL_OPENGL_IMAGE);
   end Initialize_Fields;


   function getInstance return TrueTypeFontUtil_Access is
   begin
        return TrueTypeFontUtil_Access (TrueTypeFontUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TrueTypeFontUtil'Class) is
   begin
        TrueTypeFontUtilBase_Package.Initialize (This, 1);
        Initialize_Fields (This);
   end Initialize;

   function Create return TrueTypeFontUtil_Access is
      This : constant TrueTypeFontUtil_Access := new TrueTypeFontUtil;
   begin
      TrueTypeFontUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getAsTextureSize (This : in out TrueTypeFontUtil; textureSize : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getAsTextureSize;

   function getCellSize (This : in out TrueTypeFontUtil; cellSize : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getCellSize;

   function getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getFontBitmap;

   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil) is
   begin
        null;
   end saveFontAtlasAsFile;

   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getFontBitmapGL;

   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getFontWidths;

   procedure getAsTextureSize (This : in out TrueTypeFontUtil; textureSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtil'Class (This).getAsTextureSize (textureSize => textureSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsTextureSize;

   procedure getCellSize (This : in out TrueTypeFontUtil; cellSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtil'Class (This).getCellSize (cellSize => cellSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellSize;

   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmap (filename => filename, fontSize => fontSize, cellSize => cellSize, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmap;

   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmapGL (gl_Param => gl_Param, filename => filename, cellSize => cellSize, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmapGL;

   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) is
      Java_Result : constant Integer_Array_Access := TrueTypeFontUtil'Class (This).getFontWidths (filename => filename, fontSize => fontSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontWidths;

begin
   null;
   instance := TrueTypeFontUtil_Package.Create;

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


