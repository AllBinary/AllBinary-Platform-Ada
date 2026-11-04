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

limited with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;
package org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References is
   type ScreenCaptureImagesWorker_Access is access all org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package.ScreenCaptureImagesWorker'Class;
   type ScreenCaptureImagesWorker_Access_Array is array (Natural range <>) of ScreenCaptureImagesWorker_Access;
   type ScreenCaptureImagesWorker_Access_Array_Access is access all ScreenCaptureImagesWorker_Access_Array;
   type ScreenCaptureImagesWorker_Access_Array_Access_Array is array (Natural range <>) of ScreenCaptureImagesWorker_Access_Array_Access;
   type ScreenCaptureImagesWorker_Access_Array_Access_Array_Access is access all ScreenCaptureImagesWorker_Access_Array_Access_Array;
end org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References;

with org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
limited with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
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
   subtype ScreenScavangerRobot_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access;
   use type ScreenScavangerRobot_Access;
   subtype ScreenScavangerRobot_Access_Array is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array;
   use type ScreenScavangerRobot_Access_Array;
   subtype ScreenScavangerRobot_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access;
   use type ScreenScavangerRobot_Access_Array_Access;
   subtype ScreenScavangerRobot_Access_Array_Access_Array is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access_Array;
   use type ScreenScavangerRobot_Access_Array_Access_Array;
   subtype ScreenScavangerRobot_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References.ScreenScavangerRobot_Access_Array_Access_Array_Access;
   use type ScreenScavangerRobot_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type ScreenCaptureImagesWorker is new BasicEventHandler and CaptureWorkerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      screenScavangerRobot : ScreenScavangerRobot_Access;
   end record;
   index : Long_Long_Integer;

   procedure Initialize (This : in out ScreenCaptureImagesWorker'Class);
   function Create return ScreenCaptureImagesWorker_Access;
   function isRunning (This : in out ScreenCaptureImagesWorker) return Boolean;
   procedure setRunning (This : in out ScreenCaptureImagesWorker; running : Boolean);
   procedure setThread (This : in out ScreenCaptureImagesWorker; thread_Param : access Thread_Package.Thread'Class);
   procedure run (This : in out ScreenCaptureImagesWorker);

end org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;


