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


package body org.allbinary.media.image.comparison.ImageComparisonResult_Package is

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


   procedure Initialize (This : in out ImageComparisonResult'Class; name : Unbounded_String; bufferedImage : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) is
      imageHeight : Integer;
      imageWidth : Integer;
      imageUtil : ImageUtil_Access;
   begin
      Initialize_Fields (This);
        This.name := name;
        This.nonMatchingPixelVector := BasicArrayListD_Package.Create;
        This.bufferedImages (0) := bufferedImage;
        This.bufferedImages (1) := bufferedImage2;
        This.frameOne := frameOne;
        This.frameTwo := frameTwo;
        This.setTolerance (0);
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
            This.logUtil.putF (To_Unbounded_String ("Images were not the same size? Most likely a resolution change."), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("1: ") & imageUtil.toString (bufferedImage), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            This.logUtil.putF (To_Unbounded_String ("2: ") & imageUtil.toString (bufferedImage2), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; bufferedImage : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access is
      This : constant ImageComparisonResult_Access := new ImageComparisonResult;
   begin
      Initialize (This.all, name, bufferedImage, bufferedImage2, frameOne, frameTwo, tolerance);
      return This;
   end Create;

   function getMatchingPercent (This : in out ImageComparisonResult) return Float is
   begin
        if (This.matchingPercent) = (Float (-(1))) then
            This.matchingPercent := (Float (This.pixelsThatMatch)) / (Float (((This.imageWidth) * (This.imageHeight))));
        end if;
        return This.matchingPercent;
   end getMatchingPercent;

   procedure add (This : in out ImageComparisonResult; pixel : PixelDelta_Access) is
   begin
        This.nonMatchingPixelVector.add (pixel);
   end add;

   function getNonMatchingPixelVector (This : in out ImageComparisonResult) return BasicArrayList_Access is
   begin
        return This.nonMatchingPixelVector;
   end getNonMatchingPixelVector;

   function toString (This : in out ImageComparisonResult) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("ImageComparisonInfo: ")).append (This.name).append (To_Unbounded_String (" Number Of Matching Pixels: ")).appendint (This.pixelsThatMatch).append (To_Unbounded_String ("" & ASCII.LF & "Number Of Non-Matching Pixels: ")).appendint (This.getNonMatchingPixelVector.size).append (To_Unbounded_String ("" & ASCII.LF & "Number Of Pixels Ignored: ")).appendint (This.pixelsIgnored).append (To_Unbounded_String ("" & ASCII.LF & "Matching Percentage: ")).appendfloat (This.getMatchingPercent).toString;
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

   procedure getMatchingPercent (This : in out ImageComparisonResult) is
      Java_Result : constant Float := ImageComparisonResult'Class (This).getMatchingPercent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMatchingPercent;

   procedure getNonMatchingPixelVector (This : in out ImageComparisonResult) is
      Java_Result : constant BasicArrayList_Access := ImageComparisonResult'Class (This).getNonMatchingPixelVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNonMatchingPixelVector;

   procedure toString (This : in out ImageComparisonResult) is
      Java_Result : constant Unbounded_String := ImageComparisonResult'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getBufferedImages (This : in out ImageComparisonResult) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageComparisonResult'Class (This).getBufferedImages;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBufferedImages;

   procedure getTolerance (This : in out ImageComparisonResult) is
      Java_Result : constant Integer := ImageComparisonResult'Class (This).getTolerance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTolerance;

   procedure getFrameOne (This : in out ImageComparisonResult) is
      Java_Result : constant Long_Long_Integer := ImageComparisonResult'Class (This).getFrameOne;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameOne;

   procedure getFrameTwo (This : in out ImageComparisonResult) is
      Java_Result : constant Long_Long_Integer := ImageComparisonResult'Class (This).getFrameTwo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrameTwo;

end org.allbinary.media.image.comparison.ImageComparisonResult_Package;


