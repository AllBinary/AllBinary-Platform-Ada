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
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;

package org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type AllBinaryAndroidImageRotationAnimationFactory is tagged;
   type AllBinaryAndroidImageRotationAnimationFactory_Access is access all AllBinaryAndroidImageRotationAnimationFactory'Class;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryAndroidImageRotationAnimationFactory_Access;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryAndroidImageRotationAnimationFactory_Access_Array;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access;
   type AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all AllBinaryAndroidImageRotationAnimationFactory_Access_Array_Access_Array;

   type AllBinaryAndroidImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      angleIncrement : Short_Integer;
      resizeCanvasForRotation : Boolean;
   end record;

   procedure Initialize (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   function createFactory (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactory (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryA (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryA (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryU (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryU (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryDXYU (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryDXYU (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access;
   procedure createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   procedure init (This : in out AllBinaryAndroidImageRotationAnimationFactory; dx : Integer; dy : Integer);
   function getCanvasImage (This : in out AllBinaryAndroidImageRotationAnimationFactory) return Image_Access;
   function getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;


