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

limited with org.allbinary.input.automation.module.TestInputAutomationWorker_Package;
package org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References is
   type TestInputAutomationWorker_Access is access all org.allbinary.input.automation.module.TestInputAutomationWorker_Package.TestInputAutomationWorker'Class;
   type TestInputAutomationWorker_Access_Array is array (Natural range <>) of TestInputAutomationWorker_Access;
   type TestInputAutomationWorker_Access_Array_Access is access all TestInputAutomationWorker_Access_Array;
   type TestInputAutomationWorker_Access_Array_Access_Array is array (Natural range <>) of TestInputAutomationWorker_Access_Array_Access;
   type TestInputAutomationWorker_Access_Array_Access_Array_Access is access all TestInputAutomationWorker_Access_Array_Access_Array;
end org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References;

with org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References;
limited with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References;
limited with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;
with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References;
limited with org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package;
with org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References;

package org.allbinary.input.automation.module.TestInputAutomationWorker_Package is

   package ScreenCaptureImagesWorker_Package renames Standard.org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
   package ImageComparisonWorker_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
   package SaveImageComparisonWorker_Package renames Standard.org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;
   package MotionRectanglesWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
   package SaveMotionRectanglesResultsWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;
   package TestInputForMotionRectanglesResultsWorker_Package renames Standard.org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package;
   package Reference_Types is
   subtype ScreenCaptureImagesWorker_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access;
   use type ScreenCaptureImagesWorker_Access;
   subtype ScreenCaptureImagesWorker_Access_Array is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array;
   use type ScreenCaptureImagesWorker_Access_Array;
   subtype ScreenCaptureImagesWorker_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access;
   use type ScreenCaptureImagesWorker_Access_Array_Access;
   subtype ScreenCaptureImagesWorker_Access_Array_Access_Array is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access_Array;
   use type ScreenCaptureImagesWorker_Access_Array_Access_Array;
   subtype ScreenCaptureImagesWorker_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access_Array_Access;
   use type ScreenCaptureImagesWorker_Access_Array_Access_Array_Access;
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
   subtype SaveImageComparisonWorker_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access;
   use type SaveImageComparisonWorker_Access;
   subtype SaveImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array;
   use type SaveImageComparisonWorker_Access_Array;
   subtype SaveImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access;
   use type SaveImageComparisonWorker_Access_Array_Access;
   subtype SaveImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array;
   use type SaveImageComparisonWorker_Access_Array_Access_Array;
   subtype SaveImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array_Access;
   use type SaveImageComparisonWorker_Access_Array_Access_Array_Access;
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
   subtype SaveMotionRectanglesResultsWorker_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access;
   use type SaveMotionRectanglesResultsWorker_Access;
   subtype SaveMotionRectanglesResultsWorker_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array;
   use type SaveMotionRectanglesResultsWorker_Access_Array;
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access;
   use type SaveMotionRectanglesResultsWorker_Access_Array_Access;
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array;
   use type SaveMotionRectanglesResultsWorker_Access_Array_Access_Array;
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   use type SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   subtype TestInputForMotionRectanglesResultsWorker_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access;
   use type TestInputForMotionRectanglesResultsWorker_Access;
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array;
   use type TestInputForMotionRectanglesResultsWorker_Access_Array;
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access;
   use type TestInputForMotionRectanglesResultsWorker_Access_Array_Access;
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array;
   use type TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array;
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   use type TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TestInputAutomationWorker_Access is org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References.TestInputAutomationWorker_Access;
   function "=" (Left, Right : TestInputAutomationWorker_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References."=";
   subtype TestInputAutomationWorker_Access_Array is org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References.TestInputAutomationWorker_Access_Array;
   function "=" (Left, Right : TestInputAutomationWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References."=";
   subtype TestInputAutomationWorker_Access_Array_Access is org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References.TestInputAutomationWorker_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References."=";
   subtype TestInputAutomationWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References.TestInputAutomationWorker_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputAutomationWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References."=";
   subtype TestInputAutomationWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References.TestInputAutomationWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.TestInputAutomationWorker_Package_References."=";

   type TestInputAutomationWorker is new Java_Object with record
      captureWorker : ScreenCaptureImagesWorker_Access;
      imageComparisonWorker : ImageComparisonWorker_Access;
      motionRectanglesWorker : MotionRectanglesWorker_Access;
      changedPixelsImageComparisonResultsWorker : SaveImageComparisonWorker_Access;
      saveMotionRectanglesAsImagesWorker : SaveMotionRectanglesResultsWorker_Access;
      moveMouseToFirstMotionRectanglesResultsWorker : TestInputForMotionRectanglesResultsWorker_Access;
   end record;

   procedure Initialize (This : in out TestInputAutomationWorker'Class);
   function Create return TestInputAutomationWorker_Access;

end org.allbinary.input.automation.module.TestInputAutomationWorker_Package;


