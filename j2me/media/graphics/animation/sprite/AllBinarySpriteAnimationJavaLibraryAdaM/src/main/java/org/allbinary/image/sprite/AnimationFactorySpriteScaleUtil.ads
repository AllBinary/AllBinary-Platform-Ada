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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.game.layer.SpriteFactory_Package; use org.allbinary.game.layer.SpriteFactory_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package; use org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package; use org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.J2SEMath_Package; use org.allbinary.logic.math.J2SEMath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package is

   package SpriteFactory_Package renames Standard.org.allbinary.game.layer.SpriteFactory_Package;
   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package OpenGLESImageExclusionUtil_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package J2SEMath_Package renames Standard.org.allbinary.logic.math.J2SEMath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ImageScaleUtil_Package renames Standard.org.allbinary.media.image.ImageScaleUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AnimationFactorySpriteScaleUtil is tagged;
   type AnimationFactorySpriteScaleUtil_Access is access all AnimationFactorySpriteScaleUtil'Class;
   type AnimationFactorySpriteScaleUtil_Access_Array is array (Natural range <>) of AnimationFactorySpriteScaleUtil_Access;
   type AnimationFactorySpriteScaleUtil_Access_Array_Access is access all AnimationFactorySpriteScaleUtil_Access_Array;

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
   function createImage (This : in out AnimationFactorySpriteScaleUtil; image : Image_Access; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) return Sprite_Access;
   procedure createImage (This : in out AnimationFactorySpriteScaleUtil; image : Image_Access; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer);

end org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;


