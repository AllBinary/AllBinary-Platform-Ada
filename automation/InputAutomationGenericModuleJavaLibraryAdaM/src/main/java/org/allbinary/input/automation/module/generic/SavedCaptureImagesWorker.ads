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

limited with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;
package org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References is
   type SavedCaptureImagesWorker_Access is access all org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package.SavedCaptureImagesWorker'Class;
   type SavedCaptureImagesWorker_Access_Array is array (Natural range <>) of SavedCaptureImagesWorker_Access;
   type SavedCaptureImagesWorker_Access_Array_Access is access all SavedCaptureImagesWorker_Access_Array;
   type SavedCaptureImagesWorker_Access_Array_Access_Array is array (Natural range <>) of SavedCaptureImagesWorker_Access_Array_Access;
   type SavedCaptureImagesWorker_Access_Array_Access_Array_Access is access all SavedCaptureImagesWorker_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References;

with org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
limited with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package is

   package SavedCaptureGenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package ScreenScavangerRobot_Package renames Standard.org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype SavedCaptureGenericProfileDataWorkerType_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References.SavedCaptureGenericProfileDataWorkerType_Access;
   use type SavedCaptureGenericProfileDataWorkerType_Access;
   subtype SavedCaptureGenericProfileDataWorkerType_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References.SavedCaptureGenericProfileDataWorkerType_Access_Array;
   use type SavedCaptureGenericProfileDataWorkerType_Access_Array;
   subtype SavedCaptureGenericProfileDataWorkerType_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References.SavedCaptureGenericProfileDataWorkerType_Access_Array_Access;
   use type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access;
   subtype SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References.SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array;
   use type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array;
   subtype SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package_References.SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array_Access;
   use type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype SavedCaptureImagesWorker_Access is org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References.SavedCaptureImagesWorker_Access;
   function "=" (Left, Right : SavedCaptureImagesWorker_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References."=";
   subtype SavedCaptureImagesWorker_Access_Array is org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References.SavedCaptureImagesWorker_Access_Array;
   function "=" (Left, Right : SavedCaptureImagesWorker_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References."=";
   subtype SavedCaptureImagesWorker_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References.SavedCaptureImagesWorker_Access_Array_Access;
   function "=" (Left, Right : SavedCaptureImagesWorker_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References."=";
   subtype SavedCaptureImagesWorker_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References.SavedCaptureImagesWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SavedCaptureImagesWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References."=";
   subtype SavedCaptureImagesWorker_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References.SavedCaptureImagesWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SavedCaptureImagesWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package_References."=";

   type SavedCaptureImagesWorker is new BasicEventHandler and CaptureWorkerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      screenScavangerRobot : ScreenScavangerRobot_Access;
      savedCaptureGenericProfileDataWorkerType : SavedCaptureGenericProfileDataWorkerType_Access;
   end record;
   index : Long_Long_Integer;

   procedure Initialize (This : in out SavedCaptureImagesWorker'Class; savedCaptureGenericProfileDataWorkerType_Param : access SavedCaptureGenericProfileDataWorkerType_Package.SavedCaptureGenericProfileDataWorkerType'Class);
   function Create (savedCaptureGenericProfileDataWorkerType_Param : access SavedCaptureGenericProfileDataWorkerType_Package.SavedCaptureGenericProfileDataWorkerType'Class) return SavedCaptureImagesWorker_Access;
   procedure setThread (This : in out SavedCaptureImagesWorker; thread_Param : access Thread_Package.Thread'Class);
   function isRunning (This : in out SavedCaptureImagesWorker) return Boolean;
   procedure setRunning (This : in out SavedCaptureImagesWorker; running : Boolean);
   procedure run (This : in out SavedCaptureImagesWorker);

end org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;


