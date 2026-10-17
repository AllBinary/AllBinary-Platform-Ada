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


   procedure Initialize (This : in out AbstractInputAutomationWorker'Class; inputAutomationActionInterface : InputAutomationActionInterface_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (inputAutomationActionInterface : InputAutomationActionInterface_Access) return AbstractInputAutomationWorker_Access is
      This : constant AbstractInputAutomationWorker_Access := new AbstractInputAutomationWorker;
   begin
      Initialize (This.all, inputAutomationActionInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setThread (This : in out AbstractInputAutomationWorker; thread : Thread_Access) is
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
        if ((This.captureThread) /= (null)) and then (((((This.captureThread.isAlive) or else (This.getCaptureWorker.isRunning)) or else (This.getMotionRectanglesWorker.isRunning)) or else (This.getImageComparisonWorker.isRunning))) then
            return True;
        end if;
        return False;
   end isAnyDataWorkerRunning;

   --  throws Exception
   procedure startDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        if not (This.isAnyDataWorkerRunning) then
            This.captureThread := Thread_Package.Create (This.getCaptureWorker);
            This.logUtil.putF (To_Unbounded_String ("Starting CaptureWorkers - Need more images - Thread State: ") & This.captureThread.getState.toString, This'Unchecked_Access, To_Unbounded_String ("startCaptureWorkers"));
            This.captureThread.start;
        end if;
   end startDataWorkers;

   --  throws Exception
   procedure waitForDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        while This.isAnyDataWorkerRunning loop
            This.logUtil.putF (To_Unbounded_String ("Waiting"), This'Unchecked_Access, This.commonStrings.RUN);
            Java_Sleep (250);
        end loop;
   end waitForDataWorkers;

   --  throws Exception
   procedure stopDataWorkers (This : in out AbstractInputAutomationWorker) is
   begin
        This.getCaptureWorker.setRunning (False);
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while This.isRunning loop
                timeHelper.setStartTimeTNT;
                This.process;
                This.index := This.index + 1;
                This.logUtil.putF (Java_Image ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT)) & To_Unbounded_String (" Index: ") & Java_Image (This.index), This'Unchecked_Access, This.commonStrings.RUN);
            end loop;
            This.stopDataWorkers;
            This.waitForDataWorkers;
            This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
        end;
   end run;

   function getInputAutomationActionInterface (This : in out AbstractInputAutomationWorker) return InputAutomationActionInterface_Access is
   begin
        return This.inputAutomationActionInterface;
   end getInputAutomationActionInterface;

   procedure setInputAutomationActionInterface (This : in out AbstractInputAutomationWorker; inputAutomationActionInterface : InputAutomationActionInterface_Access) is
   begin
        This.inputAutomationActionInterface := inputAutomationActionInterface;
   end setInputAutomationActionInterface;

   function getCaptureWorker (This : in out AbstractInputAutomationWorker) return CaptureWorkerInterface_Access is
   begin
        return This.captureWorkerInterface;
   end getCaptureWorker;

   procedure setCaptureWorker (This : in out AbstractInputAutomationWorker; captureWorkerInterface : CaptureWorkerInterface_Access) is
   begin
        This.captureWorkerInterface := captureWorkerInterface;
   end setCaptureWorker;

   function getImageComparisonWorker (This : in out AbstractInputAutomationWorker) return ImageComparisonWorker_Access is
   begin
        return This.imageComparisonWorker;
   end getImageComparisonWorker;

   procedure setImageComparisonWorker (This : in out AbstractInputAutomationWorker; imageComparisonWorker : ImageComparisonWorker_Access) is
   begin
        This.imageComparisonWorker := imageComparisonWorker;
   end setImageComparisonWorker;

   function getMotionRectanglesWorker (This : in out AbstractInputAutomationWorker) return MotionRectanglesWorker_Access is
   begin
        return This.motionRectanglesWorker;
   end getMotionRectanglesWorker;

   procedure setMotionRectanglesWorker (This : in out AbstractInputAutomationWorker; motionRectanglesWorker : MotionRectanglesWorker_Access) is
   begin
        This.motionRectanglesWorker := motionRectanglesWorker;
   end setMotionRectanglesWorker;

   procedure isRunning (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant Boolean := AbstractInputAutomationWorker'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure isAnyDataWorkerRunning (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant Boolean := AbstractInputAutomationWorker'Class (This).isAnyDataWorkerRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAnyDataWorkerRunning;

   procedure getInputAutomationActionInterface (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant InputAutomationActionInterface_Access := AbstractInputAutomationWorker'Class (This).getInputAutomationActionInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputAutomationActionInterface;

   procedure getCaptureWorker (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant CaptureWorkerInterface_Access := AbstractInputAutomationWorker'Class (This).getCaptureWorker;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCaptureWorker;

   procedure getImageComparisonWorker (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant ImageComparisonWorker_Access := AbstractInputAutomationWorker'Class (This).getImageComparisonWorker;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageComparisonWorker;

   procedure getMotionRectanglesWorker (This : in out AbstractInputAutomationWorker) is
      Java_Result : constant MotionRectanglesWorker_Access := AbstractInputAutomationWorker'Class (This).getMotionRectanglesWorker;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMotionRectanglesWorker;

end org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;


