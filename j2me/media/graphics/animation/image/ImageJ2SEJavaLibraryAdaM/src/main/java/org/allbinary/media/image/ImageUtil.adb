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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.microemu.device.j2se.J2SEImmutableImage_Package; use org.microemu.device.j2se.J2SEImmutableImage_Package;
with org.microemu.device.j2se.J2SEMutableImage_Package; use org.microemu.device.j2se.J2SEMutableImage_Package;

package body org.allbinary.media.image.ImageUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package J2SEImmutableImage_Package renames Standard.org.microemu.device.j2se.J2SEImmutableImage_Package;
   package J2SEMutableImage_Package renames Standard.org.microemu.device.j2se.J2SEMutableImage_Package;
   procedure Initialize_Fields (This : in out ImageUtil'Class) is
   begin
      null;
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
        null;
   end Initialize;

   function Create return ImageUtil_Access is
      This : constant ImageUtil_Access := new ImageUtil;
   begin
      ImageUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getDefaultConfiguration (This : in out ImageUtil) return GraphicsConfiguration_Access is
      ge : GraphicsEnvironment_Access;
      gd : GraphicsDevice_Access;
   begin
        ge := GraphicsEnvironment_Package.getLocalGraphicsEnvironment;
        gd := ge.getDefaultScreenDevice;
        return gd.getDefaultConfiguration;
   end getDefaultConfiguration;

   function create (This : in out ImageUtil; width : Integer; height : Integer) return BufferedImage_Access is
      graphicsConfiguration : GraphicsConfiguration_Access;
   begin
        graphicsConfiguration := ImageUtil'Class (This).getDefaultConfiguration;
        return graphicsConfiguration.createCompatibleImage (width, height, Transparency_Package.TRANSLUCENT);
   end create;

   --  throws Exception
   function createBufferedImageForResize (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Integer; scale : Boolean) return BufferedImage_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : BufferedImage_Access_Array_Access;
      bufferedImage : BufferedImage_Access;
      newWidth : Integer;
      newHeight : Integer;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new BufferedImage_Access_Array'(0 .. (size) - 1 => null);
        bufferedImage := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            newWidth := Integer ((((bufferedImage.getWidth) * (percent)) / (100)));
            newHeight := Integer ((((bufferedImage.getHeight) * (percent)) / (100)));
            scaledBufferedImageArray (index) := ImageUtil'Class (This).createBufferedImage (bufferedImage, newWidth, newHeight, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImageForResize;

   --  throws Exception
   function createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Float; scale : Boolean) return BufferedImage_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : BufferedImage_Access_Array_Access;
      bufferedImage : BufferedImage_Access;
      newWidth : Integer;
      newHeight : Integer;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new BufferedImage_Access_Array'(0 .. (size) - 1 => null);
        bufferedImage := null;
        for index in 0 .. (size) - 1 loop
            bufferedImage := bufferedImageArray (index);
            newWidth := Integer (((bufferedImage.getWidth) * (percent)));
            newHeight := Integer (((bufferedImage.getHeight) * (percent)));
            scaledBufferedImageArray (index) := ImageUtil'Class (This).createBufferedImage (bufferedImage, newWidth, newHeight, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImage2;

   --  throws Exception
   function createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) return BufferedImage_Access_Array_Access is
      size : Integer;
      scaledBufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
   begin
        size := bufferedImageArray'Length;
        scaledBufferedImageArray := new BufferedImage_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            scaledBufferedImageArray (index) := ImageUtil'Class (This).createBufferedImage (bufferedImageArray (index), width, height, scale);
        end loop;
        return scaledBufferedImageArray;
   end createBufferedImage3;

   --  throws Exception
   function createBufferedImageForSave (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) return BufferedImage_Access is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        return ImageUtil'Class (This).createBufferedImage (bufferedImage, newWidth, newHeight, True);
   end createBufferedImageForSave;

   --  throws Exception
   function createBufferedImage (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) return BufferedImage_Access is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
   begin
        return ImageUtil'Class (This).createBufferedImageAllowTranslate (bufferedImage, newWidth, newHeight, scale, False);
   end createBufferedImage;

   --  throws Exception
   function createBufferedImageAllowTranslate (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) return BufferedImage_Access is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      width : Long_Float;
      height : Long_Float;
      d_newWidth : Long_Float;
      d_newHeight : Long_Float;
      widthRatio : Long_Float;
      heightRatio : Long_Float;
      ratioX : Long_Float;
      ratioY : Long_Float;
      affineTransform : AffineTransform_Access;
      dx : Long_Float;
      dy : Long_Float;
      newBufferedImage : BufferedImage_Access;
      graphics : Graphics2D_Access;
   begin
        width := bufferedImage.getWidth;
        height := bufferedImage.getHeight;
        d_newWidth := Long_Float (newWidth);
        d_newHeight := Long_Float (newHeight);
        widthRatio := (d_newWidth) / (width);
        heightRatio := (d_newHeight) / (height);
        ratioX := 1.0;
        ratioY := 1.0;
        if scale then
            ratioX := widthRatio;
            ratioY := heightRatio;
        end if;
        affineTransform := AffineTransform_Package.getScaleInstance (ratioX, ratioY);
        if (not (scale)) and then (allowTranslate) then
            dx := (((Long_Float (newWidth)) - (width))) / (2.0);
            dy := (((Long_Float (newHeight)) - (height))) / (2.0);
            affineTransform.translate (dx, dy);
        end if;
        newBufferedImage := BufferedImage_Package.Create (newWidth, newHeight, BufferedImage_Package.TYPE_INT_ARGB_PRE);
        graphics := newBufferedImage.createGraphics;
        graphics.drawRenderedImage (bufferedImage, affineTransform);
        return newBufferedImage;
   end createBufferedImageAllowTranslate;

   --  throws Exception
   function createBufferedImageWithLargerCanvas (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) return BufferedImage_Access is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      width : Long_Float;
      height : Long_Float;
      d_newWidth : Long_Float;
      d_newHeight : Long_Float;
      widthRatio : Long_Float;
      heightRatio : Long_Float;
      dx2 : Integer;
      dy2 : Integer;
      dx : Integer;
      dy : Integer;
      dx4 : Integer;
      dy4 : Integer;
      newBufferedImage : BufferedImage_Access;
      graphics : Graphics2D_Access;
   begin
        width := bufferedImage.getWidth;
        height := bufferedImage.getHeight;
        d_newWidth := Long_Float (newWidth);
        d_newHeight := Long_Float (newHeight);
        widthRatio := (d_newWidth) / (width);
        heightRatio := (d_newHeight) / (height);
        dx2 := Integer (((Long_Float (newWidth)) - (width)));
        dy2 := Integer (((Long_Float (newHeight)) - (height)));
        dx := (dx2) / (2);
        dy := (dy2) / (2);
        dx4 := (dx2) / (4);
        dy4 := (dy2) / (4);
        newBufferedImage := BufferedImage_Package.Create (newWidth, newHeight, BufferedImage_Package.TYPE_INT_ARGB_PRE);
        graphics := newBufferedImage.createGraphics;
        graphics.drawImage (bufferedImage, dx4, dy4, null);
        return newBufferedImage;
   end createBufferedImageWithLargerCanvas;

   function convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access Image_Package.Image'Class) return BufferedImage_Access is
      toolkitImage : constant Image_Access := Image_Access (toolkitImage_Param);
      bufferedImage : BufferedImage_Access;
      g2d : Graphics2D_Access;
   begin
        if (toolkitImage) = (null) then
            return null;
        end if;
        bufferedImage := BufferedImage_Package.Create (toolkitImage.getWidth (null), toolkitImage.getHeight (null), BufferedImage_Package.TYPE_INT_ARGB);
        g2d := bufferedImage.createGraphics;
        g2d.drawImage (toolkitImage, 0, 0, null);
        g2d.dispose;
        return bufferedImage;
   end convertToBufferedImage;

   function getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class) return BufferedImage_Access is
      image : constant Image_Access := Image_Access (image_Param);
      bufferedImage : BufferedImage_Access;
      j2seImage : J2SEImmutableImage_Access;
   begin
        bufferedImage := null;
        if image.isMutable then
            j2seImage := J2SEMutableImage_Access (image);
            bufferedImage := BufferedImage_Access (j2seImage.getImage);
        else
            j2seImage := J2SEImmutableImage_Access (image);
            bufferedImage := BufferedImage_Access (j2seImage.getImage);
        end if;
        return bufferedImage;
   end getBufferedImage;

   function toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Unbounded_String is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (" BufferedImage -"));
        stringBuffer.append (commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (Integer (bufferedImage.getWidth));
        stringBuffer.append (commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (Integer (bufferedImage.getHeight));
        stringBuffer.append (To_Unbounded_String (" Type: "));
        stringBuffer.appendint (Integer (bufferedImage.getType));
        return stringBuffer.toString;
   end toString;

   procedure create (This : in out ImageUtil; width : Integer; height : Integer) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).create (width => width, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure createBufferedImageForResize (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Integer; scale : Boolean) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageUtil'Class (This).createBufferedImageForResize (bufferedImageArray => bufferedImageArray, percent => percent, scale => scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImageForResize;

   procedure createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Float; scale : Boolean) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageUtil'Class (This).createBufferedImage2 (bufferedImageArray => bufferedImageArray, percent => percent, scale => scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage2;

   procedure createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageUtil'Class (This).createBufferedImage3 (bufferedImageArray => bufferedImageArray, width => width, height => height, scale => scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage3;

   procedure createBufferedImageForSave (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).createBufferedImageForSave (bufferedImage_Param => bufferedImage_Param, newWidth => newWidth, newHeight => newHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImageForSave;

   procedure createBufferedImage (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).createBufferedImage (bufferedImage_Param => bufferedImage_Param, newWidth => newWidth, newHeight => newHeight, scale => scale);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImage;

   procedure createBufferedImageAllowTranslate (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).createBufferedImageAllowTranslate (bufferedImage_Param => bufferedImage_Param, newWidth => newWidth, newHeight => newHeight, scale => scale, allowTranslate => allowTranslate);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImageAllowTranslate;

   procedure createBufferedImageWithLargerCanvas (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).createBufferedImageWithLargerCanvas (bufferedImage_Param => bufferedImage_Param, newWidth => newWidth, newHeight => newHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBufferedImageWithLargerCanvas;

   procedure convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access Image_Package.Image'Class) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).convertToBufferedImage (toolkitImage_Param => toolkitImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertToBufferedImage;

   procedure getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant BufferedImage_Access := ImageUtil'Class (This).getBufferedImage (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBufferedImage;

   procedure toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is
      Java_Result : constant Unbounded_String := ImageUtil'Class (This).toString (bufferedImage_Param => bufferedImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   instance := ImageUtil_Package.Create;

end org.allbinary.media.image.ImageUtil_Package;


