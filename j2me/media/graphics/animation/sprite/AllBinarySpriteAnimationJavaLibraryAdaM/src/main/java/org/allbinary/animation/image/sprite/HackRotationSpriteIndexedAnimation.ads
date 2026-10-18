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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;

package org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;

   type HackRotationSpriteIndexedAnimation is tagged;
   type HackRotationSpriteIndexedAnimation_Access is access all HackRotationSpriteIndexedAnimation'Class;
   type HackRotationSpriteIndexedAnimation_Access_Array is array (Natural range <>) of HackRotationSpriteIndexedAnimation_Access;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access is access all HackRotationSpriteIndexedAnimation_Access_Array;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of HackRotationSpriteIndexedAnimation_Access_Array_Access;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access_Array_Access is access all HackRotationSpriteIndexedAnimation_Access_Array_Access_Array;

   type HackRotationSpriteIndexedAnimation is new RotationAnimation with record
      sprite : Sprite_Access;
      image : Image_Access;
   end record;

   procedure Initialize (This : in out HackRotationSpriteIndexedAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return HackRotationSpriteIndexedAnimation_Access;
   function getAnimationSize (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure paintFrame (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paint (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class);
   procedure nextRotation (This : in out HackRotationSpriteIndexedAnimation);
   procedure previousRotation (This : in out HackRotationSpriteIndexedAnimation);
   function getSize (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure setFrame (This : in out HackRotationSpriteIndexedAnimation; frame : Integer);
   function getFrame (This : in out HackRotationSpriteIndexedAnimation) return Integer;
   procedure setSequence (This : in out HackRotationSpriteIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out HackRotationSpriteIndexedAnimation) return Integer_Array_Access;

end org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;


