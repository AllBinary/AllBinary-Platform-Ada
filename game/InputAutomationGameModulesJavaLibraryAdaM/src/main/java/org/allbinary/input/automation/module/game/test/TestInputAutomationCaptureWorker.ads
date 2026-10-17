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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package; use org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.cache.J2SECacheInterface_Package; use org.allbinary.logic.util.cache.J2SECacheInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package; use org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package; use org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;

package org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AbstractInputAutomationWorker_Package renames Standard.org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package GenericProfileAction_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package GenericProfileActionScript_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;
   package CapturedBufferedImagesCacheSingleton_Package renames Standard.org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package J2SECacheInterface_Package renames Standard.org.allbinary.logic.util.cache.J2SECacheInterface_Package;
   package ImageComparatorConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
   package MotionRectangleConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;

   type TestInputAutomationCaptureWorker is tagged;
   type TestInputAutomationCaptureWorker_Access is access all TestInputAutomationCaptureWorker'Class;
   type TestInputAutomationCaptureWorker_Access_Array is array (Natural range <>) of TestInputAutomationCaptureWorker_Access;
   type TestInputAutomationCaptureWorker_Access_Array_Access is access all TestInputAutomationCaptureWorker_Access_Array;

   type TestInputAutomationCaptureWorker is new AbstractInputAutomationWorker with record
      logUtil : LogUtil_Access;
      genericProfileActions : GenericProfileActions_Access;
      MESSAGE : Unbounded_String;
      PROCESS_DATA_WORKER_RESULTS : Unbounded_String;
      IMAGE_AVAILABLE_SO_PROCESSING : Unbounded_String;
      IMAGE_NOT_AVAILABLE : Unbounded_String;
   end record;

   procedure Initialize (This : in out TestInputAutomationCaptureWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface'Class);
   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface'Class) return TestInputAutomationCaptureWorker_Access;
   procedure processDataWorkerResults (This : in out TestInputAutomationCaptureWorker);
   procedure process (This : in out TestInputAutomationCaptureWorker);
   function getGenericProfileActions (This : in out TestInputAutomationCaptureWorker) return GenericProfileActions_Access;
   procedure setGenericProfileActions (This : in out TestInputAutomationCaptureWorker; genericProfileActions_Param : access GenericProfileActions'Class);

end org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package;


