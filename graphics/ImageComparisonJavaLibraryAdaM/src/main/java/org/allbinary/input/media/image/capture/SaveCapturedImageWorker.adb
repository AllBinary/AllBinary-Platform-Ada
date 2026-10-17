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


package body org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package is

   procedure Initialize_Fields (This : in out SaveCapturedImageWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      This.capturedImageWorkerResultsEventVector := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out SaveCapturedImageWorker'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SaveCapturedImageWorker_Access is
      This : constant SaveCapturedImageWorker_Access := new SaveCapturedImageWorker;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isRunning (This : in out SaveCapturedImageWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out SaveCapturedImageWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure onCaptureEvent (This : in out SaveCapturedImageWorker; capturedImageEvent : CapturedImageWorkerResultsEvent_Access) is
   begin
        This.capturedImageWorkerResultsEventVector.add (capturedImageEvent);
        This.run;
   end onCaptureEvent;

   procedure onEvent (This : in out SaveCapturedImageWorker; allBinaryEventObject : AllBinaryEventObject_Access) is
   begin
        This.onCaptureEvent (CapturedImageWorkerResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   procedure run (This : in out SaveCapturedImageWorker) is
      timeHelper : TimeDelayHelper_Access;
      capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent_Access;
      screenBufferedImage : BufferedImage_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            capturedImageWorkerResultsEvent := (CapturedImageWorkerResultsEvent_Access (This.capturedImageWorkerResultsEventVector.get (0)));
            screenBufferedImage := capturedImageWorkerResultsEvent.getBufferedImage;
            CapturedImageInputOutput_Package.Create.save (screenBufferedImage, capturedImageWorkerResultsEvent.getFrame);
            This.capturedImageWorkerResultsEventVector.remove (capturedImageWorkerResultsEvent);
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (False);
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

   procedure isRunning (This : in out SaveCapturedImageWorker) is
      Java_Result : constant Boolean := SaveCapturedImageWorker'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

end org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package;


