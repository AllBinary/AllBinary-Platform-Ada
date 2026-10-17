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
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.eclipse.swt.SWT_Package; use org.eclipse.swt.SWT_Package;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.eclipse.swt.graphics.ImageLoader_Package; use org.eclipse.swt.graphics.ImageLoader_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;
with org.allbinary.AvianUtil_Package; use org.allbinary.AvianUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.opengles.OpenGLCapabilities_Package; use org.allbinary.graphics.opengles.OpenGLCapabilities_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.emulator.device.TrueTypeFontUtilBase_Package; use org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;

package org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package SWT_Package renames Standard.org.eclipse.swt.SWT_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;
   package ImageLoader_Package renames Standard.org.eclipse.swt.graphics.ImageLoader_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;
   package AvianUtil_Package renames Standard.org.allbinary.AvianUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package OpenGLCapabilities_Package renames Standard.org.allbinary.graphics.opengles.OpenGLCapabilities_Package;
   package PreResourceImageUtil_Package renames Standard.org.allbinary.image.PreResourceImageUtil_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type TrueTypeFontUtil is tagged;
   type TrueTypeFontUtil_Access is access all TrueTypeFontUtil'Class;
   type TrueTypeFontUtil_Access_Array is array (Natural range <>) of TrueTypeFontUtil_Access;
   type TrueTypeFontUtil_Access_Array_Access is access all TrueTypeFontUtil_Access_Array;

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
   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl : GL10_Access; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access) return Image_Access;
   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl : GL10_Access; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access);
   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil);
   function getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access) return Image_Access;
   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access);
   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access;
   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer);

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


