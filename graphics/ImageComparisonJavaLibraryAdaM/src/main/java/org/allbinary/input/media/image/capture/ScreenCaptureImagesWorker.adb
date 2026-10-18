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


with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package; use org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package; use org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;

package body org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package is

   package BufferedImageFrameCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out ScreenCaptureImagesWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScreenCaptureImagesWorker'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.screenScavangerRobot := ScreenScavangerRobot_Package.Create;
        ScreenCaptureImagesWorker_Package.index := ProcessingFrameIndexFactory_Package.next;
   end Initialize;

   function Create return ScreenCaptureImagesWorker_Access is
      This : constant ScreenCaptureImagesWorker_Access := new ScreenCaptureImagesWorker;
   begin
      ScreenCaptureImagesWorker_Package.Initialize (This.all);
      return This;
   end Create;

   function isRunning (This : in out ScreenCaptureImagesWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out ScreenCaptureImagesWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   --  throws Exception
   procedure setThread (This : in out ScreenCaptureImagesWorker; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   procedure run (This : in out ScreenCaptureImagesWorker) is
      timeHelper : TimeDelayHelper_Access;
      bufferedImage : BufferedImage_Access;
      frame : Long_Long_Integer;
      capturedImageEvent : CapturedImageWorkerResultsEvent_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ScreenCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            ScreenCaptureImagesWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while ScreenCaptureImagesWorker'Class (This).isRunning loop
                timeHelper.setStartTimeTNT;
                bufferedImage := This.screenScavangerRobot.getScreenAsBufferedImages (0);
                frame := index;
                ScreenCaptureImagesWorker_Package.index := ScreenCaptureImagesWorker_Package.index + 1;
                CapturedBufferedImagesCacheSingleton_Package.getInstance.add (BufferedImageFrameCacheable_Package.Create (bufferedImage, frame));
                capturedImageEvent := CapturedImageWorkerResultsEvent_Package.Create (ScreenCaptureImagesWorker_Access'(This'Unchecked_Access), frame, bufferedImage);
                ScreenCaptureImagesWorker'Class (This).fireEvent (capturedImageEvent);
                This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), ScreenCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                ScreenCaptureImagesWorker'Class (This).setRunning (False);
            end loop;
            This.logUtil.putF (This.commonStrings.END_Id, ScreenCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ScreenCaptureImagesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

begin
   null;
   index := 0;

end org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;


