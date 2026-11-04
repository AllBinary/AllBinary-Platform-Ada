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
with android.graphics.Bitmap_Package_References;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Color_Package; use android.graphics.Color_Package;
with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
with android.graphics.Matrix_Package_References;
with android.graphics.Paint_Package; use android.graphics.Paint_Package;
with android.graphics.Paint_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;

package body org.allbinary.media.image.AndroidImageUtil_Package is

   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package Color_Package renames Standard.android.graphics.Color_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   subtype Bitmap_Access is android.graphics.Bitmap_Package_References.Bitmap_Access;
   function "=" (Left, Right : Bitmap_Access) return Boolean renames android.graphics.Bitmap_Package_References."=";
   subtype Bitmap_Access_Array is android.graphics.Bitmap_Package_References.Bitmap_Access_Array;
   function "=" (Left, Right : Bitmap_Access_Array) return Boolean renames android.graphics.Bitmap_Package_References."=";
   subtype Bitmap_Access_Array_Access is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access;
   function "=" (Left, Right : Bitmap_Access_Array_Access) return Boolean renames android.graphics.Bitmap_Package_References."=";
   subtype Bitmap_Access_Array_Access_Array is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access_Array;
   function "=" (Left, Right : Bitmap_Access_Array_Access_Array) return Boolean renames android.graphics.Bitmap_Package_References."=";
   subtype Bitmap_Access_Array_Access_Array_Access is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Bitmap_Access_Array_Access_Array_Access) return Boolean renames android.graphics.Bitmap_Package_References."=";
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
   subtype Paint_Access is android.graphics.Paint_Package_References.Paint_Access;
   function "=" (Left, Right : Paint_Access) return Boolean renames android.graphics.Paint_Package_References."=";
   subtype Paint_Access_Array is android.graphics.Paint_Package_References.Paint_Access_Array;
   function "=" (Left, Right : Paint_Access_Array) return Boolean renames android.graphics.Paint_Package_References."=";
   subtype Paint_Access_Array_Access is android.graphics.Paint_Package_References.Paint_Access_Array_Access;
   function "=" (Left, Right : Paint_Access_Array_Access) return Boolean renames android.graphics.Paint_Package_References."=";
   subtype Paint_Access_Array_Access_Array is android.graphics.Paint_Package_References.Paint_Access_Array_Access_Array;
   function "=" (Left, Right : Paint_Access_Array_Access_Array) return Boolean renames android.graphics.Paint_Package_References."=";
   subtype Paint_Access_Array_Access_Array_Access is android.graphics.Paint_Package_References.Paint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paint_Access_Array_Access_Array_Access) return Boolean renames android.graphics.Paint_Package_References."=";
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
   procedure Initialize_Fields (This : in out AndroidImageUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidImageUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidImageUtil_Access is
      This : constant AndroidImageUtil_Access := new AndroidImageUtil;
   begin
      AndroidImageUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidImageUtil_Access is
   begin
        return AndroidImageUtil_Access (AndroidImageUtil_Package.instance);
   end getInstance;

   procedure paintBitmap (This : in out AndroidImageUtil; bitmap_Param : access Bitmap_Package.Bitmap'Class; originalBitmap_Param : access Bitmap_Package.Bitmap'Class; paint_Param : access Paint_Package.Paint'Class) is
      bitmap : constant Bitmap_Access := Bitmap_Access (bitmap_Param);
      originalBitmap : constant Bitmap_Access := Bitmap_Access (originalBitmap_Param);
      paint : constant Paint_Access := Paint_Access (paint_Param);
      canvas : Canvas_Access;
   begin
        bitmap.eraseColor (Color_Package.TRANSPARENT);
        canvas := Canvas_Package.Create;
        canvas.setBitmap (bitmap);
        canvas.drawBitmap (originalBitmap, 0.0, 0.0, paint);
   end paintBitmap;

   procedure paint (This : in out AndroidImageUtil; image_Param : access Image_Package.Image'Class; originalImage_Param : access Image_Package.Image'Class; paint_Param : access Paint_Package.Paint'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      paint : constant Paint_Access := Paint_Access (paint_Param);
      androidImage : AndroidImageInterface_Access;
      canvas : Canvas_Access;
      originalAndroidImage : AndroidImageInterface_Access;
   begin
        androidImage := AndroidImageInterface_Access (image);
        androidImage.getBitmap.eraseColor (Color_Package.TRANSPARENT);
        canvas := androidImage.getCanvas;
        originalAndroidImage := AndroidImageInterface_Access (originalImage);
        canvas.drawBitmap (originalAndroidImage.getBitmap, 0.0, 0.0, paint);
   end paint;

   procedure rotate (This : in out AndroidImageUtil; image_Param : access Image_Package.Image'Class; originalImage_Param : access Image_Package.Image'Class; matrix_Param : access Matrix_Package.Matrix'Class; paint_Param : access Paint_Package.Paint'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      matrix : constant Matrix_Access := Matrix_Access (matrix_Param);
      paint : constant Paint_Access := Paint_Access (paint_Param);
      androidImage : AndroidImageInterface_Access;
      canvas : Canvas_Access;
      originalAndroidImage : AndroidImageInterface_Access;
   begin
        androidImage := AndroidImageInterface_Access (image);
        androidImage.getBitmap.eraseColor (Color_Package.TRANSPARENT);
        canvas := androidImage.getCanvas;
        canvas.concat (matrix);
        originalAndroidImage := AndroidImageInterface_Access (originalImage);
        canvas.drawBitmap (originalAndroidImage.getBitmap, 0.0, 0.0, paint);
   end rotate;

begin
   null;
   instance := AndroidImageUtil_Package.Create;

end org.allbinary.media.image.AndroidImageUtil_Package;


