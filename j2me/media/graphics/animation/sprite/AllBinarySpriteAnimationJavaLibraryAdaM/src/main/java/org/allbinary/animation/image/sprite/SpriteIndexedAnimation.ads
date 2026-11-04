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

limited with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package;
package org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References is
   type SpriteIndexedAnimation_Access is access all org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package.SpriteIndexedAnimation'Class;
   type SpriteIndexedAnimation_Access_Array is array (Natural range <>) of SpriteIndexedAnimation_Access;
   type SpriteIndexedAnimation_Access_Array_Access is access all SpriteIndexedAnimation_Access_Array;
   type SpriteIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of SpriteIndexedAnimation_Access_Array_Access;
   type SpriteIndexedAnimation_Access_Array_Access_Array_Access is access all SpriteIndexedAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References;

with org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.game.Sprite_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;

package org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype Sprite_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access;
   use type Sprite_Access;
   subtype Sprite_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array;
   use type Sprite_Access_Array;
   subtype Sprite_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access;
   use type Sprite_Access_Array_Access;
   subtype Sprite_Access_Array_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array;
   use type Sprite_Access_Array_Access_Array;
   subtype Sprite_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array_Access;
   use type Sprite_Access_Array_Access_Array_Access;
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpriteIndexedAnimation_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References.SpriteIndexedAnimation_Access;
   function "=" (Left, Right : SpriteIndexedAnimation_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References."=";
   subtype SpriteIndexedAnimation_Access_Array is org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References.SpriteIndexedAnimation_Access_Array;
   function "=" (Left, Right : SpriteIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References."=";
   subtype SpriteIndexedAnimation_Access_Array_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References.SpriteIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : SpriteIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References."=";
   subtype SpriteIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References.SpriteIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : SpriteIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References."=";
   subtype SpriteIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References.SpriteIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpriteIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.SpriteIndexedAnimation_Package_References."=";

   type SpriteIndexedAnimation is new IndexedAnimation and ColorCompositeInterface with record
      sprite : Sprite_Access;
      image : Image_Access;
      basicColorArray : BasicColor_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SpriteIndexedAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SpriteIndexedAnimation_Access;
   function getAnimationSize (This : in out SpriteIndexedAnimation) return Integer;
   procedure setBasicColorP (This : in out SpriteIndexedAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out SpriteIndexedAnimation) return BasicColor_Access;
   procedure paintFrame (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paint (This : in out SpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class);
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


