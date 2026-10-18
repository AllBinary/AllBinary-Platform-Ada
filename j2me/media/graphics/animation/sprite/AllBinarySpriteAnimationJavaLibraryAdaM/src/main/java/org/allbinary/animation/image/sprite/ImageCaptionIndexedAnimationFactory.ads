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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package; use org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package AnimationFactoryImageScaleUtil_Package renames Standard.org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
   package AnimationFactorySpriteScaleUtil_Package renames Standard.org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;

   type ImageCaptionIndexedAnimationFactory is tagged;
   type ImageCaptionIndexedAnimationFactory_Access is access all ImageCaptionIndexedAnimationFactory'Class;
   type ImageCaptionIndexedAnimationFactory_Access_Array is array (Natural range <>) of ImageCaptionIndexedAnimationFactory_Access;
   type ImageCaptionIndexedAnimationFactory_Access_Array_Access is access all ImageCaptionIndexedAnimationFactory_Access_Array;
   type ImageCaptionIndexedAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of ImageCaptionIndexedAnimationFactory_Access_Array_Access;
   type ImageCaptionIndexedAnimationFactory_Access_Array_Access_Array_Access is access all ImageCaptionIndexedAnimationFactory_Access_Array_Access_Array;

   type ImageCaptionIndexedAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil_Access;
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
      captionImage : Image_Access;
      spriteMovieImage : Image_Access;
      frameWidth : Integer;
      frameHeight : Integer;
      captionDx : Integer;
      captionDy : Integer;
      dx : Integer;
      dy : Integer;
      time : Integer;
      soundInterface : Sound_Access;
      scaleProperties : ScaleProperties_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out ImageCaptionIndexedAnimationFactory'Class; captionImage_Param : access Image_Package.Image'Class; spriteMovieImage_Param : access Image_Package.Image'Class; soundInterface_Param : access Sound_Package.Sound'Class; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (captionImage_Param : access Image_Package.Image'Class; spriteMovieImage_Param : access Image_Package.Image'Class; soundInterface_Param : access Sound_Package.Sound'Class; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ImageCaptionIndexedAnimationFactory_Access;
   function getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out ImageCaptionIndexedAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package;


