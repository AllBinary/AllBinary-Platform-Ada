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


package body org.allbinary.emulator.device.TrueTypeFontUtil_Package is

   procedure Initialize_Fields (This : in out TrueTypeFontUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.realFontSize := 18;
      This.fontImage := OpenGLESImage_Package.NULL_OPENGL_IMAGE;
   end Initialize_Fields;


   function getInstance return TrueTypeFontUtil_Access is
   begin
        return TrueTypeFontUtil_Package.instance;
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
            path := (file.getAbsolutePath) + (CanvasStrings_Package.getInstance.FONT_ATLAS);
            This.logUtil.putF (path, This'Unchecked_Access, commonStrings.CONSTRUCTOR);
            fos := FileOutputStream_Package.Create (path);
            bitmap := (AndroidImageInterface_Access (This.fontImage.openGLBitmap.getImage)).getBitmap;
            bitmap.compress (Bitmap_Package.CompressFormat.PNG, 100, fos);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.EXCEPTION_Id, e);
                end;
        end;
   end saveFontAtlasAsFile;

   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl : GL10_Access; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access) return Image_Access is
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
        if (This.fontImage) = (OpenGLESImage_Package.NULL_OPENGL_IMAGE) then
            cellsPerRow2 := (This.CELLS_PER_ROW) * (2);
            cellsPerRow3 := (This.CELLS_PER_ROW) * (3);
            cellsPerRow4 := (This.CELLS_PER_ROW) * (4);
            cellsPerRow5 := (This.CELLS_PER_ROW) * (5);
            cellsPerRow6 := (This.CELLS_PER_ROW) * (6);
            cellsPerRow7 := (This.CELLS_PER_ROW) * (7);
            typeface := Typeface_Package.DEFAULT;
            textureSize := This.getAsTextureSize ((This.CELLS_PER_ROW) * (cellSize));
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
            return This.fontImage;
        else
            return This.fontImage;
        end if;
   end getFontBitmapGL;

   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access is
      typeface : Typeface_Access;
      paint : Paint_Access;
      bounds : Rect_Access;
      index : Integer;
   begin
        typeface := Typeface_Package.DEFAULT;
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

   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl : GL10_Access; filename : Unbounded_String; cellSize : Integer; basicColor : BasicColor_Access) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmapGL (gl, filename, cellSize, basicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmapGL;

   procedure getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) is
      Java_Result : constant Integer_Array_Access := TrueTypeFontUtil'Class (This).getFontWidths (filename, fontSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontWidths;

begin
   null;
   instance := TrueTypeFontUtil_Package.Create;

end org.allbinary.emulator.device.TrueTypeFontUtil_Package;


