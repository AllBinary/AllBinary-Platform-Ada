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


package body org.allbinary.media.image.ImageUtil_Package is

   procedure Initialize_Fields (This : in out ImageUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.IIOIMAGE_POOL_NAME := To_Unbounded_String ("IIOIMAGE_POOL_NAME");
      This.CREATE_BUFFERED_IMAGE := To_Unbounded_String ("createBufferedImage");
   end Initialize_Fields;


   function getInstance return ImageUtil_Access is
   begin
        return ImageUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageUtil'Class) is
   begin
      Initialize_Fields (This);
        begin
            This.logUtil.putF (This.commonStrings.START, ImageUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return ImageUtil_Access is
      This : constant ImageUtil_Access := new ImageUtil;
   begin
      ImageUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function create (This : in out ImageUtil; width : Integer; height : Integer) return Image_Access is
      display : Display_Access;
   begin
        display := BareMain_Package.shell.getDisplay;
        return Image_Package.Create (display, width, height);
   end create;

   --  throws Exception
   function createBufferedImage (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Integer; scale : Boolean) return Image_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : Image_Access_Array_Access;
      bufferedImage : Image_Access;
      imageData : ImageData_Access;
      newWidth : Integer;
      newHeight : Integer;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new Image_Access_Array'(0 .. (size) - 1 => null);
        bufferedImage := null;
        imageData := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            imageData := bufferedImage.getImageData;
            newWidth := Integer ((((imageData.width) * (percent)) / (100)));
            newHeight := Integer ((((imageData.height) * (percent)) / (100)));
            scaledBufferedImageArray (index) := This.createBufferedImage5 (bufferedImage, newWidth, newHeight, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImage;

   --  throws Exception
   function createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Float; scale : Boolean) return Image_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : Image_Access_Array_Access;
      bufferedImage : Image_Access;
      imageData : ImageData_Access;
      newWidth : Integer;
      newHeight : Integer;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new Image_Access_Array'(0 .. (size) - 1 => null);
        bufferedImage := null;
        imageData := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            imageData := bufferedImage.getImageData;
            newWidth := Integer (((imageData.width) * (percent)));
            newHeight := Integer (((imageData.height) * (percent)));
            scaledBufferedImageArray (index) := This.createBufferedImage5 (bufferedImage, newWidth, newHeight, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImage2;

   --  throws Exception
   function createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) return Image_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : Image_Access_Array_Access;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new Image_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            scaledBufferedImageArray (index) := This.createBufferedImage5 (bufferedImageArray (index), width, height, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImage3;

   --  throws Exception
   function createBufferedImage4 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
   begin
        return This.createBufferedImage5 (bufferedImage, newWidth, newHeight, True);
   end createBufferedImage4;

   --  throws Exception
   function createBufferedImage5 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
   begin
        return This.createBufferedImage6 (bufferedImage, newWidth, newHeight, scale, False);
   end createBufferedImage5;

   --  throws Exception
   function createBufferedImage6 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      imageData : ImageData_Access;
      width : Float;
      height : Float;
      d_newWidth : Float;
      d_newHeight : Float;
      widthRatio : Float;
      heightRatio : Float;
      ratioX : Float;
      ratioY : Float;
      dx : Float;
      dy : Float;
      newBufferedImage : Image_Access;
      gc : GC_Access;
      affineTransform : Transform_Access;
   begin
        imageData := bufferedImage.getImageData;
        width := imageData.width;
        height := imageData.height;
        d_newWidth := Float (newWidth);
        d_newHeight := Float (newHeight);
        widthRatio := (d_newWidth) / (width);
        heightRatio := (d_newHeight) / (height);
        ratioX := 1.0;
        ratioY := 1.0;
        if scale then
            ratioX := widthRatio;
            ratioY := heightRatio;
        end if;
        This.logUtil.putF (StringMaker_Package.Create.appendfloat (width).append (This.commonSeps.FORWARD_SLASH).appendfloat (height).append (This.commonSeps.COLON).appendint (newWidth).append (This.commonSeps.FORWARD_SLASH).appendint (newHeight).append (This.commonSeps.COLON).appendfloat (widthRatio).append (This.commonSeps.FORWARD_SLASH).appendfloat (heightRatio).toString, ImageUtil_Access'(This'Unchecked_Access), This.CREATE_BUFFERED_IMAGE);
        dx := 0.0;
        dy := 0.0;
        if (not (scale)) and then (allowTranslate) then
            dx := (((Float (newWidth)) - (width))) / (2.0);
            dy := (((Float (newHeight)) - (height))) / (2.0);
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Translate dx: ")).appendfloat (dx).append (To_Unbounded_String (" dy: ")).appendfloat (dy).toString, ImageUtil_Access'(This'Unchecked_Access), This.CREATE_BUFFERED_IMAGE);
        end if;
        newBufferedImage := Image_Package.Create (BareMain_Package.shell.getDisplay, newWidth, newHeight);
        gc := GC_Package.Create (newBufferedImage);
        affineTransform := Transform_Package.Create (gc.getDevice);
        affineTransform.scale (ratioX, ratioY);
        affineTransform.translate (dx, dy);
        gc.setTransform (affineTransform);
        gc.setAntialias (SWT_Package.ON);
        gc.setInterpolation (SWT_Package.HIGH);
        gc.drawImage (bufferedImage, 0, 0, bufferedImage.getBounds.width, bufferedImage.getBounds.height, 0, 0, newWidth, newHeight);
        gc.dispose;
        return newBufferedImage;
   end createBufferedImage6;

   function drawTransformedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class; parent_Param : access Composite_Package.Composite'Class; dx : Integer; dy : Integer; width : Integer; height : Integer) return Canvas_Access is
      image : constant Image_Access := Image_Access (image_Param);
      parent : constant Composite_Access := Composite_Access (parent_Param);
      imageCanvas : Canvas_Access;
   begin
        imageCanvas := Canvas_Package.Create (parent, SWT_Package.NONE);
        imageCanvas.addPaintListener (PaintListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure paintControl (This : in out ; event_Param : access PaintEvent_Package.PaintEvent'Class) is
--        event : constant PaintEvent_Access := PaintEvent_Access (event_Param);
--        gc : GC_Access;
--        affineTransform : Transform_Access;
--     begin
--                  gc := event.gc;
--                  affineTransform := Transform_Package.Create (gc.getDevice);
--                  affineTransform.translate (dx, dy);
--                  gc.setAntialias (SWT_Package.ON);
--                  gc.setInterpolation (SWT_Package.HIGH);
--                  gc.drawImage (image, 0, 0, image.getBounds.width, image.getBounds.height, 0, 0, width, height);
--     end paintControl;
);
        return imageCanvas;
   end drawTransformedImage;

   function toString (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class) return Unbounded_String is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
      imageData : ImageData_Access;
   begin
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        imageData := bufferedImage.getImageData;
        stringBuffer.append (To_Unbounded_String (" org.eclipse.swt.graphics.Image: "));
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (Integer (imageData.width));
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (Integer (imageData.height));
        stringBuffer.append (To_Unbounded_String (" Type: "));
        stringBuffer.appendint (Integer (imageData.type_Id));
        return stringBuffer.toString;
   end toString;

   procedure create (This : in out ImageUtil; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageUtil'Class (This).create (width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure createBufferedImage (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Integer; scale : Boolean) is
      Java_Result : constant Image_Access_Array_Access := ImageUtil'Class (This).createBufferedImage (bufferedImageArray, percent, scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage;

   procedure createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Float; scale : Boolean) is
      Java_Result : constant Image_Access_Array_Access := ImageUtil'Class (This).createBufferedImage2 (bufferedImageArray, percent, scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage2;

   procedure createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) is
      Java_Result : constant Image_Access_Array_Access := ImageUtil'Class (This).createBufferedImage3 (bufferedImageArray, width, height, scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage3;

   procedure createBufferedImage4 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer) is
      Java_Result : constant Image_Access := ImageUtil'Class (This).createBufferedImage4 (bufferedImage_Param, newWidth, newHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage4;

   procedure createBufferedImage5 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) is
      Java_Result : constant Image_Access := ImageUtil'Class (This).createBufferedImage5 (bufferedImage_Param, newWidth, newHeight, scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage5;

   procedure createBufferedImage6 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) is
      Java_Result : constant Image_Access := ImageUtil'Class (This).createBufferedImage6 (bufferedImage_Param, newWidth, newHeight, scale, allowTranslate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage6;

   procedure drawTransformedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class; parent_Param : access Composite_Package.Composite'Class; dx : Integer; dy : Integer; width : Integer; height : Integer) is
      Java_Result : constant Canvas_Access := ImageUtil'Class (This).drawTransformedImage (image_Param, parent_Param, dx, dy, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drawTransformedImage;

   procedure toString (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class) is
      Java_Result : constant Unbounded_String := ImageUtil'Class (This).toString (bufferedImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := ImageUtil_Package.Create;

end org.allbinary.media.image.ImageUtil_Package;


