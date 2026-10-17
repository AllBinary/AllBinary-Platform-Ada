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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;
with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;

package org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorUtil_Package;

   type AdjustedSpriteIndexedAnimation is tagged;
   type AdjustedSpriteIndexedAnimation_Access is access all AdjustedSpriteIndexedAnimation'Class;
   type AdjustedSpriteIndexedAnimation_Access_Array is array (Natural range <>) of AdjustedSpriteIndexedAnimation_Access;
   type AdjustedSpriteIndexedAnimation_Access_Array_Access is access all AdjustedSpriteIndexedAnimation_Access_Array;

   type AdjustedSpriteIndexedAnimation is new SpriteIndexedAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AdjustedSpriteIndexedAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedSpriteIndexedAnimation_Access;
   procedure paintFrame (This : in out AdjustedSpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out AdjustedSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paint (This : in out AdjustedSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;


