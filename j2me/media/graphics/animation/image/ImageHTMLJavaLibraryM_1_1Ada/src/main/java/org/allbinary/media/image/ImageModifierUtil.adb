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


package body org.allbinary.media.image.ImageModifierUtil_Package is

   procedure Initialize_Fields (This : in out ImageModifierUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.resourceCallbackStrings := ResourceCallbackStrings_Package.getInstance;
      This.alphaArray := null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageModifierUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageModifierUtil_Access is
      This : constant ImageModifierUtil_Access := new ImageModifierUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstanceOrCreate return ImageModifierUtil_Access is
   begin
        return ImageModifierUtil_Package.Create;
   end getInstanceOrCreate;

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access) is
   begin
        null;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage : Image_Access; image : Image_Access; imageIndex : Integer; basicColor : BasicColor_Access) is
   begin
        null;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; originalImage : Image_Access; image : Image_Access; imageIndex : Integer; alpha : Integer) is
      alphaF : Float;
      alphaFloat : Float;
   begin
        alphaF := Float (alpha);
        alphaFloat := (alphaF) / (255.0);
        This.setAlphaF (originalImage, image, imageIndex, alphaFloat);
   end setAlpha;

   procedure setAlphaF (This : in out ImageModifierUtil; originalImage : Image_Access; image : Image_Access; imageIndex : Integer; alpha : Float) is
   begin
        if This.alphaArray (imageIndex) then
            This.alphaArray (imageIndex) := False;
            This.setAlpha2 (originalImage, image, imageIndex, alpha);
        end if;
   end setAlphaF;

   procedure setAlpha2 (This : in out ImageModifierUtil; originalImage : Image_Access; image : Image_Access; imageIndex : Integer; alpha : Float) is
      htmlImage : PlaynImage_Access;
      canvasImage : CanvasImage_Access;
      originalPlaynImage : Image_Access;
      canvas : Canvas_Access;
   begin
        htmlImage := PlaynImage_Access (image);
        canvasImage := CanvasImage_Access (htmlImage.getImage);
        originalPlaynImage := Image_Access ((PlaynImage_Access (originalImage)).getImage);
        canvas := canvasImage.canvas;
        canvas.clear;
        canvas.setAlpha (alpha);
        canvas.drawImage (originalPlaynImage, 0, 0);
   end setAlpha2;

   procedure setAlpha3 (This : in out ImageModifierUtil; image : Image_Access; alpha : Float) is
      alphaF : Float;
      alphaFloat : Float;
      htmlImage : PlaynImage_Access;
      canvasImage : CanvasImage_Access;
      canvas : Canvas_Access;
   begin
        alphaF := alpha;
        alphaFloat := (alphaF) / (255.0);
        htmlImage := PlaynImage_Access (image);
        canvasImage := CanvasImage_Access (htmlImage.getImage);
        canvas := canvasImage.canvas;
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
            This.handleImage (imageArray, index, originalImageArray (index));
        end loop;
        return imageArray;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image : Image_Access) is
      image3 : Image_Access;
      callback : Callback_Access;
   begin
        image3 := Image_Access ((PlaynImage_Access (image)).getImage);
        if (image3) /= (null) then
            if ((image3.isReady) or else (((image3.width) + (image3.height)) <= (0))) or else ((image.getName) = (This.resourceCallbackStrings.FROM_DATA)) then
                This.copy (imageArray, index, image, image3);
            else
                callback := Callback_Package.Create  --  Java anonymous class body: implement it as a named type
--                      
--     procedure onSuccess (This : in out ; resource : Java_Object_Access) is
--        logUtil : LogUtil_Access;
--     begin
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.putF (Java_Image (This.resourceCallbackStrings.DONE) & image.getName, This'Unchecked_Access, This.resourceCallbackStrings.HANDLE_IMAGE);
--                          This.copy (imageArray, index, image, image3);
--     end onSuccess;
--                      
--     procedure onFailure (This : in out ; e : Ada.Exceptions.Exception_Occurrence) is
--        logUtil : LogUtil_Access;
--     begin
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (This.resourceCallbackStrings.ERROR).append (image.getName).toString, This'Unchecked_Access, This.resourceCallbackStrings.HANDLE_IMAGE);
--     end onFailure;
;
                image3.addCallback (callback);
            end if;
        else
            This.logUtil.putF ((This.resourceCallbackStrings.NULL_Id) + (image.isMutable), This'Unchecked_Access, This.resourceCallbackStrings.HANDLE_IMAGE);
        end if;
   end handleImage;

   procedure copy (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image : Image_Access; image3 : Image_Access) is
      image2 : Image_Access;
      graphics : Graphics_Access;
   begin
        begin
            image2 := Image_Package.createImage (image3.width, image3.height);
            graphics := image2.getGraphics;
            graphics.drawImage (image, 0, 0, Anchor_Package.TOP_LEFT);
            imageArray (index) := image2;
        exception
            when e : others =>
            This.logUtil.putF ((This.commonStrings.EXCEPTION_LABEL) + (This.resourceCallbackStrings.DONE), This'Unchecked_Access, This.resourceCallbackStrings.HANDLE_IMAGE);
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

   procedure getInstanceOrCreate is
      Java_Result : constant ImageModifierUtil_Access := getInstanceOrCreate;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceOrCreate;

   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access_Array_Access := ImageModifierUtil'Class (This).getImageArray (originalImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

end org.allbinary.media.image.ImageModifierUtil_Package;


