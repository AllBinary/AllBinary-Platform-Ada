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

package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type AllBinaryJ2SEImageRotationAnimationFactory is tagged;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access is access all AllBinaryJ2SEImageRotationAnimationFactory'Class;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimationFactory_Access;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimationFactory_Access_Array;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access;
   type AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimationFactory_Access_Array_Access_Array;

   type AllBinaryJ2SEImageRotationAnimationFactory is new BaseImageAnimationFactory with record
      angleIncrementP : Short_Integer;
      resizeCanvasForRotation : Boolean;
   end record;

   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access;
   function createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access;
   procedure createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function getCanvasImage (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Image_Access;
   function getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer);
   function getAngleIncrement (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Short_Integer;

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package;


