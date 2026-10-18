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
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package; use org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;

package body org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package is

   package ImageOutputData_Package renames Standard.org.allbinary.input.automation.ImageOutputData_Package;
   package LongUtil_Package renames Standard.org.allbinary.logic.java.number.LongUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package MediaDataFactory_Package renames Standard.org.allbinary.logic.visual.media.MediaDataFactory_Package;
   package ImagePersistanceUtil_Package renames Standard.org.allbinary.media.image.ImagePersistanceUtil_Package;
   package ImageUtil_Package renames Standard.org.allbinary.media.image.ImageUtil_Package;
   package BufferedImageFrameCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out CapturedImageInputOutput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CapturedImageInputOutput'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CapturedImageInputOutput_Access is
      This : constant CapturedImageInputOutput_Access := new CapturedImageInputOutput;
   begin
      CapturedImageInputOutput_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure save (This : in out CapturedImageInputOutput; frame : Long_Long_Integer) is
      commonStrings : CommonStrings_Access;
      capturedBufferedImageCacheable : BufferedImageFrameCacheable_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        capturedBufferedImageCacheable := (BufferedImageFrameCacheable_Access ((AutomaticCacheInterface_Access (CapturedBufferedImagesCacheSingleton_Package.getInstance)).get (frame)));
        This.logUtil.putF ((To_Unbounded_String ("Saving: ") & capturedBufferedImageCacheable.toString), CapturedImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
        CapturedImageInputOutput'Class (This).save (capturedBufferedImageCacheable.getBufferedImage, frame);
   end save;

   procedure save (This : in out CapturedImageInputOutput; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; frame : Long_Long_Integer) is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      commonStrings : CommonStrings_Access;
      imageUtil : ImageUtil_Access;
      filePathStringBuffer : StringMaker_Access;
      filePath : Unbounded_String;
      imagePersistanceUtil : ImagePersistanceUtil_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        imageUtil := ImageUtil_Package.getInstance;
        filePathStringBuffer := StringMaker_Package.Create;
        filePathStringBuffer.append (ImageOutputData_Package.SAVE_PATH);
        filePathStringBuffer.append (LongUtil_Package.fillIn (To_Unbounded_String (Java_Image (frame))));
        filePathStringBuffer.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePath := filePathStringBuffer.toString;
        This.logUtil.putF ((To_Unbounded_String ("Image File Path: ") & filePath & imageUtil.toString (bufferedImage)), CapturedImageInputOutput_Access'(This'Unchecked_Access), commonStrings.SAVE);
        imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
        imagePersistanceUtil.saveWithImageIO (filePath, bufferedImage);
   end save;

end org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;


