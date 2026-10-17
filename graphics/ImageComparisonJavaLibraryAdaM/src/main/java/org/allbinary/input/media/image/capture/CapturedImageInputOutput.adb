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


package body org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package is

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
        This.logUtil.putF ((To_Unbounded_String ("Saving: ") & capturedBufferedImageCacheable.toString), This'Unchecked_Access, commonStrings.SAVE);
        This.save (capturedBufferedImageCacheable.getBufferedImage, frame);
   end save;

   procedure save (This : in out CapturedImageInputOutput; bufferedImage : BufferedImage_Access; frame : Long_Long_Integer) is
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
        filePathStringBuffer.append (LongUtil_Package.fillIn (frame.toString));
        filePathStringBuffer.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePath := filePathStringBuffer.toString;
        This.logUtil.putF ((To_Unbounded_String ("Image File Path: ") & filePath & imageUtil.toString (bufferedImage)), This'Unchecked_Access, commonStrings.SAVE);
        imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
        imagePersistanceUtil.saveWithImageIO (filePath, bufferedImage);
   end save;

end org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;


