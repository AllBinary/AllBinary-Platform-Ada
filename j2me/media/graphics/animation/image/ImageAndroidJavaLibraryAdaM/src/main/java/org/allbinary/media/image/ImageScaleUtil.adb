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


with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
with android.graphics.Matrix_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageScaleUtil_Package is

   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   subtype Matrix_Access is android.graphics.Matrix_Package_References.Matrix_Access;
   function "=" (Left, Right : Matrix_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array;
   function "=" (Left, Right : Matrix_Access_Array) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access;
   function "=" (Left, Right : Matrix_Access_Array_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array;
   function "=" (Left, Right : Matrix_Access_Array_Access_Array) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Matrix_Access_Array_Access_Array_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out ImageScaleUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.imageBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.scaledImageBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.scaleXBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.scaleYBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return ImageScaleUtil_Access is
   begin
        return ImageScaleUtil_Access (ImageScaleUtil_Package.instance);
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
   function createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageScaleUtil'Class (This).createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True);
   end createImage2;

   --  throws Exception
   function createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      scaleX : Float;
      scaleY : Float;
   begin
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        return ImageScaleUtil'Class (This).createImage (imageCache, originalImage, scaleX, scaleY, cached);
   end createImage3;

   --  throws Exception
   function createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
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
        index := This.imageBasicArrayList.indexOf (Java_Object_Access (originalImage));
        alreadyAvailable := False;
        if (index) >= (0) then
            scaleX2Float := Float (This.scaleXBasicArrayList.get (index));
            scaleX2 := Float (scaleX2Float);
            scaleY2Float := Float (This.scaleYBasicArrayList.get (index));
            scaleY2 := Float (scaleY2Float);
            if ((scaleX2) = (scaleX)) and then ((scaleY2) = (scaleY)) then
                alreadyAvailable := True;
            end if;
        end if;
        if alreadyAvailable then
            return Image_Access (This.scaledImageBasicArrayList.get (index));
        else
            scaledImage := ImageScaleUtil'Class (This).getScaledImage (imageCache, originalImage, scaleX, scaleY, width, height, cached);
            This.imageBasicArrayList.add (Java_Object_Access (originalImage));
            This.scaledImageBasicArrayList.add (Java_Object_Access (scaledImage));
            This.scaleXBasicArrayList.add (scaleX);
            This.scaleYBasicArrayList.add (scaleY);
            return scaledImage;
        end if;
   end createImage;

   --  throws Exception
   function getScaledImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      matrix : Matrix_Access;
   begin
        image := Image_Access (NullImage_Package.NULL_IMAGE);
        if cached then
            image := imageCache.get (To_Unbounded_String (Ada.Tags.Expanded_Name (Java_Object'Class (This)'Tag)), width, height);
        else
            image := imageCache.get (This.commonStrings.CREATE_IMAGE, width, height);
        end if;
        if image.isMutable then
            matrix := Matrix_Package.Create;
            ImageScaleUtil'Class (This).scale (image, matrix, scaleX, scaleY);
            image.getGraphics.drawImage (originalImage, 0, 0, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end getScaledImage;

   procedure scale (This : in out ImageScaleUtil; image_Param : access Image_Package.Image'Class; matrix_Param : access Matrix_Package.Matrix'Class; scaleX : Float; scaleY : Float) is
      image : constant Image_Access := Image_Access (image_Param);
      matrix : constant Matrix_Access := Matrix_Access (matrix_Param);
      canvas : Canvas_Access;
   begin
        matrix.setScale (scaleX, scaleY);
        canvas := AndroidImageInterface_Access (image).getCanvas;
        canvas.concat (matrix);
   end scale;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached, mutable => mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

   procedure createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleX => scaleX, scaleY => scaleY, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure getScaledImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).getScaledImage (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleX => scaleX, scaleY => scaleY, width => width, height => height, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaledImage;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


