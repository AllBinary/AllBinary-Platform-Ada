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

limited with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package;
package org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References is
   type GenericInputAutomationWorker_Access is access all org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package.GenericInputAutomationWorker'Class;
   type GenericInputAutomationWorker_Access_Array is array (Natural range <>) of GenericInputAutomationWorker_Access;
   type GenericInputAutomationWorker_Access_Array_Access is access all GenericInputAutomationWorker_Access_Array;
   type GenericInputAutomationWorker_Access_Array_Access_Array is array (Natural range <>) of GenericInputAutomationWorker_Access_Array_Access;
   type GenericInputAutomationWorker_Access_Array_Access_Array_Access is access all GenericInputAutomationWorker_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References;

with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package; use org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
limited with org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;

package org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package is

   package AbstractInputAutomationWorker_Package renames Standard.org.allbinary.input.automation.module.AbstractInputAutomationWorker_Package;
   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
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
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   use type GenericProfile_Access;
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   use type GenericProfile_Access_Array;
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   use type GenericProfile_Access_Array_Access;
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   use type GenericProfile_Access_Array_Access_Array;
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   use type GenericProfile_Access_Array_Access_Array_Access;
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


   subtype GenericInputAutomationWorker_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References.GenericInputAutomationWorker_Access;
   function "=" (Left, Right : GenericInputAutomationWorker_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References."=";
   subtype GenericInputAutomationWorker_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References.GenericInputAutomationWorker_Access_Array;
   function "=" (Left, Right : GenericInputAutomationWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References."=";
   subtype GenericInputAutomationWorker_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References.GenericInputAutomationWorker_Access_Array_Access;
   function "=" (Left, Right : GenericInputAutomationWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References."=";
   subtype GenericInputAutomationWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References.GenericInputAutomationWorker_Access_Array_Access_Array;
   function "=" (Left, Right : GenericInputAutomationWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References."=";
   subtype GenericInputAutomationWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References.GenericInputAutomationWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericInputAutomationWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package_References."=";

   type GenericInputAutomationWorker is new AbstractInputAutomationWorker with record
      logUtil : LogUtil_Access;
      PROCESS_DATA_WORKER_RESULTS : Unbounded_String;
      lastFrame : Long_Long_Integer;
      frame : Long_Long_Integer;
      genericProfile : GenericProfile_Access;
   end record;

   procedure Initialize (This : in out GenericInputAutomationWorker'Class; inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class);
   function Create (inputAutomationActionInterface_Param : access InputAutomationActionInterface_Package.InputAutomationActionInterface'Class; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) return GenericInputAutomationWorker_Access;
   procedure processDataWorkerResults (This : in out GenericInputAutomationWorker);
   procedure process (This : in out GenericInputAutomationWorker);
   function getGenericProfile (This : in out GenericInputAutomationWorker) return GenericProfile_Access;
   procedure setGenericProfile (This : in out GenericInputAutomationWorker; genericProfile_Param : access GenericProfile_Package.GenericProfile'Class);
   function getFrame (This : in out GenericInputAutomationWorker) return Long_Long_Integer;
   procedure setFrame (This : in out GenericInputAutomationWorker; frame : Long_Long_Integer);

end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package;


