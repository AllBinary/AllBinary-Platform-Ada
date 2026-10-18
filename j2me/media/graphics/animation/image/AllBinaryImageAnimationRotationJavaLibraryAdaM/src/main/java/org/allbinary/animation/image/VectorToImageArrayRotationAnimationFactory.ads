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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;

package org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package VectorInfo_Package renames Standard.org.allbinary.vector.VectorInfo_Package;

   type VectorToImageArrayRotationAnimationFactory is tagged;
   type VectorToImageArrayRotationAnimationFactory_Access is access all VectorToImageArrayRotationAnimationFactory'Class;
   type VectorToImageArrayRotationAnimationFactory_Access_Array is array (Natural range <>) of VectorToImageArrayRotationAnimationFactory_Access;
   type VectorToImageArrayRotationAnimationFactory_Access_Array_Access is access all VectorToImageArrayRotationAnimationFactory_Access_Array;
   type VectorToImageArrayRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of VectorToImageArrayRotationAnimationFactory_Access_Array_Access;
   type VectorToImageArrayRotationAnimationFactory_Access_Array_Access_Array_Access is access all VectorToImageArrayRotationAnimationFactory_Access_Array_Access_Array;

   type VectorToImageArrayRotationAnimationFactory is new BaseImageAnimationFactory with record
      imageArray : Image_Access_Array_Access;
      angleIncrement : Integer;
   end record;

   procedure Initialize (This : in out VectorToImageArrayRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorToImageArrayRotationAnimationFactory_Access;
   procedure init (This : in out VectorToImageArrayRotationAnimationFactory);
   function getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer);
   function getAngleIncrement (This : in out VectorToImageArrayRotationAnimationFactory) return Integer;
   procedure setInitialScale (This : in out VectorToImageArrayRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package;


