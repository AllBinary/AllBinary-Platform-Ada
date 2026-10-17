-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.emulator.device.TrueTypeFontUtilBase_Package is

   procedure Initialize_Fields (This : in out TrueTypeFontUtilBase'Class) is
   begin
      null;
      
      This.patternAsBytes := new Short_Short_Integer_Array'(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, Short_Short_Integer (-(62)), Short_Short_Integer (-(84)), Short_Short_Integer (-(62)), Short_Short_Integer (-(84)), 34, Short_Short_Integer (-(62)), Short_Short_Integer (-(93)), Short_Short_Integer (-(62)), Short_Short_Integer (-(93)), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, Short_Short_Integer (-(62)), Short_Short_Integer (-(82)), Short_Short_Integer (-(62)), Short_Short_Integer (-(82)), Short_Short_Integer (-(62)), Short_Short_Integer (-(87)), Short_Short_Integer (-(62)), Short_Short_Integer (-(87)));
      This.pattern := Java_New_String (This.patternAsBytes);
      This.charArray := new Short_Integer_Array'(16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#6f#, 16#50#, 16#56#, 16#6b#, 16#51#, 16#52#, 16#5a#, 16#6a#, 16#5c#, 16#60#, 16#5b#, 16#62#, 16#72#, 16#63#, 16#4b#, 16#73#, 16#1#, 16#2#, 16#3#, 16#4#, 16#5#, 16#6#, 16#7#, 16#8#, 16#9#, 16#a#, 16#6c#, 16#69#, 16#74#, 16#64#, 16#75#, 16#4c#, 16#70#, 16#b#, 16#c#, 16#10#, 16#11#, 16#12#, 16#13#, 16#14#, 16#15#, 16#16#, 16#17#, 16#18#, 16#19#, 16#1a#, 16#1b#, 16#1c#, 16#20#, 16#21#, 16#22#, 16#23#, 16#24#, 16#25#, 16#26#, 16#27#, 16#28#, 16#29#, 16#2a#, 16#65#, 16#76#, 16#66#, 16#59#, 16#61#, 16#53#, 16#2b#, 16#2c#, 16#30#, 16#31#, 16#32#, 16#33#, 16#34#, 16#35#, 16#36#, 16#37#, 16#38#, 16#39#, 16#3a#, 16#3b#, 16#3c#, 16#40#, 16#41#, 16#42#, 16#43#, 16#44#, 16#45#, 16#46#, 16#47#, 16#48#, 16#49#, 16#4a#, 16#67#, 16#77#, 16#68#, 16#71#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#58#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#7b#, 16#0#, 16#0#, 16#55#, 16#0#, 16#79#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#, 16#0#);
      This.U_characterWidth := new Integer_Array'(0 .. (Length (This.pattern)) - 1 => 0);
      This.characterArray := new Character_Array'(0 .. (1) - 1 => ASCII.NUL);
      This.size := Length (This.pattern);
      This.lastCapIndex := (Index (This.pattern, To_String ('Z')) - 1);
      This.currentFont := Font_Package.getDefaultFont;
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TrueTypeFontUtilBase'Class; scale : Integer) is
      shortPattern : Unbounded_String;
      shortPatterAsByteArray : Short_Short_Integer_Array_Access;
   begin
      Initialize_Fields (This);
        shortPattern := StringUtil_Package.getInstance.EMPTY_STRING;
        if AvianUtil_Package.isAvian then
            shortPatterAsByteArray := new Short_Short_Integer_Array'(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, Short_Short_Integer (-(62)), Short_Short_Integer (-(84)), Short_Short_Integer (-(62)), Short_Short_Integer (-(84)), 34, Short_Short_Integer (-(62)), Short_Short_Integer (-(93)), Short_Short_Integer (-(62)), Short_Short_Integer (-(93)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, Short_Short_Integer (-(62)), Short_Short_Integer (-(82)), Short_Short_Integer (-(62)), Short_Short_Integer (-(82)), Short_Short_Integer (-(62)), Short_Short_Integer (-(87)), Short_Short_Integer (-(62)), Short_Short_Integer (-(87)));
            shortPattern := Java_New_String (shortPatterAsByteArray);
        else
            shortPatterAsByteArray := new Short_Short_Integer_Array'(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, Short_Short_Integer (-(62)), Short_Short_Integer (-(84)), 34, Short_Short_Integer (-(62)), Short_Short_Integer (-(93)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, Short_Short_Integer (-(62)), Short_Short_Integer (-(82)), Short_Short_Integer (-(62)), Short_Short_Integer (-(87)));
            shortPattern := Java_New_String (shortPatterAsByteArray);
        end if;
        This.shortPattern := shortPattern;
        This.scale := scale;
        This.CELLS_PER_ROW := 16;
        This.fontSize := (((20) + (6))) * (This.scale);
        This.baseCharWidth := (This.fontSize) + (((6) * (This.scale)));
        This.cellSize := (This.fontSize) + (((6) * (This.scale)));
        This.textureSize := This.getAsTextureSize ((This.CELLS_PER_ROW) * (This.cellSize));
        This.actualCellsPerRow := (This.textureSize) / (This.cellSize);
   end Initialize;

   function Create (scale : Integer) return TrueTypeFontUtilBase_Access is
      This : constant TrueTypeFontUtilBase_Access := new TrueTypeFontUtilBase;
   begin
      Initialize (This.all, scale);
      return This;
   end Create;

   function getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) return Integer is
   begin
        if (textureSize) <= (64) then
            textureSize := 64;
        elsif (textureSize) <= (128) then
            textureSize := 128;
        elsif (textureSize) <= (256) then
            textureSize := 256;
        elsif (textureSize) <= (512) then
            textureSize := 512;
        elsif (textureSize) <= (1024) then
            textureSize := 1024;
        end if;
        return textureSize;
   end getAsTextureSize;

   function getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) return Integer is
   begin
        if (cellSize) <= (16) then
            cellSize := 16;
        elsif (cellSize) <= (32) then
            cellSize := 32;
        elsif (cellSize) <= (64) then
            cellSize := 64;
        elsif (cellSize) <= (128) then
            cellSize := 128;
        elsif (cellSize) <= (256) then
            cellSize := 256;
        end if;
        return cellSize;
   end getCellSize;

   function getYOffset (This : in out TrueTypeFontUtilBase) return Integer is
   begin
        return ((((This.scale) - (1))) * (This.cellSize));
   end getYOffset;

   procedure getAsTextureSize (This : in out TrueTypeFontUtilBase; textureSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtilBase'Class (This).getAsTextureSize (textureSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAsTextureSize;

   procedure getCellSize (This : in out TrueTypeFontUtilBase; cellSize : Integer) is
      Java_Result : constant Integer := TrueTypeFontUtilBase'Class (This).getCellSize (cellSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellSize;

   procedure getYOffset (This : in out TrueTypeFontUtilBase) is
      Java_Result : constant Integer := TrueTypeFontUtilBase'Class (This).getYOffset;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getYOffset;

end org.allbinary.emulator.device.TrueTypeFontUtilBase_Package;


