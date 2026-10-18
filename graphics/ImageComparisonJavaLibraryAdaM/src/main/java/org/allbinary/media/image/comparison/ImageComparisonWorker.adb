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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package; use org.allbinary.media.image.comparison.ImageComparisonResultFrameCacheable_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package; use org.allbinary.media.image.comparison.ImageComparisonResultCacheSingleton_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;

package body org.allbinary.media.image.comparison.ImageComparisonWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out ImageComparisonWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.bufferedImageVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
      
      This.running := False;
      This.index2 := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonWorker'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) is
      imageComparatorConstraintsInterface : constant ImageComparatorConstraintsInterface_Access := ImageComparatorConstraintsInterface_Access (imageComparatorConstraintsInterface_Param);
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.imageComparatorConstraintsInterface := imageComparatorConstraintsInterface;
        This.imageComparator := ImageComparator_Package.Create (imageComparatorConstraintsInterface);
   end Initialize;

   function Create (imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) return ImageComparisonWorker_Access is
      This : constant ImageComparisonWorker_Access := new ImageComparisonWorker;
   begin
      ImageComparisonWorker_Package.Initialize (This.all, imageComparatorConstraintsInterface_Param);
      return This;
   end Create;

   function isRunning (This : in out ImageComparisonWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out ImageComparisonWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure onCaptureEvent (This : in out ImageComparisonWorker; capturedImageWorkerResultsEvent_Param : access CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class) is
      capturedImageWorkerResultsEvent : constant CapturedImageWorkerResultsEvent_Access := CapturedImageWorkerResultsEvent_Access (capturedImageWorkerResultsEvent_Param);
   begin
        This.bufferedImageVector.add (Java_Object_Access (capturedImageWorkerResultsEvent));
        if (This.bufferedImageVector.size) > (1) then
            ImageComparisonWorker'Class (This).run;
        end if;
   end onCaptureEvent;

   procedure onEvent (This : in out ImageComparisonWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        ImageComparisonWorker'Class (This).onCaptureEvent (CapturedImageWorkerResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   procedure run (This : in out ImageComparisonWorker) is
      timeHelper : TimeDelayHelper_Access;
      capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent_Access_Array_Access;
      imageComparisonResult : ImageComparisonResult_Access;
      frame : Long_Long_Integer;
      imageComparisonResultFrameCacheable : ImageComparisonResultFrameCacheable_Access;
      message : Unbounded_String;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            ImageComparisonWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            if This.imageComparatorConstraintsInterface.isFrameAllowed (This.index2) then
                capturedImageWorkerResultsEvent := new CapturedImageWorkerResultsEvent_Access_Array'(0 .. (2) - 1 => null);
                capturedImageWorkerResultsEvent (0) := CapturedImageWorkerResultsEvent_Access (This.bufferedImageVector.get (0));
                capturedImageWorkerResultsEvent (1) := CapturedImageWorkerResultsEvent_Access (This.bufferedImageVector.get (1));
                if (This.imageComparatorConstraintsInterface.isImageValid (capturedImageWorkerResultsEvent (0).getBufferedImage)) and then (This.imageComparatorConstraintsInterface.isImageValid (capturedImageWorkerResultsEvent (1).getBufferedImage)) then
                    imageComparisonResult := This.imageComparator.compare (capturedImageWorkerResultsEvent (0).getBufferedImage, capturedImageWorkerResultsEvent (1).getBufferedImage, capturedImageWorkerResultsEvent (0).getFrame, capturedImageWorkerResultsEvent (1).getFrame, 0);
                    frame := capturedImageWorkerResultsEvent (1).getFrame;
                    imageComparisonResultFrameCacheable := ImageComparisonResultFrameCacheable_Package.Create (imageComparisonResult, frame);
                    ImageComparisonResultCacheSingleton_Package.getInstance.add (imageComparisonResultFrameCacheable);
                    ImageComparisonWorker'Class (This).fireEvent (ImageComparisonResultsEvent_Package.Create (ImageComparisonWorker_Access'(This'Unchecked_Access), imageComparisonResult));
                    This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Image Comparison Result: ")).append (imageComparisonResult.toString).append (To_Unbounded_String (" for frame: ")).appendlong (frame).toString, ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                else
                    This.logUtil.putF (To_Unbounded_String ("An Image Was Not Valid: Image Worker Event Processing terminated"), ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                end if;
            end if;
            This.bufferedImageVector.remove (0);
            This.index2 := This.index2 + 1;
            message := StringMaker_Package.Create.append (To_Unbounded_String ("Frame: ")).appendint (This.index2).append (CommonLabels_Package.getInstance.ELAPSED).appendlong (Long_Long_Integer (timeHelper.getElapsedTNT)).toString;
            This.logUtil.putF (message, ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            ImageComparisonWorker'Class (This).setRunning (False);
            This.logUtil.putF (This.commonStrings.END_Id, ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.comparison.ImageComparisonWorker_Package;


