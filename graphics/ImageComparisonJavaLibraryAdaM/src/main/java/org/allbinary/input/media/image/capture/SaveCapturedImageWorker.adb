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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package; use org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;

package body org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out SaveCapturedImageWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      This.capturedImageWorkerResultsEventVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
      SaveCapturedImageWorker_Package.Initialize (This.all);
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

   procedure onCaptureEvent (This : in out SaveCapturedImageWorker; capturedImageEvent_Param : access CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class) is
      capturedImageEvent : constant CapturedImageWorkerResultsEvent_Access := CapturedImageWorkerResultsEvent_Access (capturedImageEvent_Param);
   begin
        This.capturedImageWorkerResultsEventVector.add (Java_Object_Access (capturedImageEvent));
        SaveCapturedImageWorker'Class (This).run;
   end onCaptureEvent;

   procedure onEvent (This : in out SaveCapturedImageWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        SaveCapturedImageWorker'Class (This).onCaptureEvent (CapturedImageWorkerResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   procedure run (This : in out SaveCapturedImageWorker) is
      timeHelper : TimeDelayHelper_Access;
      capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent_Access;
      screenBufferedImage : BufferedImage_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, SaveCapturedImageWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            SaveCapturedImageWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            capturedImageWorkerResultsEvent := (CapturedImageWorkerResultsEvent_Access (This.capturedImageWorkerResultsEventVector.get (0)));
            screenBufferedImage := capturedImageWorkerResultsEvent.getBufferedImage;
            CapturedImageInputOutput_Package.Create.save (screenBufferedImage, capturedImageWorkerResultsEvent.getFrame);
            This.capturedImageWorkerResultsEventVector.remove (Java_Object_Access (capturedImageWorkerResultsEvent));
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), SaveCapturedImageWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            SaveCapturedImageWorker'Class (This).setRunning (False);
            This.logUtil.putF (This.commonStrings.END_Id, SaveCapturedImageWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SaveCapturedImageWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package;


