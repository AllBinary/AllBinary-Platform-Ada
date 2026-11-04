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


with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package; use org.allbinary.media.image.analysis.ColorAverage_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package;
with org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package;

package body org.allbinary.media.image.analysis.ImageColorResults_Package is

   subtype ColorRange_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access;
   function "=" (Left, Right : ColorRange_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array;
   function "=" (Left, Right : ColorRange_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access;
   function "=" (Left, Right : ColorRange_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array;
   function "=" (Left, Right : ColorRange_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorRange_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorAverage_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access;
   function "=" (Left, Right : ColorAverage_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array;
   function "=" (Left, Right : ColorAverage_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access;
   function "=" (Left, Right : ColorAverage_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAverage_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   subtype ColorAverage_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAverage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorAverage_Package_References."=";
   procedure Initialize_Fields (This : in out ImageColorResults'Class) is
   begin
      null;
      This.colorRange := null;
      This.colorAverage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageColorResults'Class) is
   begin
      Initialize_Fields (This);
        ImageColorResults'Class (This).setColorRange (ColorRange_Package.Create);
        ImageColorResults'Class (This).getColorRange.setMaxRed (-(1));
        ImageColorResults'Class (This).getColorRange.setMaxGreen (-(1));
        ImageColorResults'Class (This).getColorRange.setMaxBlue (-(1));
        ImageColorResults'Class (This).getColorRange.setMinRed (256);
        ImageColorResults'Class (This).getColorRange.setMinGreen (256);
        ImageColorResults'Class (This).getColorRange.setMinBlue (256);
        ImageColorResults'Class (This).setColorAverage (ColorAverage_Package.Create);
   end Initialize;

   function Create return ImageColorResults_Access is
      This : constant ImageColorResults_Access := new ImageColorResults;
   begin
      ImageColorResults_Package.Initialize (This.all);
      return This;
   end Create;

   function getColorRange (This : in out ImageColorResults) return ColorRange_Access is
   begin
        return This.colorRange;
   end getColorRange;

   procedure setColorRange (This : in out ImageColorResults; colorRange_Param : access ColorRange_Package.ColorRange'Class) is
      colorRange : constant ColorRange_Access := ColorRange_Access (colorRange_Param);
   begin
        This.colorRange := colorRange;
   end setColorRange;

   function getColorAverage (This : in out ImageColorResults) return ColorAverage_Access is
   begin
        return This.colorAverage;
   end getColorAverage;

   procedure setColorAverage (This : in out ImageColorResults; colorAverage_Param : access ColorAverage_Package.ColorAverage'Class) is
      colorAverage : constant ColorAverage_Access := ColorAverage_Access (colorAverage_Param);
   begin
        This.colorAverage := colorAverage;
   end setColorAverage;

end org.allbinary.media.image.analysis.ImageColorResults_Package;


