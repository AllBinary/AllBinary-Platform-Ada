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
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package BaseImageAnimationFactory_Package renames org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package AnimationFactorySpriteScaleUtil_Package renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PrimitiveIntUtil_Package renames org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type AllBinarySpriteRotationAnimationFactory is tagged;
   type AllBinarySpriteRotationAnimationFactory_Access is access all AllBinarySpriteRotationAnimationFactory'Class;
   type AllBinarySpriteRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinarySpriteRotationAnimationFactory_Access;
   type AllBinarySpriteRotationAnimationFactory_Access_Array_Access is access all AllBinarySpriteRotationAnimationFactory_Access_Array;

   type AllBinarySpriteRotationAnimationFactory is new BaseImageAnimationFactory and ProceduralAnimationInterfaceFactoryInterface with record
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
   end record;

   procedure Initialize (This : in out AllBinarySpriteRotationAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   function createWHDY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createWHDY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createWH (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createWH (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createDXYQ (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createDXYQ (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createQ (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createQ (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createWHF (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access;
   procedure createWHF (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   procedure init (This : in out AllBinarySpriteRotationAnimationFactory; dx : Integer; dy : Integer);
   procedure initWH (This : in out AllBinarySpriteRotationAnimationFactory; dx : Integer; dy : Integer);
   function getInstance (This : in out AllBinarySpriteRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out AllBinarySpriteRotationAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out AllBinarySpriteRotationAnimationFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out AllBinarySpriteRotationAnimationFactory; animationInterface : Animation_Access);

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory_Package;


