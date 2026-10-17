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


package body org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package is

   procedure Initialize_Fields (This : in out MotionRectanglesImageInputOutput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NUMBER_OF_IMAGES := 1;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesImageInputOutput'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MotionRectanglesImageInputOutput_Access is
      This : constant MotionRectanglesImageInputOutput_Access := new MotionRectanglesImageInputOutput;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure save (This : in out MotionRectanglesImageInputOutput; frame : Long_Long_Integer) is
      commonStrings : CommonStrings_Access;
      motionRectanglesResultsFrameCacheable : MotionRectanglesResultsFrameCacheable_Access;
      motionRectangles : MotionRectangles_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        motionRectanglesResultsFrameCacheable := MotionRectanglesResultsFrameCacheable_Access ((AutomaticCacheInterface_Access (AllMotionRectanglesResultsCacheSingleton_Package.getInstance)).get (frame));
        if (motionRectanglesResultsFrameCacheable) /= (null) then
            motionRectangles := motionRectanglesResultsFrameCacheable.getMotionRectangles;
            This.save (motionRectangles, frame);
            motionRectanglesResultsFrameCacheable := MotionRectanglesResultsFrameCacheable_Access ((AutomaticCacheInterface_Access (ConsolidatedMotionRectanglesResultsCacheSingleton_Package.getInstance)).get (frame));
            motionRectangles := motionRectanglesResultsFrameCacheable.getMotionRectangles;
            This.save (motionRectangles, frame);
            motionRectanglesResultsFrameCacheable := MotionRectanglesResultsFrameCacheable_Access ((AutomaticCacheInterface_Access (ConstrainedMotionRectanglesResultsCacheSingleton_Package.getInstance)).get (frame));
            motionRectangles := motionRectanglesResultsFrameCacheable.getMotionRectangles;
            This.save (motionRectangles, frame);
        else
            This.logUtil.putF (To_Unbounded_String ("No Motion Rectangle Results for Frame: ") & Java_Image (frame), This'Unchecked_Access, commonStrings.SAVE);
        end if;
   end save;

   --  throws Exception
   procedure save (This : in out MotionRectanglesImageInputOutput; motionRectangles : MotionRectangles_Access; frame : Long_Long_Integer) is
      commonStrings : CommonStrings_Access;
      filePathStringBuffer : StringMaker_Access;
      filePathStringBuffer1 : StringMaker_Access;
      filePathStringBuffer2 : StringMaker_Access;
      filePathStringBuffer3 : StringMaker_Access;
      bufferedImageCacheables : BufferedImageCacheable_Access_Array_Access;
      imageComparisonInfo : ImageComparisonResult_Access;
      originalBufferedImage : BufferedImage_Access;
      bufferedImageInfo : BufferedImageInfo_Access;
      poolInterface : PoolInterface_Access;
      index : Integer;
      bufferedImageGraphicsArray : Graphics_Access_Array_Access;
      rectangelList : BasicArrayList_Access;
      size : Integer;
      motionRectangle : MotionRectangle_Access;
      rectangle : Rectangle_Access;
      index2 : Integer;
      imagePersistanceUtil : ImagePersistanceUtil_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        filePathStringBuffer := StringMaker_Package.Create;
        filePathStringBuffer.append (ImageOutputData_Package.SAVE_PATH);
        filePathStringBuffer.append (LongUtil_Package.fillIn (frame.toString));
        filePathStringBuffer.append (To_Unbounded_String ("_"));
        filePathStringBuffer.append (motionRectangles.getName);
        filePathStringBuffer1 := StringMaker_Package.Create;
        filePathStringBuffer1.append (filePathStringBuffer.toString);
        filePathStringBuffer1.append (To_Unbounded_String ("_1"));
        filePathStringBuffer1.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePathStringBuffer2 := StringMaker_Package.Create;
        filePathStringBuffer2.append (filePathStringBuffer.toString);
        filePathStringBuffer2.append (To_Unbounded_String ("_2"));
        filePathStringBuffer2.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        filePathStringBuffer3 := StringMaker_Package.Create;
        filePathStringBuffer3.append (filePathStringBuffer.toString);
        filePathStringBuffer3.append (MediaDataFactory_Package.getInstance.JPG.getExtension);
        This.logUtil.putF (To_Unbounded_String ("Motion Image File Path 1: ") & filePathStringBuffer1.toString, This'Unchecked_Access, commonStrings.SAVE);
        This.logUtil.putF (To_Unbounded_String ("Motion Image File Path 2: ") & filePathStringBuffer2.toString, This'Unchecked_Access, commonStrings.SAVE);
        This.logUtil.putF (To_Unbounded_String ("Motion Image File Path 2: ") & filePathStringBuffer3.toString, This'Unchecked_Access, commonStrings.SAVE);
        bufferedImageCacheables := new BufferedImageCacheable_Access_Array'(0 .. (This.NUMBER_OF_IMAGES) - 1 => null);
        imageComparisonInfo := motionRectangles.getImageComparisonResult;
        originalBufferedImage := imageComparisonInfo.getBufferedImages (0);
        bufferedImageInfo := BufferedImageInfoFactory_Package.getInstance (imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType);
        poolInterface := BufferedImagePoolSingleton_Package.getInstance;
        for index in 0 .. (This.NUMBER_OF_IMAGES) - 1 loop
            bufferedImageCacheables (index) := BufferedImageCacheable_Access (poolInterface.remove (bufferedImageInfo));
        end loop;
        bufferedImageCacheables (0).getBufferedImage.setData (imageComparisonInfo.getBufferedImages (1).getData);
        if (This.NUMBER_OF_IMAGES) > (1) then
            bufferedImageCacheables (1).getBufferedImage.setData (imageComparisonInfo.getBufferedImages (1).getData);
        end if;
        bufferedImageGraphicsArray := null;
        bufferedImageGraphicsArray := new Graphics_Access_Array'(0 .. (This.NUMBER_OF_IMAGES) - 1 => null);
        for index in 0 .. (This.NUMBER_OF_IMAGES) - 1 loop
            bufferedImageGraphicsArray (index) := bufferedImageCacheables (index).getBufferedImage.getGraphics;
        end loop;
        rectangelList := motionRectangles.getVector;
        size := rectangelList.size;
        for index2 in 0 .. (size) - 1 loop
            motionRectangle := MotionRectangle_Access (rectangelList.get (index2));
            rectangle := motionRectangle.getRectangle;
            for index in 0 .. (This.NUMBER_OF_IMAGES) - 1 loop
                bufferedImageGraphicsArray (index).setColor (Color_Package.ORANGE);
                bufferedImageGraphicsArray (index).drawRect (rectangle.x, rectangle.y, rectangle.width, rectangle.height);
            end loop;
        end loop;
        imagePersistanceUtil := ImagePersistanceUtil_Package.getInstance;
        if (This.NUMBER_OF_IMAGES) > (1) then
            imagePersistanceUtil.saveWithImageIO (filePathStringBuffer1.toString, bufferedImageCacheables (1).getBufferedImage);
        end if;
        imagePersistanceUtil.saveWithImageIO (filePathStringBuffer2.toString, bufferedImageCacheables (0).getBufferedImage);
        if (This.NUMBER_OF_IMAGES) > (2) then
            imagePersistanceUtil.saveWithImageIO (filePathStringBuffer3.toString, bufferedImageCacheables (2).getBufferedImage);
        end if;
   end save;

end org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;


