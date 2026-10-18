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
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;

package body org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out SaveMotionRectanglesResultsWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SaveMotionRectanglesResultsWorker'Class) is
   begin
      Initialize_Fields (This);
        This.motionRectanglesVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return SaveMotionRectanglesResultsWorker_Access is
      This : constant SaveMotionRectanglesResultsWorker_Access := new SaveMotionRectanglesResultsWorker;
   begin
      SaveMotionRectanglesResultsWorker_Package.Initialize (This.all);
      return This;
   end Create;

   function getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker) return BasicArrayList_Access is
   begin
        return This.motionRectanglesVector;
   end getMotionRectanglesVector;

   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out SaveMotionRectanglesResultsWorker; motionRectanglesResultsEvent_Param : access MotionRectanglesResultsEvent_Package.MotionRectanglesResultsEvent'Class) is
      motionRectanglesResultsEvent : constant MotionRectanglesResultsEvent_Access := MotionRectanglesResultsEvent_Access (motionRectanglesResultsEvent_Param);
   begin
        SaveMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.add (motionRectanglesResultsEvent);
        SaveMotionRectanglesResultsWorker'Class (This).run;
   end onMotionRectanglesImageComparisonResultsEvent;

   procedure onEvent (This : in out SaveMotionRectanglesResultsWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        SaveMotionRectanglesResultsWorker'Class (This).onMotionRectanglesImageComparisonResultsEvent (MotionRectanglesResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   function isRunning (This : in out SaveMotionRectanglesResultsWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out SaveMotionRectanglesResultsWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out SaveMotionRectanglesResultsWorker) is
      timeHelper : TimeDelayHelper_Access;
      motionRectanglesResultsEvent : MotionRectanglesResultsEvent_Access;
      motionRectangles : MotionRectangles_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, SaveMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            SaveMotionRectanglesResultsWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            motionRectanglesResultsEvent := MotionRectanglesResultsEvent_Access (SaveMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.get (0));
            motionRectangles := motionRectanglesResultsEvent.getMotionRectangles;
            MotionRectanglesImageInputOutput_Package.Create.save (motionRectangles, motionRectanglesResultsEvent.getFrame);
            SaveMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector.remove (motionRectangles);
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), SaveMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_Id, SaveMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SaveMotionRectanglesResultsWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;


