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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package; use org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;

package org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;

   type TrueTypeFontUtil is tagged;
   type TrueTypeFontUtil_Access is access all TrueTypeFontUtil'Class;
   type TrueTypeFontUtil_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access;
   type TrueTypeFontUtil_Access_Array_Access is access all TrueTypeFontUtil_Access_Array;

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


