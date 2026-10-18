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
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type PooledImageArrayRotationAnimationFactory is tagged;
   type PooledImageArrayRotationAnimationFactory_Access is access all PooledImageArrayRotationAnimationFactory'Class;
   type PooledImageArrayRotationAnimationFactory_Access_Array is array (Natural range <>) of PooledImageArrayRotationAnimationFactory_Access;
   type PooledImageArrayRotationAnimationFactory_Access_Array_Access is access all PooledImageArrayRotationAnimationFactory_Access_Array;
   type PooledImageArrayRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of PooledImageArrayRotationAnimationFactory_Access_Array_Access;
   type PooledImageArrayRotationAnimationFactory_Access_Array_Access_Array_Access is access all PooledImageArrayRotationAnimationFactory_Access_Array_Access_Array;

   type PooledImageArrayRotationAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      allBinaryImageRotationAnimationInfo : Java_Object_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out PooledImageArrayRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access;
   function createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access;
   procedure createFactory (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function createDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access;
   procedure createDXY (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out PooledImageArrayRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package;


