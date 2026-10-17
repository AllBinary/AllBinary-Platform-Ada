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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Paint_Package; use android.graphics.Paint_Package;
with android.graphics.Rect_Package; use android.graphics.Rect_Package;
with android.graphics.Typeface_Package; use android.graphics.Typeface_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.microemu.android.device.AndroidImmutableImage_Package; use org.microemu.android.device.AndroidImmutableImage_Package;
with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package; use org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;

package org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package Paint_Package renames Standard.android.graphics.Paint_Package;
   package Rect_Package renames Standard.android.graphics.Rect_Package;
   package Typeface_Package renames Standard.android.graphics.Typeface_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package PreResourceImageUtil_Package renames Standard.org.allbinary.image.PreResourceImageUtil_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   package AndroidImmutableImage_Package renames Standard.org.microemu.android.device.AndroidImmutableImage_Package;

   type TrueTypeFontUtil is tagged;
   type TrueTypeFontUtil_Access is access all TrueTypeFontUtil'Class;
   type TrueTypeFontUtil_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access;
   type TrueTypeFontUtil_Access_Array_Access is access all TrueTypeFontUtil_Access_Array;

   type TrueTypeFontUtil is new TrueTypeFontUtilBase with record
      logUtil : LogUtil_Access;
      preResourceImageUtil : PreResourceImageUtil_Access;
      realFontSize : Integer;
      fontImage : OpenGLESImage_Access;
   end record;
   instance : TrueTypeFontUtil_Access;

   procedure Initialize (This : in out TrueTypeFontUtil'Class);
   function Create return TrueTypeFontUtil_Access;
   function getInstance return TrueTypeFontUtil_Access;
   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil);
   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class) return Image_Access;
   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class);
   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access;
   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


