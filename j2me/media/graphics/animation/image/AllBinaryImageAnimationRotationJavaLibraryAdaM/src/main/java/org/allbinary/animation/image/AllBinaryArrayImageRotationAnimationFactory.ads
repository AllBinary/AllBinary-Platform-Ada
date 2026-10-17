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
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package; use org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package; use org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageToRotationImageArrayUtil_Package renames Standard.org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;

   type AllBinaryArrayImageRotationAnimationFactory is tagged;
   type AllBinaryArrayImageRotationAnimationFactory_Access is access all AllBinaryArrayImageRotationAnimationFactory'Class;
   type AllBinaryArrayImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryArrayImageRotationAnimationFactory_Access;
   type AllBinaryArrayImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryArrayImageRotationAnimationFactory_Access_Array;

   type AllBinaryArrayImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      imageArray : Image_Access_Array_Access;
      angleIncrement : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryArrayImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryArrayImageRotationAnimationFactory_Access;
   function createFactory (image : Image_Access; dx : Integer; dy : Integer) return AllBinaryArrayImageRotationAnimationFactory_Access;
   procedure createFactory (image : Image_Access; dx : Integer; dy : Integer);
   function createFactoryA (image : Image_Access; dx : Integer; dy : Integer; angleIncrement : Integer) return AllBinaryArrayImageRotationAnimationFactory_Access;
   procedure createFactoryA (image : Image_Access; dx : Integer; dy : Integer; angleIncrement : Integer);
   procedure init (This : in out AllBinaryArrayImageRotationAnimationFactory);
   procedure initDXY (This : in out AllBinaryArrayImageRotationAnimationFactory; dx : Integer; dy : Integer);
   function getInstance (This : in out AllBinaryArrayImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryArrayImageRotationAnimationFactory; instanceId : Integer);
   procedure setImageArray (This : in out AllBinaryArrayImageRotationAnimationFactory; imageArray : Image_Access_Array_Access);
   function getAngleIncrement (This : in out AllBinaryArrayImageRotationAnimationFactory) return Integer;

end org.allbinary.animation.image.AllBinaryArrayImageRotationAnimationFactory_Package;


