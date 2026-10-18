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



package body org.allbinary.input.automation.module.TestInputAutomationWorker_Package is

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


