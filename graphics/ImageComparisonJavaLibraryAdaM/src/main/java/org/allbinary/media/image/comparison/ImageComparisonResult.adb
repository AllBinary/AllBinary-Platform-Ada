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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;

package body org.allbinary.media.image.comparison.ImageComparisonResult_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ImageUtil_Package renames Standard.org.allbinary.media.image.ImageUtil_Package;
   procedure Initialize_Fields (This : in out ImageComparisonResult'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.bufferedImages := new BufferedImage_Access_Array'(0 .. (2) - 1 => null);
      
      This.isSameHeight := False;
      This.isSameWidth := False;
      
      
      
      
      
      This.pixelsThatMatch := 0;
      This.pixelsIgnored := 0;
      This.tolerance := 0;
      This.matchingPercent := Float (-(1));
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonResult'Class; name : Unbounded_String; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      bufferedImage2 : constant BufferedImage_Access := BufferedImage_Access (bufferedImage2_Param);
      imageHeight : Integer;
      imageWidth : Integer;
      imageUtil : ImageUtil_Access;
   begin
      Initialize_Fields (This);
        This.name := name;
        This.nonMatchingPixelVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.bufferedImages (0) := bufferedImage;
        This.bufferedImages (1) := bufferedImage2;
        This.frameOne := frameOne;
        This.frameTwo := frameTwo;
        ImageComparisonResult'Class (This).setTolerance (0);
        imageHeight := bufferedImage.getHeight;
        imageWidth := bufferedImage.getWidth;
        if (bufferedImage.getHeight) /= (bufferedImage2.getHeight) then
            This.isSameHeight := False;
            if (imageHeight) > (bufferedImage2.getHeight) then
                imageHeight := bufferedImage2.getHeight;
            end if;
        else
            This.isSameHeight := True;
        end if;
        if (bufferedImage.getWidth) /= (bufferedImage2.getWidth) then
            This.isSameWidth := False;
            if (imageWidth) > (bufferedImage2.getWidth) then
                imageWidth := bufferedImage2.getWidth;
            end if;
        else
            This.isSameWidth := True;
        end if;
        This.imageWidth := imageWidth;
        This.imageHeight := imageHeight;
        if (not (This.isSameWidth)) or else (not (This.isSameHeight)) then
            imageUtil := ImageUtil_Package.getInstance;
            This.logUtil.putF (To_Unbounded_String ("Images were not the same size? Most likely a resolution change."), ImageComparisonResult_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("1: ") & imageUtil.toString (bufferedImage), ImageComparisonResult_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("2: ") & imageUtil.toString (bufferedImage2), ImageComparisonResult_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access is
      This : constant ImageComparisonResult_Access := new ImageComparisonResult;
   begin
      ImageComparisonResult_Package.Initialize (This.all, name, bufferedImage_Param, bufferedImage2_Param, frameOne, frameTwo, tolerance);
      return This;
   end Create;

   function getMatchingPercent (This : in out ImageComparisonResult) return Float is
   begin
        if (This.matchingPercent) = (Float (-(1))) then
            This.matchingPercent := (Float (This.pixelsThatMatch)) / (Float (((This.imageWidth) * (This.imageHeight))));
        end if;
        return This.matchingPercent;
   end getMatchingPercent;

   procedure add (This : in out ImageComparisonResult; pixel_Param : access PixelDelta_Package.PixelDelta'Class) is
      pixel : constant PixelDelta_Access := PixelDelta_Access (pixel_Param);
   begin
        This.nonMatchingPixelVector.add (Java_Object_Access (pixel));
   end add;

   function getNonMatchingPixelVector (This : in out ImageComparisonResult) return BasicArrayList_Access is
   begin
        return This.nonMatchingPixelVector;
   end getNonMatchingPixelVector;

   function toString (This : in out ImageComparisonResult) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("ImageComparisonInfo: ")).append (This.name).append (To_Unbounded_String (" Number Of Matching Pixels: ")).appendint (This.pixelsThatMatch).append (To_Unbounded_String ("" & ASCII.LF & "Number Of Non-Matching Pixels: ")).appendint (ImageComparisonResult'Class (This).getNonMatchingPixelVector.size).append (To_Unbounded_String ("" & ASCII.LF & "Number Of Pixels Ignored: ")).appendint (This.pixelsIgnored).append (To_Unbounded_String ("" & ASCII.LF & "Matching Percentage: ")).appendfloat (ImageComparisonResult'Class (This).getMatchingPercent).toString;
   end toString;

   function getBufferedImages (This : in out ImageComparisonResult) return BufferedImage_Access_Array_Access is
   begin
        return This.bufferedImages;
   end getBufferedImages;

   function getTolerance (This : in out ImageComparisonResult) return Integer is
   begin
        return This.tolerance;
   end getTolerance;

   procedure setTolerance (This : in out ImageComparisonResult; tolerance : Integer) is
   begin
        This.tolerance := tolerance;
   end setTolerance;

   function getFrameOne (This : in out ImageComparisonResult) return Long_Long_Integer is
   begin
        return This.frameOne;
   end getFrameOne;

   function getFrameTwo (This : in out ImageComparisonResult) return Long_Long_Integer is
   begin
        return This.frameTwo;
   end getFrameTwo;

end org.allbinary.media.image.comparison.ImageComparisonResult_Package;


