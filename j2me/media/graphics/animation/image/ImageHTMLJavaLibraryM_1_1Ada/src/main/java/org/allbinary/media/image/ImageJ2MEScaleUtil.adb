--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.CanvasImage_Package; use playn.core.CanvasImage_Package;
with playn.core.CanvasSurface_Package; use playn.core.CanvasSurface_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageJ2MEScaleUtil_Package is

   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package CanvasImage_Package renames Standard.playn.core.CanvasImage_Package;
   package CanvasSurface_Package renames Standard.playn.core.CanvasSurface_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageJ2MEScaleUtil_Access is
   begin
        return ImageJ2MEScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageJ2MEScaleUtil_Access is
      This : constant ImageJ2MEScaleUtil_Access := new ImageJ2MEScaleUtil;
   begin
      ImageJ2MEScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access is
      scaledImages : Image_Access_Array_Access;
      index : Integer;
   begin
        scaledImages := new Image_Access_Array'(0 .. (images'Length) - 1 => null);
        index := images'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            scaledImages (index) := ImageJ2MEScaleUtil'Class (This).scale (images (index), width, height);
        end loop;
        return scaledImages;
   end scaleArray;

   --  throws Exception
   function scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
      originalPlayNImage : Image_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
      originalHTMLImage_2 : PlaynMutableImage_Access;
      scaledImage : Image_Access;
      htmlImage : PlaynMutableImage_Access;
      canvasImage : CanvasImage_Access;
      canvasSurface : CanvasSurface_Access;
   begin
        originalPlayNImage := null;
        if image.isMutable then
            originalHTMLImage_2 := PlaynMutableImage_Access (image);
            originalPlayNImage := Image_Access (originalHTMLImage_2.getImage);
        else
            originalHTMLImage := PlaynImmutableImage_Access (image);
            originalPlayNImage := Image_Access (originalHTMLImage.getImage);
        end if;
        scaledImage := Image_Package.createImageWH (width, height);
        htmlImage := PlaynMutableImage_Access (scaledImage);
        canvasImage := CanvasImage_Access (htmlImage.getImage);
        canvasSurface := htmlImage.getCanvasSurface (canvasImage);
        canvasSurface.drawImage (originalPlayNImage, 0, 0, scaledImage.getWidth, scaledImage.getHeight, 0, 0, image.getWidth, image.getHeight);
        return scaledImage;
   end scale;

   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageJ2MEScaleUtil'Class (This).scaleArray (images => images, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scaleArray;

   procedure scale (This : in out ImageJ2MEScaleUtil; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageJ2MEScaleUtil'Class (This).scale (image_Param => image_Param, width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scale;

begin
   null;
   instance := ImageJ2MEScaleUtil_Package.Create;

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


