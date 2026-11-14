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
limited with org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package;
package org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References is
   type TestInputAutomationCaptureWorker_Access is access all org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package.TestInputAutomationCaptureWorker'Class;
   type TestInputAutomationCaptureWorker_Access_Array is array (Natural range <>) of TestInputAutomationCaptureWorker_Access;
   type TestInputAutomationCaptureWorker_Access_Array_Access is access all TestInputAutomationCaptureWorker_Access_Array;
   type TestInputAutomationCaptureWorker_Access_Array_Access_Array is array (Natural range <>) of TestInputAutomationCaptureWorker_Access_Array_Access;
   type TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access is access all TestInputAutomationCaptureWorker_Access_Array_Access_Array;
   type TestInputAutomationCaptureWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestInputAutomationCaptureWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : TestInputAutomationCaptureWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestInputAutomationCaptureWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestInputAutomationCaptureWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestInputAutomationCaptureWorker_Access_Array_Access is (if Value /= null and then Value.all in TestInputAutomationCaptureWorker_Access_Array_Object'Class then TestInputAutomationCaptureWorker_Access_Array_Object'Class (Value.all).Value else null);
   type TestInputAutomationCaptureWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestInputAutomationCaptureWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestInputAutomationCaptureWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TestInputAutomationCaptureWorker_Access_Array_Access_Array_Object'Class then TestInputAutomationCaptureWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References;

with org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package; use org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
limited with org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;

package org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package is

   package AbstractInputAutomationWorker_Package renames Standard.org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparatorConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
   package MotionRectangleConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
   package Reference_Types is
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
   subtype GenericProfileActions_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access;
   use type GenericProfileActions_Access;
   subtype GenericProfileActions_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array;
   use type GenericProfileActions_Access_Array;
   subtype GenericProfileActions_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access;
   use type GenericProfileActions_Access_Array_Access;
   subtype GenericProfileActions_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array;
   use type GenericProfileActions_Access_Array_Access_Array;
   subtype GenericProfileActions_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array_Access;
   use type GenericProfileActions_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype TestInputAutomationCaptureWorker_Access is org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.TestInputAutomationCaptureWorker_Access;
   function "=" (Left, Right : TestInputAutomationCaptureWorker_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References."=";
   subtype TestInputAutomationCaptureWorker_Access_Array is org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.TestInputAutomationCaptureWorker_Access_Array;
   function "=" (Left, Right : TestInputAutomationCaptureWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References."=";
   subtype TestInputAutomationCaptureWorker_Access_Array_Access is org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.TestInputAutomationCaptureWorker_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationCaptureWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References."=";
   function Java_Box (Value : TestInputAutomationCaptureWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.Java_Box;
   function Java_Unbox_TestInputAutomationCaptureWorker_Access_Array (Value : access Java_Object'Class) return TestInputAutomationCaptureWorker_Access_Array_Access renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.Java_Unbox_TestInputAutomationCaptureWorker_Access_Array;
   subtype TestInputAutomationCaptureWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.TestInputAutomationCaptureWorker_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputAutomationCaptureWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References."=";
   subtype TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References."=";
   function Java_Box (Value : TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.Java_Box;
   function Java_Unbox_TestInputAutomationCaptureWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return TestInputAutomationCaptureWorker_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package_References.Java_Unbox_TestInputAutomationCaptureWorker_Access_Array_Access_Array;

   type TestInputAutomationCaptureWorker is new AbstractInputAutomationWorker with record
      logUtil : LogUtil_Access;
      genericProfileActions : GenericProfileActions_Access;
      MESSAGE : Unbounded_String;
      PROCESS_DATA_WORKER_RESULTS : Unbounded_String;
      IMAGE_AVAILABLE_SO_PROCESSING : Unbounded_String;
      IMAGE_NOT_AVAILABLE : Unbounded_String;
   end record;

   procedure Initialize (This : in out TestInputAutomationCaptureWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class);
   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return TestInputAutomationCaptureWorker_Access;
   procedure processDataWorkerResults (This : in out TestInputAutomationCaptureWorker);
   procedure process (This : in out TestInputAutomationCaptureWorker);
   function getGenericProfileActions (This : in out TestInputAutomationCaptureWorker) return GenericProfileActions_Access;
   procedure setGenericProfileActions (This : in out TestInputAutomationCaptureWorker; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class);

end org.allbinary.input.automation.module.game.test.TestInputAutomationCaptureWorker_Package;


