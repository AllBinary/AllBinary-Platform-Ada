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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.SingletonAnimationInterfaceFactory_Package; use org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package SingletonAnimationInterfaceFactory_Package renames Standard.org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
   package AnimationFrameToImageUtil_Package renames Standard.org.allbinary.image.AnimationFrameToImageUtil_Package;

   type ImageAnimationSingletonInterfaceFactory is tagged;
   type ImageAnimationSingletonInterfaceFactory_Access is access all ImageAnimationSingletonInterfaceFactory'Class;
   type ImageAnimationSingletonInterfaceFactory_Access_Array is array (Natural range <>) of ImageAnimationSingletonInterfaceFactory_Access;
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Access is access all ImageAnimationSingletonInterfaceFactory_Access_Array;

   type ImageAnimationSingletonInterfaceFactory is new SingletonAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out ImageAnimationSingletonInterfaceFactory'Class; animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return ImageAnimationSingletonInterfaceFactory_Access;

end org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package;


