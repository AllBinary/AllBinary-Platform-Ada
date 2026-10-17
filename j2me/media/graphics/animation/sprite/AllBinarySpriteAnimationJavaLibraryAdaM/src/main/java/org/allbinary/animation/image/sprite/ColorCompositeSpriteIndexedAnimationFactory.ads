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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package BaseImageAnimationFactory_Package renames org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package AnimationFactorySpriteScaleUtil_Package renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
   package PrimitiveIntUtil_Package renames org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type ColorCompositeSpriteIndexedAnimationFactory is tagged;
   type ColorCompositeSpriteIndexedAnimationFactory_Access is access all ColorCompositeSpriteIndexedAnimationFactory'Class;
   type ColorCompositeSpriteIndexedAnimationFactory_Access_Array is array (Natural range <>) of ColorCompositeSpriteIndexedAnimationFactory_Access;
   type ColorCompositeSpriteIndexedAnimationFactory_Access_Array_Access is access all ColorCompositeSpriteIndexedAnimationFactory_Access_Array;

   type ColorCompositeSpriteIndexedAnimationFactory is new BaseImageAnimationFactory and ProceduralAnimationInterfaceFactoryInterface with record
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
      basicColorArray : BasicColor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out ColorCompositeSpriteIndexedAnimationFactory'Class; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return ColorCompositeSpriteIndexedAnimationFactory_Access;
   function getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface : Animation_Access);

end org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package;


