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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References;
with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package; use org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package;
with org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References;
with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;

package body org.allbinary.media.image.search.ImageComparisonSearchWorker_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype ImageComparisonResultsEvent_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access;
   function "=" (Left, Right : ImageComparisonResultsEvent_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References."=";
   subtype ImageComparisonResultsEvent_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array;
   function "=" (Left, Right : ImageComparisonResultsEvent_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References."=";
   subtype ImageComparisonResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultsEvent_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References."=";
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonResultsEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References."=";
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonResultsEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References."=";
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
   subtype ImageComparisonSearchConstraintsInterface_Access is org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References.ImageComparisonSearchConstraintsInterface_Access;
   function "=" (Left, Right : ImageComparisonSearchConstraintsInterface_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References."=";
   subtype ImageComparisonSearchConstraintsInterface_Access_Array is org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References.ImageComparisonSearchConstraintsInterface_Access_Array;
   function "=" (Left, Right : ImageComparisonSearchConstraintsInterface_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References."=";
   subtype ImageComparisonSearchConstraintsInterface_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References.ImageComparisonSearchConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearchConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References."=";
   subtype ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References.ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References."=";
   subtype ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References.ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearchConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchConstraintsInterface_Package_References."=";
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
        This.imageComparisonInfoVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
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
        ImageComparisonSearchWorker'Class (This).run;
   end onImageComparisonResultsEvent;

   procedure onEvent (This : in out ImageComparisonSearchWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      allBinaryEventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (allBinaryEventObject_Param);
   begin
        ImageComparisonSearchWorker'Class (This).onImageComparisonResultsEvent (ImageComparisonResultsEvent_Access (allBinaryEventObject));
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
            ImageComparisonSearchWorker'Class (This).setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            timeHelper.setStartTimeTNT;
            imageComparisonInfo := ImageComparisonResult_Access (This.imageComparisonInfoVector.get (0));
            This.logUtil.putF (imageComparisonInfo.toString, ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            latestBufferedImage := imageComparisonInfo.getBufferedImages (1);
            This.imageComparisonInfoVector.remove (Java_Object_Access (imageComparisonInfo));
            This.index := This.index + 1;
            This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), ImageComparisonSearchWorker_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            ImageComparisonSearchWorker'Class (This).setRunning (False);
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


