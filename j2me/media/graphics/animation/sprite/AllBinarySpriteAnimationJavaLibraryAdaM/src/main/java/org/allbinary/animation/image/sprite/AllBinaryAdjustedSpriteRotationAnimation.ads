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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package; use org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;

package org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package is

   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;

   type AllBinaryAdjustedSpriteRotationAnimation is tagged;
   type AllBinaryAdjustedSpriteRotationAnimation_Access is access all AllBinaryAdjustedSpriteRotationAnimation'Class;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedSpriteRotationAnimation_Access;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedSpriteRotationAnimation_Access_Array;

   type AllBinaryAdjustedSpriteRotationAnimation is new AllBinarySpriteRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedSpriteRotationAnimation'Class; sprite : Sprite_Access; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access);
   function Create (sprite : Sprite_Access; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryAdjustedSpriteRotationAnimation_Access;
   procedure paintXY (This : in out AllBinaryAdjustedSpriteRotationAnimation; g : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package;


