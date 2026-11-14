-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;
package org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References is
   type AnimationFactorySpriteScaleUtil_Access is access all org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package.AnimationFactorySpriteScaleUtil'Class;
   type AnimationFactorySpriteScaleUtil_Access_Array is array (Natural range <>) of AnimationFactorySpriteScaleUtil_Access;
   type AnimationFactorySpriteScaleUtil_Access_Array_Access is access all AnimationFactorySpriteScaleUtil_Access_Array;
   type AnimationFactorySpriteScaleUtil_Access_Array_Access_Array is array (Natural range <>) of AnimationFactorySpriteScaleUtil_Access_Array_Access;
   type AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access is access all AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;
   type AnimationFactorySpriteScaleUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationFactorySpriteScaleUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationFactorySpriteScaleUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationFactorySpriteScaleUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationFactorySpriteScaleUtil_Access_Array_Access is (if Value /= null and then Value.all in AnimationFactorySpriteScaleUtil_Access_Array_Object'Class then AnimationFactorySpriteScaleUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Object'Class then AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;

with org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References;
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
limited with org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package_References;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References;
limited with org.allbinary.logic.math.J2SEMath_Package;
with org.allbinary.logic.math.J2SEMath_Package_References;
limited with org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package_References;

package org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package OpenGLESImageExclusionUtil_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
   package J2SEMath_Package renames Standard.org.allbinary.logic.math.J2SEMath_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
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
   subtype OpenGLUtil_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access;
   use type OpenGLUtil_Access;
   subtype OpenGLUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array;
   use type OpenGLUtil_Access_Array;
   subtype OpenGLUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access;
   use type OpenGLUtil_Access_Array_Access;
   subtype OpenGLUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array;
   use type OpenGLUtil_Access_Array_Access_Array;
   subtype OpenGLUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array_Access;
   use type OpenGLUtil_Access_Array_Access_Array_Access;
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
   subtype OpenGLESImageExclusionUtil_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access;
   use type OpenGLESImageExclusionUtil_Access;
   subtype OpenGLESImageExclusionUtil_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array;
   use type OpenGLESImageExclusionUtil_Access_Array;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access;
   use type OpenGLESImageExclusionUtil_Access_Array_Access;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   use type OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   use type OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   subtype J2SEMath_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access;
   use type J2SEMath_Access;
   subtype J2SEMath_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array;
   use type J2SEMath_Access_Array;
   subtype J2SEMath_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access;
   use type J2SEMath_Access_Array_Access;
   subtype J2SEMath_Access_Array_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array;
   use type J2SEMath_Access_Array_Access_Array;
   subtype J2SEMath_Access_Array_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array_Access;
   use type J2SEMath_Access_Array_Access_Array_Access;
   subtype ImageScaleUtil_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access;
   use type ImageScaleUtil_Access;
   subtype ImageScaleUtil_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array;
   use type ImageScaleUtil_Access_Array;
   subtype ImageScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access;
   use type ImageScaleUtil_Access_Array_Access;
   subtype ImageScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array;
   use type ImageScaleUtil_Access_Array_Access_Array;
   subtype ImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array_Access;
   use type ImageScaleUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnimationFactorySpriteScaleUtil_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   function Java_Box (Value : AnimationFactorySpriteScaleUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.Java_Box;
   function Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array (Value : access Java_Object'Class) return AnimationFactorySpriteScaleUtil_Access_Array_Access renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array;
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   subtype AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access is org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References."=";
   function Java_Box (Value : AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.Java_Box;
   function Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationFactorySpriteScaleUtil_Access_Array_Access_Array_Access renames org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package_References.Java_Unbox_AnimationFactorySpriteScaleUtil_Access_Array_Access_Array;

   type AnimationFactorySpriteScaleUtil is new Java_Object with record
      imageCache : ImageCache_Access;
      imageScaleUtil : ImageScaleUtil_Access;
      openGLUtil : OpenGLUtil_Access;
      j2seMath : J2SEMath_Access;
      openGLESImageExclusionUtil : OpenGLESImageExclusionUtil_Access;
   end record;
   instance : AnimationFactorySpriteScaleUtil_Access;

   procedure Initialize (This : in out AnimationFactorySpriteScaleUtil'Class);
   function Create return AnimationFactorySpriteScaleUtil_Access;
   function getInstance return AnimationFactorySpriteScaleUtil_Access;
   function createImage (This : in out AnimationFactorySpriteScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) return Sprite_Access;
   procedure createImage (This : in out AnimationFactorySpriteScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer);

end org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;


