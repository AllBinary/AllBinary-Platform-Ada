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


with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package;

package body org.allbinary.media.image.analysis.ImageColorRangeResults_Package is

   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   function "=" (Left, Right : ColorRangeInterface_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   function "=" (Left, Right : ColorRangeInterface_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorRangeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRangeInterface_Package_References."=";
   procedure Initialize_Fields (This : in out ImageColorRangeResults'Class) is
   begin
      null;
      This.colorRangeInterface := null;
      This.matchingPixelsChecked := 0;
      This.totalPixelsChecked := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageColorRangeResults'Class) is
   begin
      Initialize_Fields (This);
        ImageColorRangeResults'Class (This).setColorRangeInterface (ColorRangeInterface_Access (ColorRange_Package.Create));
   end Initialize;

   function Create return ImageColorRangeResults_Access is
      This : constant ImageColorRangeResults_Access := new ImageColorRangeResults;
   begin
      ImageColorRangeResults_Package.Initialize (This.all);
      return This;
   end Create;

   function getColorRangeInterface (This : in out ImageColorRangeResults) return ColorRangeInterface_Access is
   begin
        return This.colorRangeInterface;
   end getColorRangeInterface;

   procedure setColorRangeInterface (This : in out ImageColorRangeResults; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
   begin
        This.colorRangeInterface := colorRangeInterface;
   end setColorRangeInterface;

   function getMatchingPixelsChecked (This : in out ImageColorRangeResults) return Long_Long_Integer is
   begin
        return This.matchingPixelsChecked;
   end getMatchingPixelsChecked;

   procedure setMatchingPixelsChecked (This : in out ImageColorRangeResults; matchingPixelsChecked : Long_Long_Integer) is
   begin
        This.matchingPixelsChecked := matchingPixelsChecked;
   end setMatchingPixelsChecked;

   procedure addMatchingPixelsChecked (This : in out ImageColorRangeResults) is
   begin
        This.matchingPixelsChecked := This.matchingPixelsChecked + 1;
   end addMatchingPixelsChecked;

   function getTotalPixelsChecked (This : in out ImageColorRangeResults) return Long_Long_Integer is
   begin
        return This.totalPixelsChecked;
   end getTotalPixelsChecked;

   procedure addTotalPixelsChecked (This : in out ImageColorRangeResults) is
   begin
        This.totalPixelsChecked := This.totalPixelsChecked + 1;
   end addTotalPixelsChecked;

   procedure setTotalPixelsChecked (This : in out ImageColorRangeResults; totalPixelsChecked : Long_Long_Integer) is
   begin
        This.totalPixelsChecked := totalPixelsChecked;
   end setTotalPixelsChecked;

   function getPercent (This : in out ImageColorRangeResults) return Float is
   begin
        return ((Float (ImageColorRangeResults'Class (This).getMatchingPixelsChecked)) / (Float (ImageColorRangeResults'Class (This).getTotalPixelsChecked)));
   end getPercent;

end org.allbinary.media.image.analysis.ImageColorRangeResults_Package;


