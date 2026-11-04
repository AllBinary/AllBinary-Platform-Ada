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

limited with org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;
package org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References is
   type HackRotationSpriteIndexedAnimation_Access is access all org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package.HackRotationSpriteIndexedAnimation'Class;
   type HackRotationSpriteIndexedAnimation_Access_Array is array (Natural range <>) of HackRotationSpriteIndexedAnimation_Access;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access is access all HackRotationSpriteIndexedAnimation_Access_Array;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of HackRotationSpriteIndexedAnimation_Access_Array_Access;
   type HackRotationSpriteIndexedAnimation_Access_Array_Access_Array_Access is access all HackRotationSpriteIndexedAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References;

with org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References;
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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;

package org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
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
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HackRotationSpriteIndexedAnimation_Access is org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References.HackRotationSpriteIndexedAnimation_Access;
   function "=" (Left, Right : HackRotationSpriteIndexedAnimation_Access) return Boolean renames org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References."=";
   subtype HackRotationSpriteIndexedAnimation_Access_Array is org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References.HackRotationSpriteIndexedAnimation_Access_Array;
   function "=" (Left, Right : HackRotationSpriteIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References."=";
   subtype HackRotationSpriteIndexedAnimation_Access_Array_Access is org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References.HackRotationSpriteIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : HackRotationSpriteIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References."=";
   subtype HackRotationSpriteIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References.HackRotationSpriteIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HackRotationSpriteIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References."=";
   subtype HackRotationSpriteIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References.HackRotationSpriteIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HackRotationSpriteIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package_References."=";

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


