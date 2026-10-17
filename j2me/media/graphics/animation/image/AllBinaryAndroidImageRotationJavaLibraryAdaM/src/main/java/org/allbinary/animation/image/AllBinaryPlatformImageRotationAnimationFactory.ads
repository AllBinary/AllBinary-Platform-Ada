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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package; use org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;

package org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package is

   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type AllBinaryPlatformImageRotationAnimationFactory is tagged;
   type AllBinaryPlatformImageRotationAnimationFactory_Access is access all AllBinaryPlatformImageRotationAnimationFactory'Class;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryPlatformImageRotationAnimationFactory_Access;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryPlatformImageRotationAnimationFactory_Access_Array;

   type AllBinaryPlatformImageRotationAnimationFactory is new AllBinaryAndroidImageRotationAnimationFactory with null record;

   procedure Initialize (This : in out AllBinaryPlatformImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean);
   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) return AllBinaryPlatformImageRotationAnimationFactory_Access;

end org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package;


