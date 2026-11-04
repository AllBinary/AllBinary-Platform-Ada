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

limited with org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package;
package org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References is
   type TestInputAutomationActionWorker_Access is access all org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package.TestInputAutomationActionWorker'Class;
   type TestInputAutomationActionWorker_Access_Array is array (Natural range <>) of TestInputAutomationActionWorker_Access;
   type TestInputAutomationActionWorker_Access_Array_Access is access all TestInputAutomationActionWorker_Access_Array;
   type TestInputAutomationActionWorker_Access_Array_Access_Array is array (Natural range <>) of TestInputAutomationActionWorker_Access_Array_Access;
   type TestInputAutomationActionWorker_Access_Array_Access_Array_Access is access all TestInputAutomationActionWorker_Access_Array_Access_Array;
end org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References;

with org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;
with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package; use org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
limited with org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References;

package org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparatorConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
   package MotionRectangleConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
   package Reference_Types is
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
   subtype ImageComparatorConstraintsInterface_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access;
   use type ImageComparatorConstraintsInterface_Access;
   subtype ImageComparatorConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array;
   use type ImageComparatorConstraintsInterface_Access_Array;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access;
   use type ImageComparatorConstraintsInterface_Access_Array_Access;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   use type ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   use type ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   subtype MotionRectangleConstraintsInterface_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access;
   use type MotionRectangleConstraintsInterface_Access;
   subtype MotionRectangleConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array;
   use type MotionRectangleConstraintsInterface_Access_Array;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access;
   use type MotionRectangleConstraintsInterface_Access_Array_Access;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   use type MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
   use type MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
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


   subtype TestInputAutomationActionWorker_Access is org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References.TestInputAutomationActionWorker_Access;
   function "=" (Left, Right : TestInputAutomationActionWorker_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References."=";
   subtype TestInputAutomationActionWorker_Access_Array is org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References.TestInputAutomationActionWorker_Access_Array;
   function "=" (Left, Right : TestInputAutomationActionWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References."=";
   subtype TestInputAutomationActionWorker_Access_Array_Access is org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References.TestInputAutomationActionWorker_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationActionWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References."=";
   subtype TestInputAutomationActionWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References.TestInputAutomationActionWorker_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputAutomationActionWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References."=";
   subtype TestInputAutomationActionWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References.TestInputAutomationActionWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationActionWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package_References."=";

   type TestInputAutomationActionWorker is new AbstractInputAutomationWorker with record
      logUtil : LogUtil_Access;
      sleep : Integer;
   end record;

   procedure Initialize (This : in out TestInputAutomationActionWorker'Class; sleep : Integer; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class);
   function Create (sleep : Integer; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return TestInputAutomationActionWorker_Access;
   procedure processBetweenWorkers (This : in out TestInputAutomationActionWorker);
   procedure process (This : in out TestInputAutomationActionWorker);

end org.allbinary.input.automation.module.TestInputAutomationActionWorker_Package;


