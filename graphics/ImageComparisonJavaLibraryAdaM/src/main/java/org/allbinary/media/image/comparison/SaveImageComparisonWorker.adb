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
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package; use org.allbinary.media.image.comparison.ComparisonImageInputOutput_Package;

package body org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   procedure Initialize_Fields (This : in out SaveImageComparisonWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      This.imageComparisonInfoVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out SaveImageComparisonWorker'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SaveImageComparisonWorker_Access is
      This : constant SaveImageComparisonWorker_Access := new SaveImageComparisonWorker;
   begin
      SaveImageComparisonWorker_Package.Initialize (This.all);
      return This;
   end Create;

   procedure onImageComparisonResultsEvent (This : in out SaveImageComparisonWorker; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class) is
      imageComparisonResultsEvent : constant ImageComparisonResultsEvent_Access := ImageComparisonResultsEvent_Access (imageComparisonResultsEvent_Param);
   begin
        This.imageComparisonInfoVector.add (Java_Object_Access (imageComparisonResultsEvent));
        SaveImageComparisonWorker'Class (This).run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out SaveImageComparisonWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        SaveImageComparisonWorker'Class (This).onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   function isRunning (This : in out SaveImageComparisonWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out SaveImageComparisonWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out SaveImageComparisonWorker) is
      timeHelper : TimeDelayHelper_Access;
      imageComparisonResultsEvent : ImageComparisonResultsEvent_Access;
      imageComparisonInfo : ImageComparisonResult_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, SaveImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            SaveImageComparisonWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonResultsEvent := ImageComparisonResultsEvent_Access (This.imageComparisonInfoVector.get (0));
            imageComparisonInfo := imageComparisonResultsEvent.getImageComparisonResult;
            This.logUtil.putF (imageComparisonInfo.toString, SaveImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            ComparisonImageInputOutput_Package.Create.save (imageComparisonInfo, imageComparisonInfo.getFrameTwo);
            This.imageComparisonInfoVector.remove (Java_Object_Access (imageComparisonInfo));
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), SaveImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.logUtil.putF (This.commonStrings.END_Id, SaveImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SaveImageComparisonWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;


