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


package body org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package is

   procedure Initialize_Fields (This : in out MotionRectanglesWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageComparisonInfoVector := BasicArrayListD_Package.Create;
      
      This.index := 0;
      This.running := False;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionRectanglesWorker'Class; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.motionRectangleConstraintsInterface := motionRectangleConstraintsInterface;
   end Initialize;

   function Create (motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) return MotionRectanglesWorker_Access is
      This : constant MotionRectanglesWorker_Access := new MotionRectanglesWorker;
   begin
      Initialize (This.all, motionRectangleConstraintsInterface);
      return This;
   end Create;

   procedure onImageComparisonResultsEvent (This : in out MotionRectanglesWorker; imageComparisonResultsEvent : ImageComparisonResultsEvent_Access) is
   begin
        This.imageComparisonInfoVector.add (imageComparisonResultsEvent);
        This.run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out MotionRectanglesWorker; allBinaryEventObject : AllBinaryEventObject_Access) is
   begin
        This.onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonResultsEvent := ImageComparisonResultsEvent_Access (This.imageComparisonInfoVector.get (0));
            imageComparisonInfo := ImageComparisonResult_Access (imageComparisonResultsEvent.getImageComparisonResult);
            This.logUtil.putF (imageComparisonInfo.toString, This'Unchecked_Access, This.commonStrings.RUN);
            allMotionRectangles := AllMotionRectangles_Package.Create (imageComparisonInfo);
            AllMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (allMotionRectangles, imageComparisonInfo.getFrameTwo));
            consolidatedMotionRectangles := ConsolidateMotionRectangles_Package.Create (allMotionRectangles);
            ConsolidatedMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (consolidatedMotionRectangles, imageComparisonInfo.getFrameTwo));
            constrainedMotionRectangles := ConstrainedMotionRectangles_Package.Create (This.motionRectangleConstraintsInterface, consolidatedMotionRectangles);
            constrainedMotionRectangles.applyMotionRectangleConstraints (consolidatedMotionRectangles);
            ConstrainedMotionRectanglesResultsCacheSingleton_Package.getInstance.add (MotionRectanglesResultsFrameCacheable_Package.Create (constrainedMotionRectangles, imageComparisonInfo.getFrameTwo));
            This.fireEvent (MotionRectanglesResultsEvent_Package.Create (This'Unchecked_Access, imageComparisonInfo.getFrameTwo, MotionRectangles_Access (constrainedMotionRectangles)));
            This.imageComparisonInfoVector.remove (imageComparisonResultsEvent);
            This.index := This.index + 1;
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

   procedure isRunning (This : in out MotionRectanglesWorker) is
      Java_Result : constant Boolean := MotionRectanglesWorker'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

end org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;


