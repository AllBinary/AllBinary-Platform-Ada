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


package body org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package is

   procedure Initialize_Fields (This : in out SaveImageComparisonWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.running := False;
      This.imageComparisonInfoVector := BasicArrayListD_Package.Create;
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

   procedure onImageComparisonResultsEvent (This : in out SaveImageComparisonWorker; imageComparisonResultsEvent : ImageComparisonResultsEvent_Access) is
   begin
        This.imageComparisonInfoVector.add (imageComparisonResultsEvent);
        This.run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out SaveImageComparisonWorker; allBinaryEventObject : AllBinaryEventObject_Access) is
   begin
        This.onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonResultsEvent := ImageComparisonResultsEvent_Access (This.imageComparisonInfoVector.get (0));
            imageComparisonInfo := imageComparisonResultsEvent.getImageComparisonResult;
            This.logUtil.putF (imageComparisonInfo.toString, This'Unchecked_Access, This.commonStrings.RUN);
            ComparisonImageInputOutput_Package.Create.save (imageComparisonInfo, imageComparisonInfo.getFrameTwo);
            This.imageComparisonInfoVector.remove (imageComparisonInfo);
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), This'Unchecked_Access, This.commonStrings.RUN);
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

end org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;


