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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.microemu.device.playn.PlaynImage_Package; use org.microemu.device.playn.PlaynImage_Package;
with playn.core.Callback_Package; use playn.core.Callback_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;

package body org.allbinary.media.image.ImageModifierUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PlaynImage_Package renames Standard.org.microemu.device.playn.PlaynImage_Package;
   package Callback_Package renames Standard.playn.core.Callback_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   procedure Initialize_Fields (This : in out ImageModifierUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.resourceCallbackStrings := ResourceCallbackStrings_Package.getInstance;
      This.playnUtil := HTMLPlaynUtil_Package.getInstance;
      This.alphaArray := null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageModifierUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageModifierUtil_Access is
      This : constant ImageModifierUtil_Access := new ImageModifierUtil;
   begin
      ImageModifierUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstanceOrCreate return ImageModifierUtil_Access is
   begin
        return ImageModifierUtil_Package.Create;
   end getInstanceOrCreate;

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Integer) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      alphaF : Float;
      alphaFloat : Float;
   begin
        alphaF := Float (alpha);
        alphaFloat := (alphaF) / (255.0);
        ImageModifierUtil'Class (This).setAlphaF (originalImage, image, imageIndex, alphaFloat);
   end setAlpha;

   procedure setAlphaF (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Float) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        if This.alphaArray (imageIndex) then
            This.alphaArray (imageIndex) := False;
            ImageModifierUtil'Class (This).setAlpha2 (originalImage, image, imageIndex, alpha);
        end if;
   end setAlphaF;

   procedure setAlpha2 (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alpha : Float) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      htmlImage : PlaynImage_Access;
      canvasImage : ImageImpl_Access;
      originalPlaynImage : CoreImage_Access;
      canvas : Canvas_Access;
   begin
        htmlImage := PlaynImage_Access (image);
        canvasImage := ImageImpl_Access (htmlImage.getImage);
        originalPlaynImage := CoreImage_Access ((PlaynImage_Access (originalImage)).getImage);
        canvas := This.playnUtil.getCanvas (canvasImage);
        canvas.clear;
        canvas.setAlpha (alpha);
        canvas.draw (originalPlaynImage, 0, 0);
   end setAlpha2;

   procedure setAlpha3 (This : in out ImageModifierUtil; image_Param : access Image_Package.Image'Class; alpha : Float) is
      image : constant Image_Access := Image_Access (image_Param);
      alphaF : Float;
      alphaFloat : Float;
      htmlImage : PlaynImage_Access;
      canvasImage : ImageImpl_Access;
      canvas : Canvas_Access;
   begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        htmlImage := PlaynImage_Access (image);
        canvasImage := ImageImpl_Access (htmlImage.getImage);
        canvas := This.playnUtil.getCanvas (canvasImage);
        canvas.setAlpha (alphaFloat);
   end setAlpha3;

   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access is
      size : Integer;
      imageArray : Image_Access_Array_Access;
      index : Integer;
   begin
        size := originalImageArray'Length;
        This.alphaArray := new Boolean_Array'(0 .. (size) - 1 => False);
        imageArray := new Image_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            imageArray (index) := originalImageArray (index);
            ImageModifierUtil'Class (This).handleImage (imageArray, index, originalImageArray (index));
        end loop;
        return imageArray;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      image3 : CoreImage_Access;
      callback : Callback_Access;
   begin
        image3 := CoreImage_Access ((PlaynImage_Access (image)).getImage);
        if (image3) /= (null) then
            if ((image3.isReady) or else (((image3.width) + (image3.height)) <= (0))) or else ((image.getName) = (This.resourceCallbackStrings.FROM_DATA)) then
                ImageModifierUtil'Class (This).copy (imageArray, index, image, image3);
            else
                callback := Callback_Package.Create  --  Java anonymous class body: implement it as a named type
--                      
--     procedure onSuccess (This : in out ; resource_Param : access Java_Object'Class) is
--        resource : constant Java_Object_Access := Java_Object_Access (resource_Param);
--        logUtil : LogUtil_Access;
--     begin
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.putF (Java_Image (This.resourceCallbackStrings.DONE) & image.getName, ImageModifierUtil_Access'(This'Unchecked_Access), This.resourceCallbackStrings.HANDLE_IMAGE);
--                          ImageModifierUtil'Class (This).copy (imageArray, index, image, image3);
--     end onSuccess;
--                      
--     procedure onFailure (This : in out ; e_Param : access Java_Throwable_Object'Class) is
--        e : constant Java_Throwable := Java_Throwable (e_Param);
--        logUtil : LogUtil_Access;
--     begin
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (This.resourceCallbackStrings.ERROR).append (image.getName).toString, ImageModifierUtil_Access'(This'Unchecked_Access), This.resourceCallbackStrings.HANDLE_IMAGE, e);
--     end onFailure;
;
                image3.addCallback (callback);
            end if;
        else
            This.logUtil.putF ((This.resourceCallbackStrings.NULL_Id) + (image.isMutable), ImageModifierUtil_Access'(This'Unchecked_Access), This.resourceCallbackStrings.HANDLE_IMAGE);
        end if;
   end handleImage;

   procedure copy (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class; image3_Param : access CoreImage_Package.CoreImage'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      image3 : constant CoreImage_Access := CoreImage_Access (image3_Param);
      image2 : Image_Access;
      graphics : Graphics_Access;
   begin
        begin
            image2 := Image_Package.createImageWH (Integer (image3.width), Integer (image3.height));
            graphics := image2.getGraphics;
            graphics.drawImage (image, 0, 0, Anchor_Package.TOP_LEFT);
            imageArray (index) := image2;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.putF ((This.commonStrings.EXCEPTION_LABEL) + (This.resourceCallbackStrings.DONE), ImageModifierUtil_Access'(This'Unchecked_Access), This.resourceCallbackStrings.HANDLE_IMAGE);
                end;
        end;
   end copy;

   procedure reset (This : in out ImageModifierUtil) is
      size : Integer;
      index : Integer;
   begin
        size := This.alphaArray'Length;
        for index in 0 .. (size) - 1 loop
            This.alphaArray (index) := True;
        end loop;
   end reset;

   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access_Array_Access := ImageModifierUtil'Class (This).getImageArray (originalImageArray => originalImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

end org.allbinary.media.image.ImageModifierUtil_Package;


