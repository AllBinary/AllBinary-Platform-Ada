-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package; use org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package;

package org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type AllBinaryPlatformImageRotationAnimationFactory is tagged;
   type AllBinaryPlatformImageRotationAnimationFactory_Access is access all AllBinaryPlatformImageRotationAnimationFactory'Class;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryPlatformImageRotationAnimationFactory_Access;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryPlatformImageRotationAnimationFactory_Access_Array;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array;

   type AllBinaryPlatformImageRotationAnimationFactory is new AllBinaryJ2SEImageRotationAnimationFactory with null record;

   procedure Initialize (This : in out AllBinaryPlatformImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryPlatformImageRotationAnimationFactory_Access;

end org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package;


