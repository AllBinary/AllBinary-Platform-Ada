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
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;
with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package; use org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;
with org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;

package org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package BaseImageAnimationFactory_Package renames Standard.org.allbinary.animation.image.BaseImageAnimationFactory_Package;
   package BasicColorUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorUtil_Package;
   package AnimationFactorySpriteScaleUtil_Package renames Standard.org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;

   type OneRowSpriteIndexedAnimationFactory is tagged;
   type OneRowSpriteIndexedAnimationFactory_Access is access all OneRowSpriteIndexedAnimationFactory'Class;
   type OneRowSpriteIndexedAnimationFactory_Access_Array is array (Natural range <>) of OneRowSpriteIndexedAnimationFactory_Access;
   type OneRowSpriteIndexedAnimationFactory_Access_Array_Access is access all OneRowSpriteIndexedAnimationFactory_Access_Array;

   type OneRowSpriteIndexedAnimationFactory is new BaseImageAnimationFactory with record
      animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil_Access;
   end record;

   procedure Initialize (This : in out OneRowSpriteIndexedAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access;
   function createFactoryDX (image : Image_Access; dx : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryDX (image : Image_Access; dx : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactoryWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactoryWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return OneRowSpriteIndexedAnimationFactory_Access;
   procedure createFactory (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   procedure init (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer; dy : Integer);
   procedure initW (This : in out OneRowSpriteIndexedAnimationFactory; dx : Integer);
   function getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out OneRowSpriteIndexedAnimationFactory; instanceId : Integer);

end org.allbinary.animation.image.sprite.OneRowSpriteIndexedAnimationFactory_Package;


