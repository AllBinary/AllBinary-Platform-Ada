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


with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.TempInputRobotNames_Package; use org.allbinary.input.automation.robot.TempInputRobotNames_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package is

   package KeyEvent_Package renames Standard.java.awt.event.KeyEvent_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package TempInputRobotNames_Package renames Standard.org.allbinary.input.automation.robot.TempInputRobotNames_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
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
        This.motionRectanglesVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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

   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out TestInputForMotionRectanglesResultsWorker; motionRectanglesImageComparisonResultsEvent_Param : access MotionRectanglesResultsEvent_Package.MotionRectanglesResultsEvent'Class) is
      motionRectanglesImageComparisonResultsEvent : constant MotionRectanglesResultsEvent_Access := MotionRectanglesResultsEvent_Access (motionRectanglesImageComparisonResultsEvent_Param);
   begin
        TestInputForMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.add (motionRectanglesImageComparisonResultsEvent.getMotionRectangles);
        TestInputForMotionRectanglesResultsWorker'Class (This).run;
   end onMotionRectanglesImageComparisonResultsEvent;

   procedure onEvent (This : in out TestInputForMotionRectanglesResultsWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        TestInputForMotionRectanglesResultsWorker'Class (This).onMotionRectanglesImageComparisonResultsEvent (MotionRectanglesResultsEvent_Access (allBinaryEventObject));
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
            TestInputForMotionRectanglesResultsWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            motionRectangles := MotionRectangles_Access (TestInputForMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.get (0));
            motionRectangleVector := motionRectangles.getVector;
            if (motionRectangleVector.size) > (0) then
                rectangle := Rectangle_Access (motionRectangleVector.get (0));
                robotHashtable := InputRobotFactory_Package.getInstance.get;
                inputTypeNameArray := robotHashtable.keySet.toArray;
                size := inputTypeNameArray'Length;
                for index in 0 .. (size) - 1 loop
                    inputTypeNameString := Java_Unbox (inputTypeNameArray (index));
                    inputRobotInterface := InputRobotInterface_Access (robotHashtable.get (Java_Box (inputTypeNameString)));
                    inputRobotInterface.mouseMoveToTarget (rectangle);
                    if (Java_Compare_To (inputRobotInterface.getName, TempInputRobotNames_Package.DX_NAME)) = (0) then
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
            TestInputForMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.remove (motionRectangles);
            This.logUtil.putF (CommonLabels_Package.getInstance.ELAPSED & Java_Image (timeHelper.getElapsedTNT), TestInputForMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
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


