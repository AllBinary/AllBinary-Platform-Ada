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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.graphics.displayable.ScreenRelationalUtil_Package; use org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;

package org.allbinary.animation.image.AllBinaryScreenRelationalImageAnimationInterfaceFactory_Package is

   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ScreenRelationalUtil_Package renames Standard.org.allbinary.graphics.displayable.ScreenRelationalUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;

   type AllBinaryScreenRelationalImageAnimationInterfaceFactory is tagged;
   type AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access is access all AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class;
   type AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access_Array is array (Natural range <>) of AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access;
   type AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access_Array_Access is access all AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access_Array;

   type AllBinaryScreenRelationalImageAnimationInterfaceFactory is new BaseImageAnimationFactory with record
      lastImage : Image_Access;
   end record;

   procedure Initialize (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory'Class; image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryScreenRelationalImageAnimationInterfaceFactory_Access;
   function getInstance (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinaryScreenRelationalImageAnimationInterfaceFactory; instanceId : Integer);

end org.allbinary.animation.image.AllBinaryScreenRelationalImageAnimationInterfaceFactory_Package;


