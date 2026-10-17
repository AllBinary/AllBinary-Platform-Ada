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
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.caption.CaptionIndexedAnimation_Package; use org.allbinary.animation.caption.CaptionIndexedAnimation_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;
with org.allbinary.image.AnimationFactoryImageScaleUtil_Package; use org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;

package org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;
   package CaptionIndexedAnimation_Package renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package;
   package ImageAnimation_Package renames org.allbinary.animation.image.ImageAnimation_Package;
   package BasicColorUtil_Package renames org.allbinary.graphics.color.BasicColorUtil_Package;
   package AnimationFactoryImageScaleUtil_Package renames org.allbinary.image.AnimationFactoryImageScaleUtil_Package;
   package AnimationFactorySpriteScaleUtil_Package renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;
   package Sound_Package renames org.allbinary.media.audio.Sound_Package;

   type ImageCaptionIndexedAnimationFactory is tagged;
   type ImageCaptionIndexedAnimationFactory_Access is access all ImageCaptionIndexedAnimationFactory'Class;
   type ImageCaptionIndexedAnimationFactory_Access_Array is array (Natural range <>) of ImageCaptionIndexedAnimationFactory_Access;
   type ImageCaptionIndexedAnimationFactory_Access_Array_Access is access all ImageCaptionIndexedAnimationFactory_Access_Array;

   type ImageCaptionIndexedAnimationFactory is new AnimationInterfaceFactoryInterface with record
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

   procedure Initialize (This : in out ImageCaptionIndexedAnimationFactory'Class; captionImage : Image_Access; spriteMovieImage : Image_Access; soundInterface : Sound_Access; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (captionImage : Image_Access; spriteMovieImage : Image_Access; soundInterface : Sound_Access; frameWidth : Integer; frameHeight : Integer; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return ImageCaptionIndexedAnimationFactory_Access;
   function getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out ImageCaptionIndexedAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out ImageCaptionIndexedAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.image.sprite.ImageCaptionIndexedAnimationFactory_Package;


