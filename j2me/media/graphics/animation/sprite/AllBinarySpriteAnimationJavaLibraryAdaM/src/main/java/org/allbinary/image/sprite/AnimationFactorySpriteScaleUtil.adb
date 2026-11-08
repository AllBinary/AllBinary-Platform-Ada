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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.game.Sprite_Package_References;
with org.allbinary.game.layer.SpriteFactory_Package; use org.allbinary.game.layer.SpriteFactory_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package; use org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package_References;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package; use org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.J2SEMath_Package; use org.allbinary.logic.math.J2SEMath_Package;
with org.allbinary.logic.math.J2SEMath_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageScaleUtil_Package; use org.allbinary.media.image.ImageScaleUtil_Package;
with org.allbinary.media.image.ImageScaleUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.game.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package is

   package SpriteFactory_Package renames Standard.org.allbinary.game.layer.SpriteFactory_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Sprite_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access;
   function "=" (Left, Right : Sprite_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array;
   function "=" (Left, Right : Sprite_Access_Array) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access;
   function "=" (Left, Right : Sprite_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array;
   function "=" (Left, Right : Sprite_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sprite_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype OpenGLUtil_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access;
   function "=" (Left, Right : OpenGLUtil_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array;
   function "=" (Left, Right : OpenGLUtil_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype OpenGLUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLUtil_Package_References.OpenGLUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLUtil_Package_References."=";
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype J2SEMath_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access;
   function "=" (Left, Right : J2SEMath_Access) return Boolean renames org.allbinary.logic.math.J2SEMath_Package_References."=";
   subtype J2SEMath_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array;
   function "=" (Left, Right : J2SEMath_Access_Array) return Boolean renames org.allbinary.logic.math.J2SEMath_Package_References."=";
   subtype J2SEMath_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access;
   function "=" (Left, Right : J2SEMath_Access_Array_Access) return Boolean renames org.allbinary.logic.math.J2SEMath_Package_References."=";
   subtype J2SEMath_Access_Array_Access_Array is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array;
   function "=" (Left, Right : J2SEMath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.J2SEMath_Package_References."=";
   subtype J2SEMath_Access_Array_Access_Array_Access is org.allbinary.logic.math.J2SEMath_Package_References.J2SEMath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2SEMath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.J2SEMath_Package_References."=";
   subtype ImageScaleUtil_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access;
   function "=" (Left, Right : ImageScaleUtil_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array;
   function "=" (Left, Right : ImageScaleUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AnimationFactorySpriteScaleUtil'Class) is
   begin
      null;
      This.imageCache := ImageCacheFactory_Package.getInstance;
      This.imageScaleUtil := ImageScaleUtil_Package.getInstance;
      This.openGLUtil := OpenGLUtil_Package.getInstance;
      This.j2seMath := J2SEMath_Package.getInstance;
      This.openGLESImageExclusionUtil := OpenGLESImageExclusionUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationFactorySpriteScaleUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationFactorySpriteScaleUtil_Access is
      This : constant AnimationFactorySpriteScaleUtil_Access := new AnimationFactorySpriteScaleUtil;
   begin
      AnimationFactorySpriteScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationFactorySpriteScaleUtil_Access is
   begin
        return AnimationFactorySpriteScaleUtil_Access (AnimationFactorySpriteScaleUtil_Package.instance);
   end getInstance;

   --  throws Exception
   function createImage (This : in out AnimationFactorySpriteScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) return Sprite_Access is
      image : constant Image_Access := Image_Access (image_Param);
      spriteFactory : SpriteFactory_Access;
      sprite : Sprite_Access;
      scaledImage : Image_Access;
      scaleX : Float;
      scaleY : Float;
      width2 : Integer;
      height2 : Integer;
      multiplesOf16Width : Integer;
      by16Width : Integer;
      multiplesOf16Height : Integer;
      by16Height : Integer;
   begin
        spriteFactory := SpriteFactory_Package.getInstance;
        sprite := null;
        scaledImage := null;
        if ((scaleWidth) /= (0)) and then ((scaleHeight) /= (0)) then
            scaleX := ((Float (scaleWidth))) / ((Float (width)));
            scaleY := ((Float (scaleHeight))) / ((Float (height)));
            if ((((scaleX) = (1.0)) and then ((scaleY) = (1.0)))) or else ((((scaleX) = (0.0)) or else ((scaleY) = (0.0)))) then
                scaledImage := This.openGLUtil.addImage (image);
                sprite := spriteFactory.createSprite (scaledImage, width, height);
            else
                if This.openGLESImageExclusionUtil.isCustomScaling (image) then
                    width2 := This.j2seMath.round ((Float ((scaleWidth))) - (0.5));
                    height2 := This.j2seMath.round ((Float ((scaleHeight))) - (0.5));
                    multiplesOf16Width := (width2) / (16);
                    by16Width := (multiplesOf16Width) * (16);
                    scaleX := ((Float (by16Width))) / (Float (width));
                    multiplesOf16Height := (height2) / (16);
                    by16Height := (multiplesOf16Height) * (16);
                    scaleY := ((Float (by16Height))) / (Float (height));
                    if (scaleWidth) < (width) then
                        scaleX := (scaleX) * (2.35);
                    end if;
                    if (scaleHeight) < (height) then
                        scaleY := (scaleY) * (2.35);
                    end if;
                end if;
                scaledImage := This.imageScaleUtil.createImage2 (This.imageCache, image, scaleX, 1.0, scaleY, 1.0, True);
                sprite := spriteFactory.createSprite (scaledImage, Integer (((Float (width)) * (scaleX))), Integer (((Float (height)) * (scaleY))));
            end if;
        else
            scaledImage := This.openGLUtil.addImage (image);
            sprite := spriteFactory.createSprite (scaledImage, width, height);
        end if;
        return sprite;
   end createImage;

   procedure createImage (This : in out AnimationFactorySpriteScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) is
      Java_Result : constant Sprite_Access := AnimationFactorySpriteScaleUtil'Class (This).createImage (image_Param => image_Param, width => width, height => height, scaleWidth => scaleWidth, scaleHeight => scaleHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

begin
   null;
   instance := AnimationFactorySpriteScaleUtil_Package.Create;

end org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil_Package;


