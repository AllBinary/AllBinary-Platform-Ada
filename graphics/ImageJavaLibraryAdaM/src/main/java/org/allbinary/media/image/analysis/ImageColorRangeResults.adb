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


package body org.allbinary.media.image.analysis.ImageColorRangeResults_Package is

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
        This.setColorRangeInterface (ColorRangeInterface_Access (ColorRange_Package.Create));
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

   procedure setColorRangeInterface (This : in out ImageColorRangeResults; colorRangeInterface : ColorRangeInterface_Access) is
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
        return ((Float (This.getMatchingPixelsChecked)) / (Float (This.getTotalPixelsChecked)));
   end getPercent;

end org.allbinary.media.image.analysis.ImageColorRangeResults_Package;


