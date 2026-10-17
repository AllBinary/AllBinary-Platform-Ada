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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;
with org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AllBinaryAndroidImageRotationAnimationFactory is tagged;
   type AllBinaryAndroidImageRotationAnimationFactory_Access is access all AllBinaryAndroidImageRotationAnimationFactory'Class;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryAndroidImageRotationAnimationFactory_Access;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryAndroidImageRotationAnimationFactory_Access_Array;

   type AllBinaryAndroidImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      angleIncrement : Short_Integer;
      resizeCanvasForRotation : Boolean;
   end record;

   procedure Initialize (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean);
   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   function createFactory (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactory (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryA (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryA (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryU (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryU (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryDXYU (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryDXYU (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean);
   procedure init (This : in out AllBinaryAndroidImageRotationAnimationFactory; dx : Integer; dy : Integer);
   function getCanvasImage (This : in out AllBinaryAndroidImageRotationAnimationFactory) return Image_Access;
   function getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;


