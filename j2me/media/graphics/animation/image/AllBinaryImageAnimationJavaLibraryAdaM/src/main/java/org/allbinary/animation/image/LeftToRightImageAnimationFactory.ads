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

package org.allbinary.animation.image.LeftToRightImageAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type LeftToRightImageAnimationFactory is tagged;
   type LeftToRightImageAnimationFactory_Access is access all LeftToRightImageAnimationFactory'Class;
   type LeftToRightImageAnimationFactory_Access_Array is array (Natural range <>) of LeftToRightImageAnimationFactory_Access;
   type LeftToRightImageAnimationFactory_Access_Array_Access is access all LeftToRightImageAnimationFactory_Access_Array;
   type LeftToRightImageAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of LeftToRightImageAnimationFactory_Access_Array_Access;
   type LeftToRightImageAnimationFactory_Access_Array_Access_Array_Access is access all LeftToRightImageAnimationFactory_Access_Array_Access_Array;

   type LeftToRightImageAnimationFactory is new BaseImageAnimationFactory with null record;

   procedure Initialize (This : in out LeftToRightImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return LeftToRightImageAnimationFactory_Access;
   function getInstance (This : in out LeftToRightImageAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out LeftToRightImageAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.LeftToRightImageAnimationFactory_Package;


