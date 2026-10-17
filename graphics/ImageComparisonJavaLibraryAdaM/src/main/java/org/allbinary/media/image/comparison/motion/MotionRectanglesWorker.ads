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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package ImageComparisonResultsEvent_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
   package ImageComparisonResultsListener_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type MotionRectanglesWorker is tagged;
   type MotionRectanglesWorker_Access is access all MotionRectanglesWorker'Class;
   type MotionRectanglesWorker_Access_Array is array (Natural range <>) of MotionRectanglesWorker_Access;
   type MotionRectanglesWorker_Access_Array_Access is access all MotionRectanglesWorker_Access_Array;

   type MotionRectanglesWorker is new BasicEventHandler and ImageComparisonResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageComparisonInfoVector : BasicArrayList_Access;
      motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access;
      index : Long_Long_Integer;
      running : Boolean;
   end record;

   procedure Initialize (This : in out MotionRectanglesWorker'Class; motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access);
   function Create (motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access) return MotionRectanglesWorker_Access;
   procedure onImageComparisonResultsEvent (This : in out MotionRectanglesWorker; imageComparisonResultsEvent : ImageComparisonResultsEvent_Access);
   procedure onEvent (This : in out MotionRectanglesWorker; allBinaryEventObject : AllBinaryEventObject_Access);
   function isRunning (This : in out MotionRectanglesWorker) return Boolean;
   procedure isRunning (This : in out MotionRectanglesWorker);
   procedure setRunning (This : in out MotionRectanglesWorker; running : Boolean);
   procedure run (This : in out MotionRectanglesWorker);

end org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;


