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


with org.allbinary.input.automation.ImageOutputData_Package; use org.allbinary.input.automation.ImageOutputData_Package;
with org.allbinary.logic.java.number.LongUtil_Package; use org.allbinary.logic.java.number.LongUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.visual.media.MediaDataFactory_Package; use org.allbinary.logic.visual.media.MediaDataFactory_Package;
with org.allbinary.media.image.ImagePersistanceUtil_Package; use org.allbinary.media.image.ImagePersistanceUtil_Package;
with org.allbinary.media.image.cache.BufferedImageCacheable_Package; use org.allbinary.media.image.cache.BufferedImageCacheable_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package; use org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package; use org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;
with org.allbinary.media.image.comparison.ChangedPixelsUtil_Package; use org.allbinary.media.image.comparison.ChangedPixelsUtil_Package;

package body org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package is

   package ImageOutputData_Package renames Standard.org.allbinary.input.automation.ImageOutputData_Package;
   package LongUtil_Package renames Standard.org.allbinary.logic.java.number.LongUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package MediaDataFactory_Package renames Standard.org.allbinary.logic.visual.media.MediaDataFactory_Package;
   package ImagePersistanceUtil_Package renames Standard.org.allbinary.media.image.ImagePersistanceUtil_Package;
   package BufferedImageCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageCacheable_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ComparisonImageInputOutput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ComparisonImageInputOutput'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ComparisonImageInputOutput_Access is
      This : constant ComparisonImageInputOutput_Access := new ComparisonImageInputOutput;
   begin
      ComparisonImageInputOutput_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure save (This : in out ComparisonImageInputOutput; frame : Long_Long_Integer) is
      commonStrings : CommonStrings_Access;
      imageComparisonResultFrameCacheable : ImageComparisonResultFrameCacheable_Access;
      imageComparisonResult : ImageComparisonResult_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        if (frame) > (0) then
            imageComparisonResultFrameCacheable := ImageComparisonResultFrameCacheable_Access ((AutomaticCacheInterface_Access (ImageComparisonResultCacheSingleton_Package.getInstance)).get (frame));
            if (imageComparisonResultFrameCacheable) /= (null) then
                imageComparisonResult := imageComparisonResultFrameCacheable.getImageComparisonResult;
                ComparisonImageInputOutput'Class (This).save (imageComparisonResult, imageComparisonResultFrameCacheable.getFrame);
            else
                This.logUtil.putF (To_Unbounded_String ("Comparison Results Not Available for Output: ") & Java_Image (frame), ComparisonImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
            end if;
        else
            This.logUtil.putF (To_Unbounded_String ("No Comparison Results: for first frame: ") & Java_Image (frame), ComparisonImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
        end if;
   end save;

   --  throws Exception
   procedure save (This : in out ComparisonImageInputOutput; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; frame : Long_Long_Integer) is
      imageComparisonResult : constant ImageComparisonResult_Access := ImageComparisonResult_Access (imageComparisonResult_Param);
      commonStrings : CommonStrings_Access;
      filePathStringBuffer : StringMaker_Access;
      filePathStringBuffer1 : StringMaker_Access;
      filePath1 : Unbounded_String;
      filePathStringBuffer2 : StringMaker_Access;
      filePath2 : Unbounded_String;
      bufferedImageCacheables : BufferedImageCacheable_Access_Array_Access;
      bufferedImageArray : BufferedImage_Access_Array_Access;
      imagePersistanceUtil : ImagePersistanceUtil_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        filePathStringBuffer := StringMaker_Package.Create;
        filePathStringBuffer.append (ImageOutputData_Package.SAVE_PATH);
        filePathStringBuffer.append (LongUtil_Package.fillIn (To_Unbounded_String (Java_Image (frame))));
        filePathStringBuffer.append (ComparisonImageInputOutput_Package.ROOT_NAME);
        filePathStringBuffer1 := StringMaker_Package.Create;
        filePathStringBuffer1.append (filePathStringBuffer.toString);
        filePathStringBuffer1.append (To_Unbounded_String ("_1"));
        filePathStringBuffer1.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePath1 := filePathStringBuffer1.toString;
        filePathStringBuffer2 := StringMaker_Package.Create;
        filePathStringBuffer2.append (filePathStringBuffer.toString);
        filePathStringBuffer2.append (To_Unbounded_String ("_2"));
        filePathStringBuffer2.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePath2 := filePathStringBuffer2.toString;
        bufferedImageCacheables := ChangedPixelsUtil_Package.generateBufferedImageChacheables (imageComparisonResult);
        This.logUtil.putF (To_Unbounded_String ("Comparison Image File Path 1: ") & filePath1, ComparisonImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
        This.logUtil.putF (To_Unbounded_String ("Comparison Image File Path 2: ") & filePath2, ComparisonImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
        bufferedImageArray := new BufferedImage_Access_Array'(0 .. (2) - 1 => null);
        bufferedImageArray (0) := bufferedImageCacheables (0).getBufferedImage;
        bufferedImageArray (1) := bufferedImageCacheables (1).getBufferedImage;
        imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
        imagePersistanceUtil.saveWithImageIO (filePath1, bufferedImageArray (0));
        imagePersistanceUtil.saveWithImageIO (filePath2, bufferedImageArray (1));
   end save;

begin
   null;
   ROOT_NAME := To_Unbounded_String ("_Changed_");

end org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;


