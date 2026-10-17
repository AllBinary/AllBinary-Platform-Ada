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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package; use org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package; use org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package; use org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package; use org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.microemu.app.ui.swt.SwtDeviceComponent_Package; use org.microemu.app.ui.swt.SwtDeviceComponent_Package;
with org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package; use org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package;
with org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package; use org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package org.allbinary.media.image.ImageCopyUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package OpenGLESDeviceImageTranslate_Package renames Standard.org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package OpenGLESImageExclusionUtil_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
   package OpenGLESImageProperties_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageProperties_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;
   package SwtDeviceComponent_Package renames Standard.org.microemu.app.ui.swt.SwtDeviceComponent_Package;
   package PostLoadSwtImmutableImageProcessor_Package renames Standard.org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package;
   package PostLoadSwtMutableImageProcessor_Package renames Standard.org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package;
   package SwtImmutableImage_Package renames Standard.org.microemu.device.swt.SwtImmutableImage_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;

   type ImageCopyUtil is tagged;
   type ImageCopyUtil_Access is access all ImageCopyUtil'Class;
   type ImageCopyUtil_Access_Array is array (Natural range <>) of ImageCopyUtil_Access;
   type ImageCopyUtil_Access_Array_Access is access all ImageCopyUtil_Access_Array;

   type ImageCopyUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      openGLUtil : OpenGLUtil_Access;
      openGLESImageExclusionUtil : OpenGLESImageExclusionUtil_Access;
      NO_COPY : Unbounded_String;
      UNABLE : Unbounded_String;
      INFORMATION : Unbounded_String;
      LEADERBOARD : Unbounded_String;
   end record;
   instance : ImageCopyUtil_Access;

   procedure Initialize (This : in out ImageCopyUtil'Class);
   function Create return ImageCopyUtil_Access;
   function getInstance return ImageCopyUtil_Access;
   function createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access;
   procedure createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class);
   function createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access;
   procedure createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class);
   function createImageWH (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) return Image_Access;
   procedure createImageWH (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean);
   function createImage2 (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) return Image_Access;
   procedure createImage2 (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean);
   function createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) return Image_Access;
   procedure createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean);

end org.allbinary.media.image.ImageCopyUtil_Package;


