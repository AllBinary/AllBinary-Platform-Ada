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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package; use org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.search.ImageComparisonSearch_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageUtil_Package renames Standard.org.allbinary.media.image.ImageUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
   subtype PixelDelta_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access;
   function "=" (Left, Right : PixelDelta_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array;
   function "=" (Left, Right : PixelDelta_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access;
   function "=" (Left, Right : PixelDelta_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array;
   function "=" (Left, Right : PixelDelta_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PixelDelta_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out ImageComparisonSearch'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.isSameHeight := False;
      This.isSameWidth := False;
      This.pixelsThatMatch := 0;
      This.pixelsIgnored := 0;
      
      
      This.tolerance := 0;
      
      This.bufferedImages := null;
      This.matchingPercent := Float (-(1));
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonSearch'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; tolerance : Integer) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      bufferedImage2 : constant BufferedImage_Access := BufferedImage_Access (bufferedImage2_Param);
      imageUtil : ImageUtil_Access;
   begin
      Initialize_Fields (This);
        This.nonMatchingPixelVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        ImageComparisonSearch'Class (This).setBufferedImages (new BufferedImage_Access_Array'(0 .. (2) - 1 => null));
        ImageComparisonSearch'Class (This).getBufferedImages (0) := bufferedImage;
        ImageComparisonSearch'Class (This).getBufferedImages (1) := bufferedImage2;
        This.imageHeight := bufferedImage.getHeight;
        This.imageWidth := bufferedImage.getWidth;
        if (bufferedImage.getHeight) /= (bufferedImage2.getHeight) then
            This.isSameHeight := False;
            if (This.imageHeight) > (bufferedImage2.getHeight) then
                This.imageHeight := bufferedImage2.getHeight;
            end if;
        else
            This.isSameHeight := True;
        end if;
        if (bufferedImage.getWidth) /= (bufferedImage2.getWidth) then
            This.isSameWidth := False;
            if (This.imageWidth) > (bufferedImage2.getWidth) then
                This.imageWidth := bufferedImage2.getWidth;
            end if;
        else
            This.isSameWidth := True;
        end if;
        if (not (This.isSameWidth)) or else (not (This.isSameHeight)) then
            imageUtil := ImageUtil_Package.getInstance;
            This.logUtil.putF (To_Unbounded_String ("Images were not the same size? Most likely a resolution change."), ImageComparisonSearch_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("1: ") & imageUtil.toString (bufferedImage), ImageComparisonSearch_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("2: ") & imageUtil.toString (bufferedImage2), ImageComparisonSearch_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; tolerance : Integer) return ImageComparisonSearch_Access is
      This : constant ImageComparisonSearch_Access := new ImageComparisonSearch;
   begin
      ImageComparisonSearch_Package.Initialize (This.all, bufferedImage_Param, bufferedImage2_Param, tolerance);
      return This;
   end Create;

   function getMatchingPercent (This : in out ImageComparisonSearch) return Float is
   begin
        if (This.matchingPercent) = (Float (-(1))) then
            This.matchingPercent := (Float (This.pixelsThatMatch)) / (Float (((This.imageWidth) * (This.imageHeight))));
        end if;
        return This.matchingPercent;
   end getMatchingPercent;

   procedure add (This : in out ImageComparisonSearch; pixel_Param : access PixelDelta_Package.PixelDelta'Class) is
      pixel : constant PixelDelta_Access := PixelDelta_Access (pixel_Param);
   begin
        This.nonMatchingPixelVector.add (Java_Object_Access (pixel));
   end add;

   function getNonMatchingPixelVector (This : in out ImageComparisonSearch) return BasicArrayList_Access is
   begin
        return This.nonMatchingPixelVector;
   end getNonMatchingPixelVector;

   function toString (This : in out ImageComparisonSearch) return Unbounded_String is
   begin
        return To_Unbounded_String ("ImageComparisonInfo: ") & To_Unbounded_String (" Number Of Matching Pixels: ") & Java_Image (This.pixelsThatMatch) & To_Unbounded_String ("" & ASCII.LF & "Number Of Non-Matching Pixels: ") & Java_Image (ImageComparisonSearch'Class (This).getNonMatchingPixelVector.size) & To_Unbounded_String ("" & ASCII.LF & "Number Of Pixels Ignored: ") & Java_Image (This.pixelsIgnored) & To_Unbounded_String ("" & ASCII.LF & "Matching Percentage: ") & Java_Image (ImageComparisonSearch'Class (This).getMatchingPercent);
   end toString;

   function getBufferedImages (This : in out ImageComparisonSearch) return BufferedImage_Access_Array_Access is
   begin
        return This.bufferedImages;
   end getBufferedImages;

   procedure setBufferedImages (This : in out ImageComparisonSearch; bufferedImages : BufferedImage_Access_Array_Access) is
   begin
        This.bufferedImages := bufferedImages;
   end setBufferedImages;

   function getTolerance (This : in out ImageComparisonSearch) return Integer is
   begin
        return This.tolerance;
   end getTolerance;

   procedure setTolerance (This : in out ImageComparisonSearch; tolerance : Integer) is
   begin
        This.tolerance := tolerance;
   end setTolerance;

end org.allbinary.media.image.search.ImageComparisonSearch_Package;


