-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;

package org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type LazyImageRotationAnimationFactory is tagged;
   type LazyImageRotationAnimationFactory_Access is access all LazyImageRotationAnimationFactory'Class;
   type LazyImageRotationAnimationFactory_Access_Array is array (Natural range <>) of LazyImageRotationAnimationFactory_Access;
   type LazyImageRotationAnimationFactory_Access_Array_Access is access all LazyImageRotationAnimationFactory_Access_Array;

   type LazyImageRotationAnimationFactory is new AnimationInterfaceFactoryInterface with record
      layoutIndex : Integer;
      animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out LazyImageRotationAnimationFactory'Class; layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access);
   function Create (layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access) return LazyImageRotationAnimationFactory_Access;
   function getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out LazyImageRotationAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package;


