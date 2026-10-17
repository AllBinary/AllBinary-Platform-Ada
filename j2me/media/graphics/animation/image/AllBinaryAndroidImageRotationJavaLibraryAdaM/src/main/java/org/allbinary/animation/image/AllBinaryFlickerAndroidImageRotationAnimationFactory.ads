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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type AllBinaryFlickerAndroidImageRotationAnimationFactory is tagged;
   type AllBinaryFlickerAndroidImageRotationAnimationFactory_Access is access all AllBinaryFlickerAndroidImageRotationAnimationFactory'Class;
   type AllBinaryFlickerAndroidImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryFlickerAndroidImageRotationAnimationFactory_Access;
   type AllBinaryFlickerAndroidImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryFlickerAndroidImageRotationAnimationFactory_Access_Array;

   type AllBinaryFlickerAndroidImageRotationAnimationFactory is new AnimationInterfaceFactoryInterface with record
      image : Image_Access;
      angleIncrement : Short_Integer;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryFlickerAndroidImageRotationAnimationFactory_Access;
   function getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer);
   function getAngleIncrement (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Short_Integer;
   procedure setImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; image : Image_Access);
   function getImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Image_Access;
   procedure setInitialScale (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package;


