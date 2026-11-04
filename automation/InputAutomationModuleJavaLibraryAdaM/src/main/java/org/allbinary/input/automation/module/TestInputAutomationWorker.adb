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


with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package; use org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package; use org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References;
with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package; use org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;
with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References;
with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package; use org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;
with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References;
with org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package; use org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package;
with org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References;

package body org.allbinary.input.automation.module.TestInputAutomationWorker_Package is

   subtype ScreenCaptureImagesWorker_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access;
   function "=" (Left, Right : ScreenCaptureImagesWorker_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References."=";
   subtype ScreenCaptureImagesWorker_Access_Array is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array;
   function "=" (Left, Right : ScreenCaptureImagesWorker_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References."=";
   subtype ScreenCaptureImagesWorker_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureImagesWorker_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References."=";
   subtype ScreenCaptureImagesWorker_Access_Array_Access_Array is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenCaptureImagesWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References."=";
   subtype ScreenCaptureImagesWorker_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References.ScreenCaptureImagesWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenCaptureImagesWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References."=";
   subtype ImageComparisonWorker_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype TestInputForMotionRectanglesResultsWorker_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access;
   function "=" (Left, Right : TestInputForMotionRectanglesResultsWorker_Access) return Boolean renames org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References."=";
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array;
   function "=" (Left, Right : TestInputForMotionRectanglesResultsWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References."=";
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access;
   function "=" (Left, Right : TestInputForMotionRectanglesResultsWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References."=";
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References."=";
   subtype TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References.TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputForMotionRectanglesResultsWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker_Package_References."=";
   procedure Initialize_Fields (This : in out TestInputAutomationWorker'Class) is
   begin
      null;
      
      This.imageComparisonWorker := null;
      This.motionRectanglesWorker := null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TestInputAutomationWorker'Class) is
   begin
      Initialize_Fields (This);
        This.captureWorker := ScreenCaptureImagesWorker_Package.Create;
        This.changedPixelsImageComparisonResultsWorker := SaveImageComparisonWorker_Package.Create;
        This.saveMotionRectanglesAsImagesWorker := SaveMotionRectanglesResultsWorker_Package.Create;
        This.moveMouseToFirstMotionRectanglesResultsWorker := TestInputForMotionRectanglesResultsWorker_Package.Create;
        This.motionRectanglesWorker.addListenerInterface (This.saveMotionRectanglesAsImagesWorker);
        This.motionRectanglesWorker.addListenerInterface (This.moveMouseToFirstMotionRectanglesResultsWorker);
        This.imageComparisonWorker.addListenerInterface (This.changedPixelsImageComparisonResultsWorker);
        This.imageComparisonWorker.addListenerInterface (This.motionRectanglesWorker);
        This.captureWorker.addListenerInterface (This.imageComparisonWorker);
   end Initialize;

   function Create return TestInputAutomationWorker_Access is
      This : constant TestInputAutomationWorker_Access := new TestInputAutomationWorker;
   begin
      TestInputAutomationWorker_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.input.automation.module.TestInputAutomationWorker_Package;


