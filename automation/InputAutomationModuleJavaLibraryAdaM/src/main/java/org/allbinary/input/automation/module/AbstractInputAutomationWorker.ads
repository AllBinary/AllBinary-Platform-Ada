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

with AllBinary_Java;
limited with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
package org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References is
   type AbstractInputAutomationWorker_Access is access all org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package.AbstractInputAutomationWorker'Class;
   type AbstractInputAutomationWorker_Access_Array is array (Natural range <>) of AbstractInputAutomationWorker_Access;
   type AbstractInputAutomationWorker_Access_Array_Access is access all AbstractInputAutomationWorker_Access_Array;
   type AbstractInputAutomationWorker_Access_Array_Access_Array is array (Natural range <>) of AbstractInputAutomationWorker_Access_Array_Access;
   type AbstractInputAutomationWorker_Access_Array_Access_Array_Access is access all AbstractInputAutomationWorker_Access_Array_Access_Array;
   type AbstractInputAutomationWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputAutomationWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputAutomationWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputAutomationWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputAutomationWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputAutomationWorker_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputAutomationWorker_Access_Array_Object'Class then AbstractInputAutomationWorker_Access_Array_Object'Class (Value.all).Value else null);
   type AbstractInputAutomationWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbstractInputAutomationWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbstractInputAutomationWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbstractInputAutomationWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbstractInputAutomationWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbstractInputAutomationWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbstractInputAutomationWorker_Access_Array_Access_Array_Object'Class then AbstractInputAutomationWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References;

with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
limited with org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package is

   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparisonWorker_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
   package MotionRectanglesWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype CaptureWorkerInterface_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access;
   use type CaptureWorkerInterface_Access;
   subtype CaptureWorkerInterface_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array;
   use type CaptureWorkerInterface_Access_Array;
   subtype CaptureWorkerInterface_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access;
   use type CaptureWorkerInterface_Access_Array_Access;
   subtype CaptureWorkerInterface_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array;
   use type CaptureWorkerInterface_Access_Array_Access_Array;
   subtype CaptureWorkerInterface_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package_References.CaptureWorkerInterface_Access_Array_Access_Array_Access;
   use type CaptureWorkerInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype ImageComparisonWorker_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access;
   use type ImageComparisonWorker_Access;
   subtype ImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array;
   use type ImageComparisonWorker_Access_Array;
   subtype ImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access;
   use type ImageComparisonWorker_Access_Array_Access;
   subtype ImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array;
   use type ImageComparisonWorker_Access_Array_Access_Array;
   subtype ImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array_Access;
   use type ImageComparisonWorker_Access_Array_Access_Array_Access;
   subtype MotionRectanglesWorker_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access;
   use type MotionRectanglesWorker_Access;
   subtype MotionRectanglesWorker_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array;
   use type MotionRectanglesWorker_Access_Array;
   subtype MotionRectanglesWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access;
   use type MotionRectanglesWorker_Access_Array_Access;
   subtype MotionRectanglesWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array;
   use type MotionRectanglesWorker_Access_Array_Access_Array;
   subtype MotionRectanglesWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array_Access;
   use type MotionRectanglesWorker_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype InputAutomationActionInterface_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access;
   use type InputAutomationActionInterface_Access;
   subtype InputAutomationActionInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array;
   use type InputAutomationActionInterface_Access_Array;
   subtype InputAutomationActionInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access;
   use type InputAutomationActionInterface_Access_Array_Access;
   subtype InputAutomationActionInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access_Array;
   use type InputAutomationActionInterface_Access_Array_Access_Array;
   subtype InputAutomationActionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References.InputAutomationActionInterface_Access_Array_Access_Array_Access;
   use type InputAutomationActionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbstractInputAutomationWorker_Access is org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.AbstractInputAutomationWorker_Access;
   function "=" (Left, Right : AbstractInputAutomationWorker_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References."=";
   subtype AbstractInputAutomationWorker_Access_Array is org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.AbstractInputAutomationWorker_Access_Array;
   function "=" (Left, Right : AbstractInputAutomationWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References."=";
   subtype AbstractInputAutomationWorker_Access_Array_Access is org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.AbstractInputAutomationWorker_Access_Array_Access;
   function "=" (Left, Right : AbstractInputAutomationWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References."=";
   function Java_Box (Value : AbstractInputAutomationWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.Java_Box;
   function Java_Unbox_AbstractInputAutomationWorker_Access_Array (Value : access Java_Object'Class) return AbstractInputAutomationWorker_Access_Array_Access renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.Java_Unbox_AbstractInputAutomationWorker_Access_Array;
   subtype AbstractInputAutomationWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.AbstractInputAutomationWorker_Access_Array_Access_Array;
   function "=" (Left, Right : AbstractInputAutomationWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References."=";
   subtype AbstractInputAutomationWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.AbstractInputAutomationWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbstractInputAutomationWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References."=";
   function Java_Box (Value : AbstractInputAutomationWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.Java_Box;
   function Java_Unbox_AbstractInputAutomationWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return AbstractInputAutomationWorker_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package_References.Java_Unbox_AbstractInputAutomationWorker_Access_Array_Access_Array;

   type AbstractInputAutomationWorker is new Java_Object and RunnableInterface with record
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


