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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;

package org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package is

   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;
   package Direction_Package renames org.allbinary.direction.Direction_Package;
   package Angle_Package renames org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;

   type AllBinarySpriteRotationAnimation is tagged;
   type AllBinarySpriteRotationAnimation_Access is access all AllBinarySpriteRotationAnimation'Class;
   type AllBinarySpriteRotationAnimation_Access_Array is array (Natural range <>) of AllBinarySpriteRotationAnimation_Access;
   type AllBinarySpriteRotationAnimation_Access_Array_Access is access all AllBinarySpriteRotationAnimation_Access_Array;

   type AllBinarySpriteRotationAnimation is new HackRotationSpriteIndexedAnimation with null record;

   procedure Initialize (This : in out AllBinarySpriteRotationAnimation'Class; sprite : Sprite_Access; image : Image_Access; animationBehavior : AnimationBehavior_Access);
   function Create (sprite : Sprite_Access; image : Image_Access; animationBehavior : AnimationBehavior_Access) return AllBinarySpriteRotationAnimation_Access;
   procedure nextRotation (This : in out AllBinarySpriteRotationAnimation);
   procedure previousRotation (This : in out AllBinarySpriteRotationAnimation);
   procedure setFrameByDirection (This : in out AllBinarySpriteRotationAnimation; direction : Direction_Access);
   procedure setFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle : Angle_Access);
   procedure setFrame (This : in out AllBinarySpriteRotationAnimation; index : Integer);
   procedure adjustFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle : Angle_Access);
   procedure adjustFrame (This : in out AllBinarySpriteRotationAnimation; angle : Short_Integer);

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;


