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

limited with org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;
package org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References is
   type AllBinarySpriteRotationAnimation_Access is access all org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package.AllBinarySpriteRotationAnimation'Class;
   type AllBinarySpriteRotationAnimation_Access_Array is array (Natural range <>) of AllBinarySpriteRotationAnimation_Access;
   type AllBinarySpriteRotationAnimation_Access_Array_Access is access all AllBinarySpriteRotationAnimation_Access_Array;
   type AllBinarySpriteRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinarySpriteRotationAnimation_Access_Array_Access;
   type AllBinarySpriteRotationAnimation_Access_Array_Access_Array_Access is access all AllBinarySpriteRotationAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References;

with org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.game.Sprite_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package; use org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;

package org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package Reference_Types is
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
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinarySpriteRotationAnimation_Access is org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References.AllBinarySpriteRotationAnimation_Access;
   function "=" (Left, Right : AllBinarySpriteRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References."=";
   subtype AllBinarySpriteRotationAnimation_Access_Array is org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References.AllBinarySpriteRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinarySpriteRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References."=";
   subtype AllBinarySpriteRotationAnimation_Access_Array_Access is org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References.AllBinarySpriteRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinarySpriteRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References."=";
   subtype AllBinarySpriteRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References.AllBinarySpriteRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinarySpriteRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References."=";
   subtype AllBinarySpriteRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References.AllBinarySpriteRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinarySpriteRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package_References."=";

   type AllBinarySpriteRotationAnimation is new HackRotationSpriteIndexedAnimation with null record;

   procedure Initialize (This : in out AllBinarySpriteRotationAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinarySpriteRotationAnimation_Access;
   procedure nextRotation (This : in out AllBinarySpriteRotationAnimation);
   procedure previousRotation (This : in out AllBinarySpriteRotationAnimation);
   procedure setFrameByDirection (This : in out AllBinarySpriteRotationAnimation; direction_Param : access Direction_Package.Direction'Class);
   procedure setFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure setFrame (This : in out AllBinarySpriteRotationAnimation; index : Integer);
   procedure adjustFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle_Package.Angle'Class);
   procedure adjustFrame (This : in out AllBinarySpriteRotationAnimation; angle : Short_Integer);

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;


