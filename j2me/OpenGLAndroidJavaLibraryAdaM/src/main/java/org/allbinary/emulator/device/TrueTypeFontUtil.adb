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


with java.io.File_Package; use java.io.File_Package;
with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with android.graphics.Bitmap_Package; use android.graphics.Bitmap_Package;
with android.graphics.Canvas_Package; use android.graphics.Canvas_Package;
with android.graphics.Paint_Package; use android.graphics.Paint_Package;
with android.graphics.Rect_Package; use android.graphics.Rect_Package;
with android.graphics.Typeface_Package; use android.graphics.Typeface_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.image.PreResourceImageUtil_Package; use org.allbinary.image.PreResourceImageUtil_Package;
with org.allbinary.image.PreResourceImageUtil_Package_References;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.android.device.AndroidImageInterface_Package; use org.microemu.android.device.AndroidImageInterface_Package;
with org.microemu.android.device.AndroidImmutableImage_Package; use org.microemu.android.device.AndroidImmutableImage_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   package File_Package renames Standard.java.io.File_Package;
   package FileOutputStream_Package renames Standard.java.io.FileOutputStream_Package;
   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package Canvas_Package renames Standard.android.graphics.Canvas_Package;
   package Paint_Package renames Standard.android.graphics.Paint_Package;
   package Rect_Package renames Standard.android.graphics.Rect_Package;
   package Typeface_Package renames Standard.android.graphics.Typeface_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package AndroidImageInterface_Package renames Standard.org.microemu.android.device.AndroidImageInterface_Package;
   package AndroidImmutableImage_Package renames Standard.org.microemu.android.device.AndroidImmutableImage_Package;
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype PreResourceImageUtil_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access;
   function "=" (Left, Right : PreResourceImageUtil_Access) return Boolean renames org.allbinary.image.PreResourceImageUtil_Package_References."=";
   subtype PreResourceImageUtil_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array;
   function "=" (Left, Right : PreResourceImageUtil_Access_Array) return Boolean renames org.allbinary.image.PreResourceImageUtil_Package_References."=";
   subtype PreResourceImageUtil_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access;
   function "=" (Left, Right : PreResourceImageUtil_Access_Array_Access) return Boolean renames org.allbinary.image.PreResourceImageUtil_Package_References."=";
   subtype PreResourceImageUtil_Access_Array_Access_Array is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PreResourceImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.PreResourceImageUtil_Package_References."=";
   subtype PreResourceImageUtil_Access_Array_Access_Array_Access is org.allbinary.image.PreResourceImageUtil_Package_References.PreResourceImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreResourceImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.PreResourceImageUtil_Package_References."=";
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   function "=" (Left, Right : OpenGLESImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
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
   procedure Initialize_Fields (This : in out TrueTypeFontUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.realFontSize := 18;
      This.fontImage := OpenGLESImage_Access (OpenGLESImage_Package.NULL_OPENGL_IMAGE);
   end Initialize_Fields;


   function getInstance return TrueTypeFontUtil_Access is
   begin
        return TrueTypeFontUtil_Access (TrueTypeFontUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TrueTypeFontUtil'Class) is
   begin
        TrueTypeFontUtilBase_Package.Initialize (This, 1);
        Initialize_Fields (This);
   end Initialize;

   function Create return TrueTypeFontUtil_Access is
      This : constant TrueTypeFontUtil_Access := new TrueTypeFontUtil;
   begin
      TrueTypeFontUtil_Package.Initialize (This.all);
      return This;
   end Create;

   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil) is
      commonStrings : CommonStrings_Access;
      file : File_Access;
      path : Unbounded_String;
      fos : FileOutputStream_Access;
      bitmap : Bitmap_Access;
   begin
        begin
            commonStrings := CommonStrings_Package.getInstance;
            file := ResourceUtil_Package.getInstance.getContext.getFilesDir;
            path := Java_Image (file.getAbsolutePath) & CanvasStrings_Package.getInstance.FONT_ATLAS;
            This.logUtil.putF (path, TrueTypeFontUtil_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            fos := FileOutputStream_Package.Create (path);
            bitmap := AndroidImageInterface_Access (This.fontImage.openGLBitmap.getImage).getBitmap;
            bitmap.compress (Bitmap_Package.CompressFormat.PNG, 100, fos);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, TrueTypeFontUtil_Access'(This'Unchecked_Access), commonStrings.EXCEPTION_Id, e);
                end;
        end;
   end saveFontAtlasAsFile;

   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return Image_Access is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      cellsPerRow2 : Integer;
      cellsPerRow3 : Integer;
      cellsPerRow4 : Integer;
      cellsPerRow5 : Integer;
      cellsPerRow6 : Integer;
      cellsPerRow7 : Integer;
      typeface : Typeface_Access;
      textureSize : Integer;
      bitmap : Bitmap_Access;
      canvas : Canvas_Access;
      paint : Paint_Access;
      biggestHeight : Integer;
      bounds : Rect_Access;
      x : Integer;
      y : Integer;
      index : Integer;
      image : Image_Access;
   begin
        if (Java_Object_Access (This.fontImage)) = (Java_Object_Access (OpenGLESImage_Package.NULL_OPENGL_IMAGE)) then
            cellsPerRow2 := (This.CELLS_PER_ROW) * (2);
            cellsPerRow3 := (This.CELLS_PER_ROW) * (3);
            cellsPerRow4 := (This.CELLS_PER_ROW) * (4);
            cellsPerRow5 := (This.CELLS_PER_ROW) * (5);
            cellsPerRow6 := (This.CELLS_PER_ROW) * (6);
            cellsPerRow7 := (This.CELLS_PER_ROW) * (7);
            typeface := Typeface_Access (Typeface_Package.DEFAULT);
            textureSize := TrueTypeFontUtil'Class (This).getAsTextureSize ((This.CELLS_PER_ROW) * (cellSize));
            bitmap := Bitmap_Package.createBitmap (textureSize, textureSize, Bitmap_Package.Config.ARGB_8888);
            canvas := Canvas_Package.Create (bitmap);
            paint := Paint_Package.Create;
            paint.setTypeface (typeface);
            paint.setTextSize (Float (This.realFontSize));
            paint.setAlpha (Integer (basicColor.alpha));
            paint.setColor (basicColor.intValue);
            biggestHeight := 0;
            bounds := Rect_Package.Create;
            x := 0;
            y := 0;
            for index in 0 .. (This.size) - 1 loop
                This.characterArray (0) := This.pattern.charAt (index);
                paint.getTextBounds (This.characterArray, 0, 1, bounds);
                This.U_characterWidth (index) := bounds.right;
                if ((bounds.bottom) - (bounds.top)) > (biggestHeight) then
                    biggestHeight := (bounds.bottom) - (bounds.top);
                end if;
                x := (((index) rem (This.CELLS_PER_ROW))) * (cellSize);
                x := (x) + ((Java_Shift_Right_Arithmetic (cellSize, 1)));
                x := (x) - ((Java_Shift_Right_Arithmetic (This.U_characterWidth (index), 1)));
                y := 0;
                if (index) >= (This.CELLS_PER_ROW) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow2) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow3) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow4) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow5) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow6) then
                    y := (y) + (cellSize);
                end if;
                if (index) >= (cellsPerRow7) then
                    y := (y) + (cellSize);
                end if;
                y := (y) + (cellSize);
                y := (y) - ((Java_Shift_Right_Arithmetic (cellSize, 2)));
                canvas.drawText (This.characterArray, 0, 1, (Float (x)) - (3.0), (Float (y)) - (6.0), paint);
            end loop;
            canvas.save;
            image := AndroidImmutableImage_Package.create (bitmap);
            This.fontImage := OpenGLESImage_Access (This.preResourceImageUtil.encapsulate (image));
            return Image_Access (This.fontImage);
        else
            return Image_Access (This.fontImage);
        end if;
   end getFontBitmapGL;

   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access is
      typeface : Typeface_Access;
      paint : Paint_Access;
      bounds : Rect_Access;
      index : Integer;
   begin
        typeface := Typeface_Access (Typeface_Package.DEFAULT);
        paint := Paint_Package.Create;
        paint.setTypeface (typeface);
        paint.setTextSize (Float (fontSize));
        paint.setARGB (255, 255, 255, 255);
        bounds := Rect_Package.Create;
        for index in 0 .. (This.size) - 1 loop
            This.characterArray (0) := This.pattern.charAt (index);
            paint.getTextBounds (This.characterArray, 0, 1, bounds);
            if (index) < (This.lastCapIndex) then
                if (This.characterArray (0)) = ('1') then
                    This.U_characterWidth (index) := (bounds.right) + (3);
                elsif (((((((This.characterArray (0)) = ('J')) or else ((This.characterArray (0)) = ('V'))) or else ((This.characterArray (0)) = ('2'))) or else ((This.characterArray (0)) = ('9'))) or else ((This.characterArray (0)) = ('I'))) or else ((This.characterArray (0)) = ('N'))) or else ((This.characterArray (0)) = ('U')) then
                    This.U_characterWidth (index) := (bounds.right) + (1);
                elsif ((((This.characterArray (0)) = ('4')) or else ((This.characterArray (0)) = ('C'))) or else ((This.characterArray (0)) = ('E'))) or else ((This.characterArray (0)) = ('O')) then
                    This.U_characterWidth (index) := (bounds.right) - (2);
                elsif ((((((This.characterArray (0)) = ('B')) or else ((This.characterArray (0)) = ('D'))) or else ((This.characterArray (0)) = ('G'))) or else ((This.characterArray (0)) = ('H'))) or else ((This.characterArray (0)) = ('T'))) or else ((This.characterArray (0)) = ('W')) then
                    This.U_characterWidth (index) := (bounds.right) - (3);
                elsif (((This.characterArray (0)) = ('A')) or else ((This.characterArray (0)) = ('Q'))) or else ((This.characterArray (0)) = ('R')) then
                    This.U_characterWidth (index) := (bounds.right) - (5);
                elsif (This.characterArray (0)) = ('M') then
                    This.U_characterWidth (index) := (bounds.right) - (6);
                elsif (This.characterArray (0)) = ('m') then
                    This.U_characterWidth (index) := (bounds.right) - (8);
                else
                    This.U_characterWidth (index) := bounds.right;
                end if;
            else
                if (This.characterArray (0)) = (' ') then
                    This.U_characterWidth (index) := (bounds.right) + (10);
                elsif ((((((This.characterArray (0)) = ('l')) or else ((This.characterArray (0)) = ('i'))) or else ((This.characterArray (0)) = ('j'))) or else ((This.characterArray (0)) = ('.'))) or else ((This.characterArray (0)) = ('!'))) or else ((This.characterArray (0)) = ('|')) then
                    This.U_characterWidth (index) := (bounds.right) + (6);
                elsif ((((This.characterArray (0)) = ('f')) or else ((This.characterArray (0)) = ('t'))) or else ((This.characterArray (0)) = ('u'))) or else ((This.characterArray (0)) = ('v')) then
                    This.U_characterWidth (index) := (bounds.right) + (1);
                elsif (This.characterArray (0)) = ('r') then
                    This.U_characterWidth (index) := (bounds.right) + (2);
                elsif ((((This.characterArray (0)) = ('a')) or else ((This.characterArray (0)) = ('b'))) or else ((This.characterArray (0)) = ('g'))) or else ((This.characterArray (0)) = ('u')) then
                    This.U_characterWidth (index) := (bounds.right) - (1);
                elsif ((This.characterArray (0)) = ('o')) or else ((This.characterArray (0)) = ('e')) then
                    This.U_characterWidth (index) := (bounds.right) - (2);
                elsif (This.characterArray (0)) = ('m') then
                    This.U_characterWidth (index) := (bounds.right) - (7);
                else
                    This.U_characterWidth (index) := bounds.right;
                end if;
            end if;
        end loop;
        This.U_characterWidth (0) := ((Java_Shift_Right_Arithmetic (fontSize, 1))) - (2);
        return This.U_characterWidth;
   end getFontWidths;

   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10_Package.GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmapGL (gl_Param => gl_Param, filename => filename, cellSize => cellSize, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmapGL;

   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) is
      Java_Result : constant Integer_Array_Access := TrueTypeFontUtil'Class (This).getFontWidths (filename => filename, fontSize => fontSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontWidths;

begin
   null;
   instance := TrueTypeFontUtil_Package.Create;

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


