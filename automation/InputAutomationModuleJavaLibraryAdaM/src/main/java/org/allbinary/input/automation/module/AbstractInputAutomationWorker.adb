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


package body org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package is

   procedure Initialize_Fields (This : in out AbstractInputAutomationWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.index := 0;
      This.running := False;
      This.inputAutomationActionInterface := null;
      This.captureWorkerInterface := null;
      This.imageComparisonWorker := null;
      This.motionRectanglesWorker := null;
      This.captureThread := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbstractInputAutomationWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class) is
      inputAutomationActionInterface : constant InputAutomationActionInterface_Access := InputAutomationActionInterface_Access (inputAutomationActionInterface_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class) return AbstractInputAutomationWorker_Access is
      This : constant AbstractInputAutomationWorker_Access := new AbstractInputAutomationWorker;
   begin
      AbstractInputAutomationWorker_Package.Initialize (This.all, inputAutomationActionInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setThread (This : in out AbstractInputAutomationWorker; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   function isRunning (This : in out AbstractInputAutomationWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out AbstractInputAutomationWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   function isAnyDataWorkerRunning (This : in out AbstractInputAutomationWorker) return Boolean is
   begin
        if ((This.captureThread) /= (null)) and then (((((This.captureThread.isAlive) or else (AbstractInputAutomationWorker'Class (This).getCaptureWorker.isRunning)) or else (AbstractInputAutomationWorker'Class (This).getMotionRectanglesWorker.isRunning)) or else (AbstractInputAutomationWorker'Class (This).getImageComparisonWorker.isRunning))) then
            return True;
        end if;
        return False;
   end isAnyDataWorkerRunning;

   --  throws Exception
   procedure startDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        if not (AbstractInputAutomationWorker'Class (This).isAnyDataWorkerRunning) then
            This.captureThread := Thread_Package.Create (AbstractInputAutomationWorker'Class (This).getCaptureWorker);
            This.logUtil.putF (To_Unbounded_String ("Starting CaptureWorkers - Need more images - Thread State: ") & This.captureThread.getState.toString, AbstractInputAutomationWorker_Access'(This'Unchecked_Access), To_Unbounded_String ("startCaptureWorkers"));
            This.captureThread.start;
        end if;
   end startDataWorkers;

   --  throws Exception
   procedure waitForDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        while AbstractInputAutomationWorker'Class (This).isAnyDataWorkerRunning loop
            This.logUtil.putF (To_Unbounded_String ("Waiting"), AbstractInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            Java_Sleep (250);
        end loop;
   end waitForDataWorkers;

   --  throws Exception
   procedure stopDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        AbstractInputAutomationWorker'Class (This).getCaptureWorker.setRunning (False);
   end stopDataWorkers;

   --  throws Exception
   procedure process (This : in out AbstractInputAutomationWorker) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end process;

   procedure run (This : in out AbstractInputAutomationWorker) is
      timeHelper : TimeDelayHelper_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, AbstractInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            AbstractInputAutomationWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while AbstractInputAutomationWorker'Class (This).isRunning loop
                timeHelper.setStartTimeTNT;
                AbstractInputAutomationWorker'Class (This).process;
                This.index := This.index + 1;
                This.logUtil.putF (Java_Image ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT)) & To_Unbounded_String (" Index: ") & Java_Image (This.index), AbstractInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            end loop;
            AbstractInputAutomationWorker'Class (This).stopDataWorkers;
            AbstractInputAutomationWorker'Class (This).waitForDataWorkers;
            This.logUtil.putF (This.commonStrings.END_Id, AbstractInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AbstractInputAutomationWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

   function getInputAutomationActionInterface (This : in out AbstractInputAutomationWorker) return InputAutomationActionInterface_Access is
   begin
        return This.inputAutomationActionInterface;
   end getInputAutomationActionInterface;

   procedure setInputAutomationActionInterface (This : in out AbstractInputAutomationWorker; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class) is
      inputAutomationActionInterface : constant InputAutomationActionInterface_Access := InputAutomationActionInterface_Access (inputAutomationActionInterface_Param);
   begin
        This.inputAutomationActionInterface := inputAutomationActionInterface;
   end setInputAutomationActionInterface;

   function getCaptureWorker (This : in out AbstractInputAutomationWorker) return CaptureWorkerInterface_Access is
   begin
        return This.captureWorkerInterface;
   end getCaptureWorker;

   procedure setCaptureWorker (This : in out AbstractInputAutomationWorker; captureWorkerInterface_Param : access CaptureWorkerInterface_Package.CaptureWorkerInterface'Class) is
      captureWorkerInterface : constant CaptureWorkerInterface_Access := CaptureWorkerInterface_Access (captureWorkerInterface_Param);
   begin
        This.captureWorkerInterface := captureWorkerInterface;
   end setCaptureWorker;

   function getImageComparisonWorker (This : in out AbstractInputAutomationWorker) return ImageComparisonWorker_Access is
   begin
        return This.imageComparisonWorker;
   end getImageComparisonWorker;

   procedure setImageComparisonWorker (This : in out AbstractInputAutomationWorker; imageComparisonWorker_Param : access ImageComparisonWorker_Package.ImageComparisonWorker'Class) is
      imageComparisonWorker : constant ImageComparisonWorker_Access := ImageComparisonWorker_Access (imageComparisonWorker_Param);
   begin
        This.imageComparisonWorker := imageComparisonWorker;
   end setImageComparisonWorker;

   function getMotionRectanglesWorker (This : in out AbstractInputAutomationWorker) return MotionRectanglesWorker_Access is
   begin
        return This.motionRectanglesWorker;
   end getMotionRectanglesWorker;

   procedure setMotionRectanglesWorker (This : in out AbstractInputAutomationWorker; motionRectanglesWorker_Param : access MotionRectanglesWorker_Package.MotionRectanglesWorker'Class) is
      motionRectanglesWorker : constant MotionRectanglesWorker_Access := MotionRectanglesWorker_Access (motionRectanglesWorker_Param);
   begin
        This.motionRectanglesWorker := motionRectanglesWorker;
   end setMotionRectanglesWorker;

end org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;


