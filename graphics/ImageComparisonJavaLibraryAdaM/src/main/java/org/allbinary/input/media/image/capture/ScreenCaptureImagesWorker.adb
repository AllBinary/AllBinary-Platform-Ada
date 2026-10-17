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


package body org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package is

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
      Initialize (This.all);
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
   procedure setThread (This : in out ScreenCaptureImagesWorker; thread : Thread_Access) is
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while This.isRunning loop
                timeHelper.setStartTimeTNT;
                bufferedImage := This.screenScavangerRobot.getScreenAsBufferedImages (0);
                frame := index;
                ScreenCaptureImagesWorker_Package.index := ScreenCaptureImagesWorker_Package.index + 1;
                CapturedBufferedImagesCacheSingleton_Package.getInstance.add (BufferedImageFrameCacheable_Package.Create (bufferedImage, frame));
                capturedImageEvent := CapturedImageWorkerResultsEvent_Package.Create (This'Unchecked_Access, frame, bufferedImage);
                This.fireEvent (capturedImageEvent);
                This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), This'Unchecked_Access, This.commonStrings.RUN);
                This.setRunning (False);
            end loop;
            This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
                end;
        end;
   end run;

   procedure isRunning (This : in out ScreenCaptureImagesWorker) is
      Java_Result : constant Boolean := ScreenCaptureImagesWorker'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

begin
   null;
   index := 0;

end org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;


