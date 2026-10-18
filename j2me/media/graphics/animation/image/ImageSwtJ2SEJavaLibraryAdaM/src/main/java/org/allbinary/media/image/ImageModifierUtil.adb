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
      This.imageCopyUtil := ImageCopyUtil_Package.getInstance;
      This.features := Features_Package.getInstance;
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
        return ImageModifierUtil_Package.instance;
   end getInstanceOrCreate;

   procedure setBasicColorP (This : in out ImageModifierUtil; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setBasicColorP;

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      newBufferedImage : Image_Access;
      swtImage : SwtImmutableImage_Access;
      r : Short_Integer;
      g : Short_Integer;
      b : Short_Integer;
      width : Integer;
      height : Integer;
      imageData : ImageData_Access;
      rx : Integer;
      gx : Integer;
      bx : Integer;
      index3 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        newBufferedImage := null;
        if image.isMutable then
            swtImage := SwtMutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        else
            swtImage := SwtImmutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        end if;
        r := basicColor.red;
        g := basicColor.green;
        b := basicColor.blue;
        width := image.getWidth;
        height := image.getHeight;
        imageData := newBufferedImage.getImageData;
        if (imageData.depth) = (24) then
            rx := 0;
            gx := 0;
            bx := 0;
            index3 := 0;
            for index in 0 .. (width) - 1 loop
                for index2 in 0 .. (height) - 1 loop
                    index3 := (((index2) * (imageData.bytesPerLine))) + (((index) * (4)));
                    rx := Java_Shift_Left ((Java_And (imageData.data (index3), 16#FF#)), 16);
                    gx := Java_Shift_Left ((Java_And (imageData.data ((index3) + (1)), 16#FF#)), 8);
                    bx := (Java_And (imageData.data ((index3) + (2)), 16#FF#));
                    if (((rx) /= (0)) or else ((gx) /= (0))) or else ((bx) /= (0)) then
                        imageData.data (index3) := Short_Short_Integer (r);
                        imageData.data ((index3) + (1)) := Short_Short_Integer (g);
                        imageData.data ((index3) + (2)) := Short_Short_Integer (b);
                    end if;
                end loop;
            end loop;
        end if;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      openGLESImage : OpenGLESImage_Access;
      newBufferedImage : Image_Access;
      swtImage : SwtImmutableImage_Access;
      MAX : Float;
      r : Float;
      g : Float;
      b : Float;
      rx : Integer;
      gx : Integer;
      bx : Integer;
      imageData : ImageData_Access;
      size : Integer;
      index : Integer;
   begin
        if This.features.isFeature (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            if (image.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (image));
                openGLESImage.imageProcessor := ModifierOpenGLESImageProcessor_Package.getInstance;
                openGLESImage.openGLESImageProperties.redf := basicColor.getRedComponent;
                openGLESImage.openGLESImageProperties.greenf := basicColor.getGreenComponent;
                openGLESImage.openGLESImageProperties.bluef := basicColor.getBlueComponent;
                return;
            end if;
        end if;
        newBufferedImage := null;
        if image.isMutable then
            swtImage := SwtMutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        else
            swtImage := SwtImmutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        end if;
        MAX := 255.0;
        r := ((Float (basicColor.red))) / (MAX);
        g := ((Float (basicColor.green))) / (MAX);
        b := ((Float (basicColor.blue))) / (MAX);
        rx := 0;
        gx := 0;
        bx := 0;
        imageData := newBufferedImage.getImageData;
        if (imageData.depth) = (24) then
            size := imageData.data'Length;
            index := 0;
            while (index) < (size) loop
                rx := Java_Shift_Left ((Java_And (imageData.data (index), 16#FF#)), 16);
                gx := Java_Shift_Left ((Java_And (imageData.data ((index) + (1)), 16#FF#)), 8);
                bx := (Java_And (imageData.data ((index) + (2)), 16#FF#));
                rx := Integer ((rx) * (r));
                gx := Integer ((gx) * (g));
                bx := Integer ((bx) * (b));
                imageData.data (index) := Short_Short_Integer (rx);
                imageData.data ((index) + (1)) := Short_Short_Integer (gx);
                imageData.data ((index) + (2)) := Short_Short_Integer (bx);
                index := (index) + (4);
            end loop;
        end if;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alphaInt : Integer) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      openGLESImage : OpenGLESImage_Access;
   begin
        if This.features.isFeature (OpenGLFeatureFactory_Package.getInstance.OPENGL) then
            if (image.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (image));
                openGLESImage.imageProcessor := ModifierOpenGLESImageProcessor_Package.getInstance;
                openGLESImage.openGLESImageProperties.alphaf := ((Float (alphaInt))) / (255.0);
                return;
            end if;
        end if;
        ImageModifierUtil'Class (This).setAlphaSWT (image, alphaInt);
   end setAlpha;

   procedure setAlphaSWT (This : in out ImageModifierUtil; image_Param : access Image_Package.Image'Class; alphaInt : Integer) is
      image : constant Image_Access := Image_Access (image_Param);
      alpha : Short_Short_Integer;
      newBufferedImage : Image_Access;
      swtImage : SwtImmutableImage_Access;
   begin
        alpha := Short_Short_Integer (alphaInt);
        newBufferedImage := null;
        if image.isMutable then
            swtImage := SwtMutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        else
            swtImage := SwtImmutableImage_Access (image);
            newBufferedImage := Image_Access (swtImage.getImage);
        end if;
        newBufferedImage.getImageData.alpha := alpha;
   end setAlphaSWT;

   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access is
      newImageArray : Image_Access_Array_Access;
      size : Integer;
      originalImage : Image_Access;
      image : Image_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            newImageArray := new Image_Access_Array'(0 .. (originalImageArray'Length) - 1 => null);
            size := newImageArray'Length;
            originalImage := null;
            for index in 0 .. (size) - 1 loop
                originalImage := originalImageArray (index);
                image := This.imageCopyUtil.createImage (originalImage);
                newImageArray (index) := image;
            end loop;
            return newImageArray;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, ImageModifierUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImageArray"), e);
            return originalImageArray;
                end;
        end;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end handleImage;

   procedure reset (This : in out ImageModifierUtil) is
   begin
        null;
   end reset;

   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access_Array_Access := ImageModifierUtil'Class (This).getImageArray (originalImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

begin
   null;
   instance := ImageModifierUtil_Package.Create;

end org.allbinary.media.image.ImageModifierUtil_Package;


