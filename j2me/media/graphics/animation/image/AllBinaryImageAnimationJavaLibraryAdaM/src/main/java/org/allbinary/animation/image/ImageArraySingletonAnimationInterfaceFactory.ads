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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.SingletonAnimationInterfaceFactory_Package; use org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
with org.allbinary.image.IndexedAnimationToImageArrayUtil_Package; use org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;

package org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package SingletonAnimationInterfaceFactory_Package renames Standard.org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
   package IndexedAnimationToImageArrayUtil_Package renames Standard.org.allbinary.image.IndexedAnimationToImageArrayUtil_Package;

   type ImageArraySingletonAnimationInterfaceFactory is tagged;
   type ImageArraySingletonAnimationInterfaceFactory_Access is access all ImageArraySingletonAnimationInterfaceFactory'Class;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array is array (Natural range <>) of ImageArraySingletonAnimationInterfaceFactory_Access;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access is access all ImageArraySingletonAnimationInterfaceFactory_Access_Array;

   type ImageArraySingletonAnimationInterfaceFactory is new SingletonAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out ImageArraySingletonAnimationInterfaceFactory'Class; imageArray : Image_Access_Array_Access);
   function Create (imageArray : Image_Access_Array_Access) return ImageArraySingletonAnimationInterfaceFactory_Access;

end org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package;


