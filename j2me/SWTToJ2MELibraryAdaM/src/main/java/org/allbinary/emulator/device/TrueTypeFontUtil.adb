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
      This.preResourceImageUtil := PreResourceImageUtil_Package.getInstance;
      This.widthFloatArray := null;
      This.fontImage := OpenGLESImage_Package.NULL_OPENGL_IMAGE;
      
   end Initialize_Fields;


   function getInstance return TrueTypeFontUtil_Access is
   begin
        return TrueTypeFontUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TrueTypeFontUtil'Class) is
   begin
        TrueTypeFontUtilBase_Package.Initialize (This, 2);
        Initialize_Fields (This);
        if AvianUtil_Package.isAvian then
            This.widthFloatArray := new Float_Array'(1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0);
        else
            This.widthFloatArray := new Float_Array'(1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0);
        end if;
        This.widthScale := (if ((This.scale) = (2)) then 1.2 else 1.0);
   end Initialize;

   function Create return TrueTypeFontUtil_Access is
      This : constant TrueTypeFontUtil_Access := new TrueTypeFontUtil;
   begin
      TrueTypeFontUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class) return Image_Access is
      gl : GL10_Access := GL10_Access (gl_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      canvasStrings : CanvasStrings_Access;
      openGLCapabilities : OpenGLCapabilities_Access;
      FONT_ATLAS_512 : Unbounded_String;
      image : Image_Access;
      FONT_ATLAS_1024 : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (This.fontImage) = (OpenGLESImage_Package.NULL_OPENGL_IMAGE) then
                canvasStrings := CanvasStrings_Package.getInstance;
                openGLCapabilities := OpenGLCapabilities_Package.getInstance;
                if (openGLCapabilities.isTextureSizeValid (1024)) and then ((This.scale) = (2)) then
                    FONT_ATLAS_1024 := To_Unbounded_String ("/font_1024.png");
                    image := Image_Package.createImage (ResourceUtil_Package.getInstance.getResourceAsStream (FONT_ATLAS_1024));
                    image.setName (canvasStrings.FONT_ATLAS);
                    This.fontImage := OpenGLESImage_Access (This.preResourceImageUtil.encapsulate (image));
                elsif openGLCapabilities.isTextureSizeValid (512) then
                    FONT_ATLAS_512 := To_Unbounded_String ("/font_512.png");
                    image := Image_Package.createImage (ResourceUtil_Package.getInstance.getResourceAsStream (FONT_ATLAS_512));
                    image.setName (canvasStrings.FONT_ATLAS);
                    This.fontImage := OpenGLESImage_Access (This.preResourceImageUtil.encapsulate (image));
                else
                    FONT_ATLAS_512 := To_Unbounded_String ("/font_512.png");
                    image := Image_Package.createImage (ResourceUtil_Package.getInstance.getResourceAsStream (FONT_ATLAS_512));
                    image.setName (canvasStrings.FONT_ATLAS);
                    This.fontImage := OpenGLESImage_Access (This.preResourceImageUtil.encapsulate (image));
                end if;
                return This.fontImage;
            else
                return This.fontImage;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, TrueTypeFontUtil_Access'(This'Unchecked_Access), commonStrings.EXCEPTION_Id, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end getFontBitmapGL;

   procedure saveFontAtlasAsFile (This : in out TrueTypeFontUtil) is
      image : Image_Access;
      imageLoader : ImageLoader_Access;
      imageData : ImageData_Access;
   begin
        image := This.getFontBitmap (null, This.cellSize, BasicColorFactory_Package.getInstance.WHITE);
        imageLoader := ImageLoader_Package.Create;
        imageData := (SwtMutableImage_Access (image)).image.getImageData;
        imageData.transparentPixel := imageData.getPixel (0, 0);
        imageLoader.data := new ImageData_Access_Array'(0 => imageData);
        imageLoader.save ((CommonSeps_Package.getInstance.PERIOD) + (CanvasStrings_Package.getInstance.FONT_ATLAS), SWT_Package.IMAGE_PNG);
   end saveFontAtlasAsFile;

   function getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class) return Image_Access is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      cellsPerRow2 : Integer;
      cellsPerRow3 : Integer;
      cellsPerRow4 : Integer;
      cellsPerRow5 : Integer;
      cellsPerRow6 : Integer;
      cellsPerRow7 : Integer;
      image : Image_Access;
      graphics : Graphics_Access;
      biggestHeight : Integer;
      bounds : Rectangle_Access;
      x : Integer;
      y : Integer;
      index : Integer;
   begin
        cellsPerRow2 := (This.CELLS_PER_ROW) * (2);
        cellsPerRow3 := (This.CELLS_PER_ROW) * (3);
        cellsPerRow4 := (This.CELLS_PER_ROW) * (4);
        cellsPerRow5 := (This.CELLS_PER_ROW) * (5);
        cellsPerRow6 := (This.CELLS_PER_ROW) * (6);
        cellsPerRow7 := (This.CELLS_PER_ROW) * (7);
        image := Image_Package.createImage (This.textureSize, This.textureSize);
        graphics := image.getGraphics;
        graphics.setColor (basicColor.intValue);
        biggestHeight := 0;
        bounds := Rectangle_Package.Create (PointFactory_Package.getInstance.createXY (0, 0), cellSize, cellSize);
        x := 0;
        y := 0;
        for index in 0 .. (This.size) - 1 loop
            This.characterArray (0) := This.pattern.charAt (index);
            This.U_characterWidth (index) := bounds.getMaxX;
            if ((bounds.getMaxY) - (bounds.getPoint.getX)) > (biggestHeight) then
                biggestHeight := (bounds.getMaxY) - (bounds.getPoint.getX);
            end if;
            x := (((index) rem (This.CELLS_PER_ROW))) * (cellSize);
            x := (x) + ((Java_Shift_Right_Arithmetic (cellSize, 1)));
            x := (x) - ((Java_Shift_Right_Arithmetic (This.U_characterWidth (index), 1)));
            y := -((Java_Shift_Right_Arithmetic (cellSize, 1)));
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
            graphics.drawChar (This.characterArray (0), x, y, 0);
        end loop;
        return image;
   end getFontBitmap;

   function getFontWidths (This : in out TrueTypeFontUtil; filename : Unbounded_String; fontSize : Integer) return Integer_Array_Access is
      commonStrings : CommonStrings_Access;
      shortPatternIndex : Integer;
      w : Integer;
      index : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        for index in 0 .. (This.size) - 1 loop
            This.characterArray (0) := This.pattern.charAt (index);
            if (This.characterArray (0)) = (' ') then
                This.U_characterWidth (index) := ((fontSize) / (4));
            else
                shortPatternIndex := This.shortPattern.indexOf (This.characterArray (0));
                w := (Integer (((This.widthFloatArray (shortPatternIndex)) / (75.0)))) + (19);
                This.U_characterWidth (index) := w;
                if ((This.characterArray (0)) = ('.')) or else ((This.characterArray (0)) = ('1')) then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) + (4);
                end if;
                if ((This.characterArray (0)) >= ('a')) and then ((This.characterArray (0)) < ('k')) then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) - (2);
                end if;
                if ((This.characterArray (0)) >= ('k')) and then ((This.characterArray (0)) < ('v')) then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) - (4);
                end if;
                if ((This.characterArray (0)) >= ('v')) and then ((This.characterArray (0)) < ('z')) then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) - (8);
                end if;
                if (This.characterArray (0)) = ('D') then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) - (4);
                end if;
                if ((This.characterArray (0)) >= ('A')) and then ((This.characterArray (0)) <= ('Z')) then
                    This.U_characterWidth (index) := (This.U_characterWidth (index)) - (2);
                end if;
            end if;
            This.U_characterWidth (index) := (This.U_characterWidth (index)) * (This.widthScale);
        end loop;
        return This.U_characterWidth;
   end getFontWidths;

   procedure getFontBitmapGL (This : in out TrueTypeFontUtil; gl_Param : access GL10'Class; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmapGL (gl_Param, filename, cellSize, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmapGL;

   procedure getFontBitmap (This : in out TrueTypeFontUtil; filename : Unbounded_String; cellSize : Integer; basicColor_Param : access BasicColor'Class) is
      Java_Result : constant Image_Access := TrueTypeFontUtil'Class (This).getFontBitmap (filename, cellSize, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFontBitmap;

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


