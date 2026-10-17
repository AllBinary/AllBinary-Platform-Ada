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


package body org.allbinary.media.image.search.ImageComparisonSearchWorker_Package is

   procedure Initialize_Fields (This : in out ImageComparisonSearchWorker'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.index := 0;
      This.running := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparisonSearchWorker'Class; imageSearchConstraintsInterface_Param : access ImageComparisonSearchConstraintsInterface_Package.ImageComparisonSearchConstraintsInterface'Class) is
      imageSearchConstraintsInterface : constant ImageComparisonSearchConstraintsInterface_Access := ImageComparisonSearchConstraintsInterface_Access (imageSearchConstraintsInterface_Param);
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        This.imageComparisonInfoVector := BasicArrayListD_Package.Create;
        This.imageSearchConstraintsInterface := imageSearchConstraintsInterface;
   end Initialize;

   function Create (imageSearchConstraintsInterface_Param : access ImageComparisonSearchConstraintsInterface_Package.ImageComparisonSearchConstraintsInterface'Class) return ImageComparisonSearchWorker_Access is
      This : constant ImageComparisonSearchWorker_Access := new ImageComparisonSearchWorker;
   begin
      ImageComparisonSearchWorker_Package.Initialize (This.all, imageSearchConstraintsInterface_Param);
      return This;
   end Create;

   procedure onImageComparisonResultsEvent (This : in out ImageComparisonSearchWorker; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class) is
      imageComparisonResultsEvent : constant ImageComparisonResultsEvent_Access := ImageComparisonResultsEvent_Access (imageComparisonResultsEvent_Param);
   begin
        This.imageComparisonInfoVector.add (imageComparisonResultsEvent.getImageComparisonResult);
        This.run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out ImageComparisonSearchWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        This.onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
   end onEvent;

   function isRunning (This : in out ImageComparisonSearchWorker) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out ImageComparisonSearchWorker; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   procedure run (This : in out ImageComparisonSearchWorker) is
      timeHelper : TimeDelayHelper_Access;
      imageComparisonInfo : ImageComparisonResult_Access;
      latestBufferedImage : BufferedImage_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonInfo := ImageComparisonResult_Access (This.imageComparisonInfoVector.get (0));
            This.logUtil.putF (imageComparisonInfo.toString, ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            latestBufferedImage := imageComparisonInfo.getBufferedImages (1);
            This.imageComparisonInfoVector.remove (imageComparisonInfo);
            This.index := This.index + 1;
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.setRunning (False);
            This.logUtil.putF (This.commonStrings.END_Id, ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.media.image.search.ImageComparisonSearchWorker_Package;


