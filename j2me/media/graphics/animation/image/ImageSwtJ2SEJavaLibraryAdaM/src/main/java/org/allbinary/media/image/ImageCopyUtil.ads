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

limited with org.allbinary.media.image.ImageCopyUtil_Package;
package org.allbinary.media.image.ImageCopyUtil_Package_References is
   type ImageCopyUtil_Access is access all org.allbinary.media.image.ImageCopyUtil_Package.ImageCopyUtil'Class;
   type ImageCopyUtil_Access_Array is array (Natural range <>) of ImageCopyUtil_Access;
   type ImageCopyUtil_Access_Array_Access is access all ImageCopyUtil_Access_Array;
   type ImageCopyUtil_Access_Array_Access_Array is array (Natural range <>) of ImageCopyUtil_Access_Array_Access;
   type ImageCopyUtil_Access_Array_Access_Array_Access is access all ImageCopyUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageCopyUtil_Package_References;

with org.allbinary.media.image.ImageCopyUtil_Package_References;
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
limited with org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
limited with org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;
limited with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References;
limited with org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.media.image.ImageCopyUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package OpenGLESImageExclusionUtil_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   use type Features_Access;
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   use type Features_Access_Array;
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   use type Features_Access_Array_Access;
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   use type Features_Access_Array_Access_Array;
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   use type Features_Access_Array_Access_Array_Access;
   subtype GameFeatureFactory_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access;
   use type GameFeatureFactory_Access;
   subtype GameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array;
   use type GameFeatureFactory_Access_Array;
   subtype GameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access;
   use type GameFeatureFactory_Access_Array_Access;
   subtype GameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array;
   use type GameFeatureFactory_Access_Array_Access_Array;
   subtype GameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array_Access;
   use type GameFeatureFactory_Access_Array_Access_Array_Access;
   subtype OpenGLFeatureFactory_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access;
   use type OpenGLFeatureFactory_Access;
   subtype OpenGLFeatureFactory_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array;
   use type OpenGLFeatureFactory_Access_Array;
   subtype OpenGLFeatureFactory_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access;
   use type OpenGLFeatureFactory_Access_Array_Access;
   subtype OpenGLFeatureFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array;
   use type OpenGLFeatureFactory_Access_Array_Access_Array;
   subtype OpenGLFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array_Access;
   use type OpenGLFeatureFactory_Access_Array_Access_Array_Access;
   subtype OpenGLUtil_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access;
   use type OpenGLUtil_Access;
   subtype OpenGLUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array;
   use type OpenGLUtil_Access_Array;
   subtype OpenGLUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access;
   use type OpenGLUtil_Access_Array_Access;
   subtype OpenGLUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array;
   use type OpenGLUtil_Access_Array_Access_Array;
   subtype OpenGLUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array_Access;
   use type OpenGLUtil_Access_Array_Access_Array_Access;
   subtype OpenGLESImageExclusionUtil_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access;
   use type OpenGLESImageExclusionUtil_Access;
   subtype OpenGLESImageExclusionUtil_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array;
   use type OpenGLESImageExclusionUtil_Access_Array;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access;
   use type OpenGLESImageExclusionUtil_Access_Array_Access;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   use type OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   use type OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCopyUtil_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access;
   function "=" (Left, Right : ImageCopyUtil_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";

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


