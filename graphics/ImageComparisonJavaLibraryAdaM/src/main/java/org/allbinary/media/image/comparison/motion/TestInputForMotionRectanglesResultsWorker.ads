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
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
--  with java.awt.event.InputEvent_Package; use java.awt.event.InputEvent_Package;
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.TempInputRobotNames_Package; use org.allbinary.input.automation.robot.TempInputRobotNames_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;

package org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package TempInputRobotNames_Package renames Standard.org.allbinary.input.automation.robot.TempInputRobotNames_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type TestInputForMotionRectanglesResultsWorker is tagged;
   type TestInputForMotionRectanglesResultsWorker_Access is access all TestInputForMotionRectanglesResultsWorker'Class;
   type TestInputForMotionRectanglesResultsWorker_Access_Array is array (Natural range <>) of TestInputForMotionRectanglesResultsWorker_Access;
   type TestInputForMotionRectanglesResultsWorker_Access_Array_Access is access all TestInputForMotionRectanglesResultsWorker_Access_Array;

   type TestInputForMotionRectanglesResultsWorker is new MotionRectanglesResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      index : Long_Long_Integer;
      running : Boolean;
      motionRectanglesVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out TestInputForMotionRectanglesResultsWorker'Class);
   function Create return TestInputForMotionRectanglesResultsWorker_Access;
   function getMotionRectanglesVector (This : in out TestInputForMotionRectanglesResultsWorker) return BasicArrayList_Access;
   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out TestInputForMotionRectanglesResultsWorker; motionRectanglesImageComparisonResultsEvent_Param : access MotionRectanglesResultsEvent'Class);
   procedure onEvent (This : in out TestInputForMotionRectanglesResultsWorker; allBinaryEventObject_Param : access AllBinaryEventObject'Class);
   function isRunning (This : in out TestInputForMotionRectanglesResultsWorker) return Boolean;
   procedure setRunning (This : in out TestInputForMotionRectanglesResultsWorker; running : Boolean);
   procedure run (This : in out TestInputForMotionRectanglesResultsWorker);

end org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package;


