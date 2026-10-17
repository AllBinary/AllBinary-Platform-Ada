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
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;
with org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type AllBinaryHTMLImageRotationAnimationFactory is tagged;
   type AllBinaryHTMLImageRotationAnimationFactory_Access is access all AllBinaryHTMLImageRotationAnimationFactory'Class;
   type AllBinaryHTMLImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryHTMLImageRotationAnimationFactory_Access;
   type AllBinaryHTMLImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryHTMLImageRotationAnimationFactory_Access_Array;

   type AllBinaryHTMLImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      angleIncrement : Short_Integer;
   end record;

   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimationFactory'Class; image_Param : access Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return AllBinaryHTMLImageRotationAnimationFactory_Access;
   function createFactoryADXY (image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return AllBinaryHTMLImageRotationAnimationFactory_Access;
   procedure createFactoryADXY (image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class);
   procedure init (This : in out AllBinaryHTMLImageRotationAnimationFactory; dx : Integer; dy : Integer);
   function getInstance (This : in out AllBinaryHTMLImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryHTMLImageRotationAnimationFactory; instanceId : Integer);
   function getAngleIncrement (This : in out AllBinaryHTMLImageRotationAnimationFactory) return Short_Integer;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package;


