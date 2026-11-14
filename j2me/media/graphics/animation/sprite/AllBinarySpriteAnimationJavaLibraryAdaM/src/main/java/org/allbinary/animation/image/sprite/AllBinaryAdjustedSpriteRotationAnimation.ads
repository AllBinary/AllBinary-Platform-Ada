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

with AllBinary_Java;
limited with org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package;
package org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References is
   type AllBinaryAdjustedSpriteRotationAnimation_Access is access all org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package.AllBinaryAdjustedSpriteRotationAnimation'Class;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedSpriteRotationAnimation_Access;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedSpriteRotationAnimation_Access_Array;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access is access all AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array;
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Object'Class then AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Object'Class then AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References;

with org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References;
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
with org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package; use org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;

package org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryAdjustedSpriteRotationAnimation_Access is org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.AllBinaryAdjustedSpriteRotationAnimation_Access;
   function "=" (Left, Right : AllBinaryAdjustedSpriteRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedSpriteRotationAnimation_Access_Array is org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.AllBinaryAdjustedSpriteRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedSpriteRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access is org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array;
   subtype AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedSpriteRotationAnimation_Access_Array_Access_Array;

   type AllBinaryAdjustedSpriteRotationAnimation is new AllBinarySpriteRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedSpriteRotationAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access;
   procedure paintXY (This : in out AllBinaryAdjustedSpriteRotationAnimation; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package;


