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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.animation.image.ImageArrayAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type ImageArrayAnimationFactory is tagged;
   type ImageArrayAnimationFactory_Access is access all ImageArrayAnimationFactory'Class;
   type ImageArrayAnimationFactory_Access_Array is array (Natural range <>) of ImageArrayAnimationFactory_Access;
   type ImageArrayAnimationFactory_Access_Array_Access is access all ImageArrayAnimationFactory_Access_Array;

   type ImageArrayAnimationFactory is new AnimationInterfaceFactoryInterface with record
      dx : Integer;
      dy : Integer;
      imageArray : Image_Access_Array_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out ImageArrayAnimationFactory'Class; imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return ImageArrayAnimationFactory_Access;
   function getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out ImageArrayAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.image.ImageArrayAnimationFactory_Package;


