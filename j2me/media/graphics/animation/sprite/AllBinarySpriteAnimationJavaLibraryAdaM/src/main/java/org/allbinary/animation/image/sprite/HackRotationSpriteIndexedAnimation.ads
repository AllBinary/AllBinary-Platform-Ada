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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;

package org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type HackRotationSpriteIndexedAnimation is tagged;
   type HackRotationSpriteIndexedAnimation_Access is access all HackRotationSpriteIndexedAnimation'Class;
   type HackRotationSpriteIndexedAnimation_Access_Array is array (Natural range <>) of HackRotationSpriteIndexedAnimation_Access;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access is access all HackRotationSpriteIndexedAnimation_Access_Array;

   type HackRotationSpriteIndexedAnimation is new RotationAnimation with record
      sprite : Sprite_Access;
      image : Image_Access;
   end record;

   procedure Initialize (This : in out HackRotationSpriteIndexedAnimation'Class; sprite : Sprite_Access; image : Image_Access; angleInfo : AngleInfo_Access; animationBehavior : AnimationBehavior_Access);
   function Create (sprite : Sprite_Access; image : Image_Access; angleInfo : AngleInfo_Access; animationBehavior : AnimationBehavior_Access) return HackRotationSpriteIndexedAnimation_Access;
   function getAnimationSize (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure getAnimationSize (This : in out HackRotationSpriteIndexedAnimation);
   procedure paintFrame (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access; x : Integer; y : Integer);
   procedure paint (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access);
   procedure nextRotation (This : in out HackRotationSpriteIndexedAnimation);
   procedure previousRotation (This : in out HackRotationSpriteIndexedAnimation);
   function getSize (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure getSize (This : in out HackRotationSpriteIndexedAnimation);
   procedure setFrame (This : in out HackRotationSpriteIndexedAnimation; frame : Integer);
   function getFrame (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure getFrame (This : in out HackRotationSpriteIndexedAnimation);
   procedure setSequence (This : in out HackRotationSpriteIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out HackRotationSpriteIndexedAnimation) return Integer_Array_Access;
   procedure getSequence (This : in out HackRotationSpriteIndexedAnimation);

end org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;


