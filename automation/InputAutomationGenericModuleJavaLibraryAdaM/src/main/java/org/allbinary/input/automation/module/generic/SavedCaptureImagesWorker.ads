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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package; use org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package is

   package SavedCaptureGenericProfileDataWorkerType_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package CaptureWorkerInterface_Package renames Standard.org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package ScreenScavangerRobot_Package renames Standard.org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;

   type SavedCaptureImagesWorker is tagged;
   type SavedCaptureImagesWorker_Access is access all SavedCaptureImagesWorker'Class;
   type SavedCaptureImagesWorker_Access_Array is array (Natural range <>) of SavedCaptureImagesWorker_Access;
   type SavedCaptureImagesWorker_Access_Array_Access is access all SavedCaptureImagesWorker_Access_Array;
   type SavedCaptureImagesWorker_Access_Array_Access_Array is array (Natural range <>) of SavedCaptureImagesWorker_Access_Array_Access;
   type SavedCaptureImagesWorker_Access_Array_Access_Array_Access is access all SavedCaptureImagesWorker_Access_Array_Access_Array;

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


