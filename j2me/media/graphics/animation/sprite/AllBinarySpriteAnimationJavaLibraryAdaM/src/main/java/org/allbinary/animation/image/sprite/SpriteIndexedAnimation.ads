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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type SpriteIndexedAnimation is tagged;
   type SpriteIndexedAnimation_Access is access all SpriteIndexedAnimation'Class;
   type SpriteIndexedAnimation_Access_Array is array (Natural range <>) of SpriteIndexedAnimation_Access;
   type SpriteIndexedAnimation_Access_Array_Access is access all SpriteIndexedAnimation_Access_Array;

   type SpriteIndexedAnimation is new IndexedAnimation and ColorCompositeInterface with record
      sprite : Sprite_Access;
      image : Image_Access;
      basicColorArray : BasicColor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SpriteIndexedAnimation'Class; sprite : Sprite_Access; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; animationBehavior : AnimationBehavior_Access);
   function Create (sprite : Sprite_Access; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return SpriteIndexedAnimation_Access;
   function getAnimationSize (This : in out SpriteIndexedAnimation) return Integer;
   procedure setBasicColorP (This : in out SpriteIndexedAnimation; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out SpriteIndexedAnimation) return BasicColor_Access;
   procedure paintFrame (This : in out SpriteIndexedAnimation; graphics : Graphics_Access; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out SpriteIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure paint (This : in out SpriteIndexedAnimation; graphics : Graphics_Access);
   procedure nextFrame (This : in out SpriteIndexedAnimation);
   procedure previousFrame (This : in out SpriteIndexedAnimation);
   function getSize (This : in out SpriteIndexedAnimation) return Integer;
   procedure setFrame (This : in out SpriteIndexedAnimation; frame : Integer);
   function getFrame (This : in out SpriteIndexedAnimation) return Integer;
   function isLastFrame (This : in out SpriteIndexedAnimation) return Boolean;
   function getLastFrame (This : in out SpriteIndexedAnimation) return Integer;
   procedure setSequence (This : in out SpriteIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out SpriteIndexedAnimation) return Integer_Array_Access;
   procedure close (This : in out SpriteIndexedAnimation);
   procedure finalize (This : in out SpriteIndexedAnimation);

end org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;


