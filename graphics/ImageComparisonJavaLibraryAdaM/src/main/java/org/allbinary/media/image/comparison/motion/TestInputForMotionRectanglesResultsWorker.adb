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


package body org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package is

   procedure Initialize_Fields (This : in out TestInputForMotionRectanglesResultsWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.index := 0;
      This.running := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TestInputForMotionRectanglesResultsWorker'Class) is
   begin
      Initialize_Fields (This);
        This.motionRectanglesVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return TestInputForMotionRectanglesResultsWorker_Access is
      This : constant TestInputForMotionRectanglesResultsWorker_Access := new TestInputForMotionRectanglesResultsWorker;
   begin
      TestInputForMotionRectanglesResultsWorker_Package.Initialize (This.all);
      return This;
   end Create;

   function getMotionRectanglesVector (This : in out TestInputForMotionRectanglesResultsWorker) return BasicArrayList_Access is
   begin
        return This.motionRectanglesVector;
   end getMotionRectanglesVector;

   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out TestInputForMotionRectanglesResultsWorker; motionRectanglesImageComparisonResultsEvent_Param : access MotionRectanglesResultsEvent'Class) is
      motionRectanglesImageComparisonResultsEvent : MotionRectanglesResultsEvent_Access := MotionRectanglesResultsEvent_Access (motionRectanglesImageComparisonResultsEvent_Param);
   begin
        This.getMotionRectanglesVector.add (motionRectanglesImageComparisonResultsEvent.getMotionRectangles);
        This.run;
   end onMotionRectanglesImageComparisonResultsEvent;

   procedure onEvent (This : in out TestInputForMotionRectanglesResultsWorker; allBinaryEventObject_Param : access AllBinaryEventObject'Class) is
      allBinaryEventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        This.onMotionRectanglesImageComparisonResultsEvent (MotionRectanglesResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   function isRunning (This : in out TestInputForMotionRectanglesResultsWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out TestInputForMotionRectanglesResultsWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out TestInputForMotionRectanglesResultsWorker) is
      timeHelper : TimeDelayHelper_Access;
      motionRectangles : MotionRectangles_Access;
      motionRectangleVector : BasicArrayList_Access;
      rectangle : Rectangle_Access;
      robotHashtable : ABHashtable_Access;
      inputTypeNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      inputTypeNameString : Unbounded_String;
      inputRobotInterface : InputRobotInterface_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, TestInputForMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            motionRectangles := MotionRectangles_Access (This.getMotionRectanglesVector.get (0));
            motionRectangleVector := motionRectangles.getVector;
            if (motionRectangleVector.size) > (0) then
                rectangle := Rectangle_Access (motionRectangleVector.get (0));
                robotHashtable := InputRobotFactory_Package.getInstance.get;
                inputTypeNameArray := robotHashtable.keySet.toArray;
                size := inputTypeNameArray'Length;
                for index in 0 .. (size) - 1 loop
                    inputTypeNameString := Unbounded_String (inputTypeNameArray (index));
                    inputRobotInterface := InputRobotInterface_Access (robotHashtable.get (inputTypeNameString));
                    inputRobotInterface.mouseMoveToTarget (rectangle);
                    if (inputRobotInterface.getName.compareTo (TempInputRobotNames_Package.DX_NAME)) = (0) then
                        inputRobotInterface.mousePress (InputEvent_Package.BUTTON1_MASK);
                        Java_Sleep (300);
                        inputRobotInterface.mouseRelease (InputEvent_Package.BUTTON1_MASK);
                        inputRobotInterface.mousePress (InputEvent_Package.BUTTON2_MASK);
                        Java_Sleep (300);
                        inputRobotInterface.mouseRelease (InputEvent_Package.BUTTON2_MASK);
                        inputRobotInterface.mousePress (InputEvent_Package.BUTTON3_MASK);
                        Java_Sleep (300);
                        inputRobotInterface.mouseRelease (InputEvent_Package.BUTTON3_MASK);
                        inputRobotInterface.keyPress (KeyEvent_Package.VK_1);
                        Java_Sleep (300);
                        inputRobotInterface.keyRelease (KeyEvent_Package.VK_1);
                        inputRobotInterface.keyPress (KeyEvent_Package.VK_2);
                        Java_Sleep (300);
                        inputRobotInterface.keyRelease (KeyEvent_Package.VK_2);
                        inputRobotInterface.keyPress (KeyEvent_Package.VK_3);
                        Java_Sleep (300);
                        inputRobotInterface.keyRelease (KeyEvent_Package.VK_3);
                        inputRobotInterface.keyPress (KeyEvent_Package.VK_4);
                        Java_Sleep (300);
                        inputRobotInterface.keyRelease (KeyEvent_Package.VK_4);
                        inputRobotInterface.keyPress (KeyEvent_Package.VK_F1);
                        Java_Sleep (300);
                        inputRobotInterface.keyRelease (KeyEvent_Package.VK_F1);
                    end if;
                end loop;
            end if;
            This.index := This.index + 1;
            This.getMotionRectanglesVector.remove (motionRectangles);
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), TestInputForMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_Id, TestInputForMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, TestInputForMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package;


