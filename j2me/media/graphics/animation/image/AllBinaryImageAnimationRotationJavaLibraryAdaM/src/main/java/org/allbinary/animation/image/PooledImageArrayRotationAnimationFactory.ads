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
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package; use org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;

package org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package ImageToRotationImageArrayUtil_Package renames Standard.org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;

   type PooledImageArrayRotationAnimationFactory is tagged;
   type PooledImageArrayRotationAnimationFactory_Access is access all PooledImageArrayRotationAnimationFactory'Class;
   type PooledImageArrayRotationAnimationFactory_Access_Array is array (Natural range <>) of PooledImageArrayRotationAnimationFactory_Access;
   type PooledImageArrayRotationAnimationFactory_Access_Array_Access is access all PooledImageArrayRotationAnimationFactory_Access_Array;

   type PooledImageArrayRotationAnimationFactory is new AnimationInterfaceFactoryInterface with record
      allBinaryImageRotationAnimationInfo : Java_Object_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out PooledImageArrayRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return PooledImageArrayRotationAnimationFactory_Access;
   function createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return PooledImageArrayRotationAnimationFactory_Access;
   procedure createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return PooledImageArrayRotationAnimationFactory_Access;
   procedure createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out PooledImageArrayRotationAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package;


