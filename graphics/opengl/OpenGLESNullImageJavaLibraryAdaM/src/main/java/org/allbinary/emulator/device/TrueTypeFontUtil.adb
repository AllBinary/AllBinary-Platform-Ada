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


package body org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   procedure Initialize_Fields (This : in out TrueTypeFontUtil'Class) is
   begin
      null;
      This.fontImage := OpenGLESImage_Package.NULL_OPENGL_IMAGE;
   end Initialize_Fields;


   function getInstance return TrueTypeFontUtil_Access is
   begin
        return TrueTypeFontUtil_Package.instance;
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
      Java_Result : constant Integer := TrueTypeFontUtil'Class (This).getAsTextureSize (textureSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsTextureSize;

   procedure getCellSize (This : in out TrueTypeFontUtil; cellSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtil'Class (This).getCellSize (cellSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellSize;

   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmap (filename, fontSize, cellSize, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmap;

   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmapGL (gl_Param, filename, cellSize, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmapGL;

   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) is
      Java_Result : constant Integer_Array_Access := TrueTypeFontUtil'Class (This).getFontWidths (filename, fontSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontWidths;

begin
   null;
   instance := TrueTypeFontUtil_Package.Create;

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


