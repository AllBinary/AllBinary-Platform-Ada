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
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package; use org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.AllMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.AllMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;
with org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package; use org.allbinary.media.image.comparison.motion.ConsolidateMotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.ConsolidatedMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package; use org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package; use org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;

package body org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out MotionRectanglesWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageComparisonInfoVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
      This.index := 0;
      This.running := False;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesWorker'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) is
      motionRectangleConstraintsInterface : constant MotionRectangleConstraintsInterface_Access := MotionRectangleConstraintsInterface_Access (motionRectangleConstraintsInterface_Param);
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.motionRectangleConstraintsInterface := motionRectangleConstraintsInterface;
   end Initialize;

   function Create (motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return MotionRectanglesWorker_Access is
      This : constant MotionRectanglesWorker_Access := new MotionRectanglesWorker;
   begin
      MotionRectanglesWorker_Package.Initialize (This.all, motionRectangleConstraintsInterface_Param);
      return This;
   end Create;

   procedure onImageComparisonResultsEvent (This : in out MotionRectanglesWorker; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class) is
      imageComparisonResultsEvent : constant ImageComparisonResultsEvent_Access := ImageComparisonResultsEvent_Access (imageComparisonResultsEvent_Param);
   begin
        This.imageComparisonInfoVector.add (Java_Object_Access (imageComparisonResultsEvent));
        MotionRectanglesWorker'Class (This).run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out MotionRectanglesWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        MotionRectanglesWorker'Class (This).onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   function isRunning (This : in out MotionRectanglesWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out MotionRectanglesWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out MotionRectanglesWorker) is
      timeHelper : TimeDelayHelper_Access;
      imageComparisonResultsEvent : ImageComparisonResultsEvent_Access;
      imageComparisonInfo : ImageComparisonResult_Access;
      allMotionRectangles : AllMotionRectangles_Access;
      consolidatedMotionRectangles : ConsolidateMotionRectangles_Access;
      constrainedMotionRectangles : ConstrainedMotionRectangles_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, MotionRectanglesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            MotionRectanglesWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonResultsEvent := ImageComparisonResultsEvent_Access (This.imageComparisonInfoVector.get (0));
            imageComparisonInfo := ImageComparisonResult_Access (imageComparisonResultsEvent.getImageComparisonResult);
            This.logUtil.putF (imageComparisonInfo.toString, MotionRectanglesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            allMotionRectangles := AllMotionRectangles_Package.Create (imageComparisonInfo);
            AllMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (allMotionRectangles, imageComparisonInfo.getFrameTwo));
            consolidatedMotionRectangles := ConsolidateMotionRectangles_Package.Create (allMotionRectangles);
            ConsolidatedMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (consolidatedMotionRectangles, imageComparisonInfo.getFrameTwo));
            constrainedMotionRectangles := ConstrainedMotionRectangles_Package.Create (This.motionRectangleConstraintsInterface, consolidatedMotionRectangles);
            constrainedMotionRectangles.applyMotionRectangleConstraints (consolidatedMotionRectangles);
            ConstrainedMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (constrainedMotionRectangles, imageComparisonInfo.getFrameTwo));
            MotionRectanglesWorker'Class (This).fireEvent (MotionRectanglesResultsEvent_Package.Create (MotionRectanglesWorker_Access'(This'Unchecked_Access), imageComparisonInfo.getFrameTwo, MotionRectangles_Access (constrainedMotionRectangles)));
            This.imageComparisonInfoVector.remove (Java_Object_Access (imageComparisonResultsEvent));
            This.index := This.index + 1;
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), MotionRectanglesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            MotionRectanglesWorker'Class (This).setRunning (False);
            This.logUtil.putF (This.commonStrings.END_Id, MotionRectanglesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MotionRectanglesWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;


