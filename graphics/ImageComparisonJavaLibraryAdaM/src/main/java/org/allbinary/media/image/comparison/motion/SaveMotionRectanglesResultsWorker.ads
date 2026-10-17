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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;

package org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type SaveMotionRectanglesResultsWorker is tagged;
   type SaveMotionRectanglesResultsWorker_Access is access all SaveMotionRectanglesResultsWorker'Class;
   type SaveMotionRectanglesResultsWorker_Access_Array is array (Natural range <>) of SaveMotionRectanglesResultsWorker_Access;
   type SaveMotionRectanglesResultsWorker_Access_Array_Access is access all SaveMotionRectanglesResultsWorker_Access_Array;

   type SaveMotionRectanglesResultsWorker is new MotionRectanglesResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      motionRectanglesVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveMotionRectanglesResultsWorker'Class);
   function Create return SaveMotionRectanglesResultsWorker_Access;
   function getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker) return BasicArrayList_Access;
   procedure getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker);
   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out SaveMotionRectanglesResultsWorker; motionRectanglesResultsEvent : MotionRectanglesResultsEvent_Access);
   procedure onEvent (This : in out SaveMotionRectanglesResultsWorker; allBinaryEventObject : AllBinaryEventObject_Access);
   function isRunning (This : in out SaveMotionRectanglesResultsWorker) return Boolean;
   procedure isRunning (This : in out SaveMotionRectanglesResultsWorker);
   procedure setRunning (This : in out SaveMotionRectanglesResultsWorker; running : Boolean);
   procedure run (This : in out SaveMotionRectanglesResultsWorker);

end org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;


