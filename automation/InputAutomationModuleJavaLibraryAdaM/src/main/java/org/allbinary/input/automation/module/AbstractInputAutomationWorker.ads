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
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package; use org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;

package org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package is

   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparisonWorker_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
   package MotionRectanglesWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type AbstractInputAutomationWorker is tagged;
   type AbstractInputAutomationWorker_Access is access all AbstractInputAutomationWorker'Class;
   type AbstractInputAutomationWorker_Access_Array is array (Natural range <>) of AbstractInputAutomationWorker_Access;
   type AbstractInputAutomationWorker_Access_Array_Access is access all AbstractInputAutomationWorker_Access_Array;

   type AbstractInputAutomationWorker is new RunnableInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      index : Long_Long_Integer;
      running : Boolean;
      inputAutomationActionInterface : InputAutomationActionInterface_Access;
      captureWorkerInterface : CaptureWorkerInterface_Access;
      imageComparisonWorker : ImageComparisonWorker_Access;
      motionRectanglesWorker : MotionRectanglesWorker_Access;
      captureThread : Thread_Access;
   end record;

   procedure Initialize (This : in out AbstractInputAutomationWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class);
   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class) return AbstractInputAutomationWorker_Access;
   procedure setThread (This : in out AbstractInputAutomationWorker; thread_Param : access Thread_Package.Thread'Class);
   function isRunning (This : in out AbstractInputAutomationWorker) return Boolean;
   procedure setRunning (This : in out AbstractInputAutomationWorker; running : Boolean);
   function isAnyDataWorkerRunning (This : in out AbstractInputAutomationWorker) return Boolean;
   procedure startDataWorkers (This : in out AbstractInputAutomationWorker);
   procedure waitForDataWorkers (This : in out AbstractInputAutomationWorker);
   procedure stopDataWorkers (This : in out AbstractInputAutomationWorker);
   procedure process (This : in out AbstractInputAutomationWorker);
   procedure run (This : in out AbstractInputAutomationWorker);
   function getInputAutomationActionInterface (This : in out AbstractInputAutomationWorker) return InputAutomationActionInterface_Access;
   procedure setInputAutomationActionInterface (This : in out AbstractInputAutomationWorker; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class);
   function getCaptureWorker (This : in out AbstractInputAutomationWorker) return CaptureWorkerInterface_Access;
   procedure setCaptureWorker (This : in out AbstractInputAutomationWorker; captureWorkerInterface_Param : access CaptureWorkerInterface_Package.CaptureWorkerInterface'Class);
   function getImageComparisonWorker (This : in out AbstractInputAutomationWorker) return ImageComparisonWorker_Access;
   procedure setImageComparisonWorker (This : in out AbstractInputAutomationWorker; imageComparisonWorker_Param : access ImageComparisonWorker_Package.ImageComparisonWorker'Class);
   function getMotionRectanglesWorker (This : in out AbstractInputAutomationWorker) return MotionRectanglesWorker_Access;
   procedure setMotionRectanglesWorker (This : in out AbstractInputAutomationWorker; motionRectanglesWorker_Param : access MotionRectanglesWorker_Package.MotionRectanglesWorker'Class);

end org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;


