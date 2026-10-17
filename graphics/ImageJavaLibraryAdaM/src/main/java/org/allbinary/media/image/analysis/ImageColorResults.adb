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


package body org.allbinary.media.image.analysis.ImageColorResults_Package is

   procedure Initialize_Fields (This : in out ImageColorResults'Class) is
   begin
      null;
      This.colorRange := null;
      This.colorAverage := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageColorResults'Class) is
   begin
      Initialize_Fields (This);
        This.setColorRange (ColorRange_Package.Create);
        This.getColorRange.setMaxRed (-(1));
        This.getColorRange.setMaxGreen (-(1));
        This.getColorRange.setMaxBlue (-(1));
        This.getColorRange.setMinRed (256);
        This.getColorRange.setMinGreen (256);
        This.getColorRange.setMinBlue (256);
        This.setColorAverage (ColorAverage_Package.Create);
   end Initialize;

   function Create return ImageColorResults_Access is
      This : constant ImageColorResults_Access := new ImageColorResults;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getColorRange (This : in out ImageColorResults) return ColorRange_Access is
   begin
        return This.colorRange;
   end getColorRange;

   procedure setColorRange (This : in out ImageColorResults; colorRange : ColorRange_Access) is
   begin
        This.colorRange := colorRange;
   end setColorRange;

   function getColorAverage (This : in out ImageColorResults) return ColorAverage_Access is
   begin
        return This.colorAverage;
   end getColorAverage;

   procedure setColorAverage (This : in out ImageColorResults; colorAverage : ColorAverage_Access) is
   begin
        This.colorAverage := colorAverage;
   end setColorAverage;

   procedure getColorRange (This : in out ImageColorResults) is
      Java_Result : constant ColorRange_Access := ImageColorResults'Class (This).getColorRange;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColorRange;

   procedure getColorAverage (This : in out ImageColorResults) is
      Java_Result : constant ColorAverage_Access := ImageColorResults'Class (This).getColorAverage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColorAverage;

end org.allbinary.media.image.analysis.ImageColorResults_Package;


