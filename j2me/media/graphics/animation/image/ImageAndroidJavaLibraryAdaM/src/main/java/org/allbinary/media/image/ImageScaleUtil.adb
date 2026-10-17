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


package body org.allbinary.media.image.ImageScaleUtil_Package is

   procedure Initialize_Fields (This : in out ImageScaleUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.imageBasicArrayList := BasicArrayListD_Package.Create;
      This.scaledImageBasicArrayList := BasicArrayListD_Package.Create;
      This.scaleXBasicArrayList := BasicArrayListD_Package.Create;
      This.scaleYBasicArrayList := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return ImageScaleUtil_Access is
   begin
        return ImageScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageScaleUtil_Access is
      This : constant ImageScaleUtil_Access := new ImageScaleUtil;
   begin
      ImageScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access is
   begin
        return This.createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True);
   end createImage2;

   --  throws Exception
   function createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access is
      scaleX : Float;
      scaleY : Float;
   begin
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        return This.createImage (imageCache, originalImage, scaleX, scaleY, cached);
   end createImage3;

   --  throws Exception
   function createImage (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleX : Float; scaleY : Float; cached : Boolean) return Image_Access is
      originalAndroidImage : AndroidImageInterface_Access;
      originalBitmap : Bitmap_Access;
      width : Integer;
      height : Integer;
      index : Integer;
      alreadyAvailable : Boolean;
      scaleX2Float : Float;
      scaleX2 : Float;
      scaleY2Float : Float;
      scaleY2 : Float;
      scaledImage : Image_Access;
   begin
        originalAndroidImage := AndroidImageInterface_Access (originalImage);
        originalBitmap := originalAndroidImage.getBitmap;
        width := Integer (((originalBitmap.getWidth) * (scaleX)));
        height := Integer (((originalBitmap.getHeight) * (scaleY)));
        index := This.imageBasicArrayList.indexOf (originalImage);
        alreadyAvailable := False;
        if (index) >= (0) then
            scaleX2Float := Float (This.scaleXBasicArrayList.get (index));
            scaleX2 := scaleX2Float.floatValue;
            scaleY2Float := Float (This.scaleYBasicArrayList.get (index));
            scaleY2 := scaleY2Float.floatValue;
            if ((scaleX2) = (scaleX)) and then ((scaleY2) = (scaleY)) then
                alreadyAvailable := True;
            end if;
        end if;
        if alreadyAvailable then
            return Image_Access (This.scaledImageBasicArrayList.get (index));
        else
            scaledImage := This.getScaledImage (imageCache, originalImage, scaleX, scaleY, width, height, cached);
            This.imageBasicArrayList.add (originalImage);
            This.scaledImageBasicArrayList.add (scaledImage);
            This.scaleXBasicArrayList.add (scaleX);
            This.scaleYBasicArrayList.add (scaleY);
            return scaledImage;
        end if;
   end createImage;

   --  throws Exception
   function getScaledImage (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean) return Image_Access is
      image : Image_Access;
      matrix : Matrix_Access;
   begin
        image := NullImage_Package.NULL_IMAGE;
        if cached then
            image := imageCache.get (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)), width, height);
        else
            image := imageCache.get (This.commonStrings.CREATE_IMAGE, width, height);
        end if;
        if image.isMutable then
            matrix := Matrix_Package.Create;
            This.scale (image, matrix, scaleX, scaleY);
            image.getGraphics.drawImage (originalImage, 0, 0, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end getScaledImage;

   procedure scale (This : in out ImageScaleUtil; image : Image_Access; matrix : Matrix_Access; scaleX : Float; scaleY : Float) is
      canvas : Canvas_Access;
   begin
        matrix.setScale (scaleX, scaleY);
        canvas := (AndroidImageInterface_Access (image)).getCanvas;
        canvas.concat (matrix);
   end scale;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

   procedure createImage (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleX : Float; scaleY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage (imageCache, originalImage, scaleX, scaleY, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure getScaledImage (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).getScaledImage (imageCache, originalImage, scaleX, scaleY, width, height, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaledImage;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


