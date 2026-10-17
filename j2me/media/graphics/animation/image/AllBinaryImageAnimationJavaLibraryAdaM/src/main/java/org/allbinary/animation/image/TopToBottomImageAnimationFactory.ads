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
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;

package org.allbinary.animation.image.TopToBottomImageAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;

   type TopToBottomImageAnimationFactory is tagged;
   type TopToBottomImageAnimationFactory_Access is access all TopToBottomImageAnimationFactory'Class;
   type TopToBottomImageAnimationFactory_Access_Array is array (Natural range <>) of TopToBottomImageAnimationFactory_Access;
   type TopToBottomImageAnimationFactory_Access_Array_Access is access all TopToBottomImageAnimationFactory_Access_Array;

   type TopToBottomImageAnimationFactory is new BaseImageAnimationFactory with null record;

   procedure Initialize (This : in out TopToBottomImageAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return TopToBottomImageAnimationFactory_Access;
   function getInstance (This : in out TopToBottomImageAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out TopToBottomImageAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.TopToBottomImageAnimationFactory_Package;


