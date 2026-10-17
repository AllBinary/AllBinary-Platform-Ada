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


package body org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package is

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
        This.motionRectanglesVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return SaveMotionRectanglesResultsWorker_Access is
      This : constant SaveMotionRectanglesResultsWorker_Access := new SaveMotionRectanglesResultsWorker;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker) return BasicArrayList_Access is
   begin
        return This.motionRectanglesVector;
   end getMotionRectanglesVector;

   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out SaveMotionRectanglesResultsWorker; motionRectanglesResultsEvent : MotionRectanglesResultsEvent_Access) is
   begin
        This.getMotionRectanglesVector.add (motionRectanglesResultsEvent);
        This.run;
   end onMotionRectanglesImageComparisonResultsEvent;

   procedure onEvent (This : in out SaveMotionRectanglesResultsWorker; allBinaryEventObject : AllBinaryEventObject_Access) is
   begin
        This.onMotionRectanglesImageComparisonResultsEvent (MotionRectanglesResultsEvent_Access (allBinaryEventObject));
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            motionRectanglesResultsEvent := MotionRectanglesResultsEvent_Access (This.getMotionRectanglesVector.get (0));
            motionRectangles := motionRectanglesResultsEvent.getMotionRectangles;
            MotionRectanglesImageInputOutput_Package.Create.save (motionRectangles, motionRectanglesResultsEvent.getFrame);
            This.getMotionRectanglesVector.remove (motionRectangles);
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), This'Unchecked_Access, This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, This.commonStrings.RUN);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
        end;
   end run;

   procedure getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker) is
      Java_Result : constant BasicArrayList_Access := SaveMotionRectanglesResultsWorker'Class (This).getMotionRectanglesVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMotionRectanglesVector;

   procedure isRunning (This : in out SaveMotionRectanglesResultsWorker) is
      Java_Result : constant Boolean := SaveMotionRectanglesResultsWorker'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

end org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;


