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
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package; use org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package; use org.allbinary.media.image.ImageJ2MEScaleUtil_Package;
with org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.image.AnimationFactoryImageScaleUtil_Package is

   package AnimationFactoryInitializationVisitor_Package renames Standard.org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
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
   subtype BaseImageAnimationFactory_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   subtype ImageJ2MEScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References.ImageJ2MEScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageJ2MEScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2MEScaleUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AnimationFactoryImageScaleUtil'Class) is
   begin
      null;
      This.imageScaleUtil := ImageJ2MEScaleUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AnimationFactoryImageScaleUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnimationFactoryImageScaleUtil_Access is
      This : constant AnimationFactoryImageScaleUtil_Access := new AnimationFactoryImageScaleUtil;
   begin
      AnimationFactoryImageScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnimationFactoryImageScaleUtil_Access is
   begin
        return AnimationFactoryImageScaleUtil_Access (AnimationFactoryImageScaleUtil_Package.instance);
   end getInstance;

   --  throws Exception
   function createImage (This : in out AnimationFactoryImageScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
      scaledImage : Image_Access;
      scaleX : Float;
      scaleY : Float;
      scaledWidth : Integer;
      scaledHeight : Integer;
   begin
        scaledImage := null;
        if ((scaleWidth) /= (0)) and then ((scaleHeight) /= (0)) then
            scaleX := ((Float (scaleWidth))) / ((Float (width)));
            scaleY := ((Float (scaleHeight))) / ((Float (height)));
            if ((((scaleX) = (1.0)) and then ((scaleY) = (1.0)))) or else ((((scaleX) = (0.0)) or else ((scaleY) = (0.0)))) then
                scaledImage := image;
            else
                scaledWidth := Integer (((scaleX) * (Float (width))));
                scaledHeight := Integer (((scaleY) * (Float (height))));
                scaledImage := This.imageScaleUtil.scale (image, scaledWidth, scaledHeight);
            end if;
        else
            scaledImage := image;
        end if;
        return scaledImage;
   end createImage;

   --  throws Exception
   procedure processAdjust (This : in out AnimationFactoryImageScaleUtil; baseImageAnimationFactory_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class) is
      baseImageAnimationFactory : constant BaseImageAnimationFactory_Access := BaseImageAnimationFactory_Access (baseImageAnimationFactory_Param);
      scaleProperties : ScaleProperties_Access;
      animationFactoryInitializationVisitor : AnimationFactoryInitializationVisitor_Access;
      scaleX : Float;
      scaleY : Float;
   begin
        scaleProperties := baseImageAnimationFactory.getScalePropertiesP;
        if ((scaleProperties.scaleWidth) /= (0)) and then ((scaleProperties.scaleHeight) /= (0)) then
            animationFactoryInitializationVisitor := baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP;
            scaleX := ((Float (scaleProperties.scaleWidth))) / ((Float (animationFactoryInitializationVisitor.width)));
            scaleY := ((Float (scaleProperties.scaleHeight))) / ((Float (animationFactoryInitializationVisitor.height)));
            if ((((scaleX) = (1.0)) and then ((scaleY) = (1.0)))) or else ((((scaleX) = (0.0)) or else ((scaleY) = (0.0)))) then
                null;
            else
                animationFactoryInitializationVisitor.dx := Integer (((animationFactoryInitializationVisitor.originalDx) * (scaleX)));
                animationFactoryInitializationVisitor.dy := Integer (((animationFactoryInitializationVisitor.originalDy) * (scaleY)));
            end if;
        else
            null;
        end if;
   end processAdjust;

   procedure createImage (This : in out AnimationFactoryImageScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; scaleWidth : Integer; scaleHeight : Integer) is
      Java_Result : constant Image_Access := AnimationFactoryImageScaleUtil'Class (This).createImage (image_Param => image_Param, width => width, height => height, scaleWidth => scaleWidth, scaleHeight => scaleHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

begin
   null;
   instance := AnimationFactoryImageScaleUtil_Package.Create;

end org.allbinary.image.AnimationFactoryImageScaleUtil_Package;


