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
--  with java.io.File_Package; use java.io.File_Package;
--  with javax.imageio.ImageIO_Package; use javax.imageio.ImageIO_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package; use org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;
with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package; use org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.number.LongUtil_Package; use org.allbinary.logic.java.number.LongUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.logic.visual.media.MediaDataFactory_Package; use org.allbinary.logic.visual.media.MediaDataFactory_Package;
with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package; use org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package is

   package SavedCaptureGenericProfileDataWorkerType_Package renames org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
   package CaptureWorkerInterface_Package renames org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
   package CapturedBufferedImagesCacheSingleton_Package renames org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
   package CapturedImageWorkerResultsEvent_Package renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
   package ProcessingFrameIndexFactory_Package renames org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;
   package ScreenScavangerRobot_Package renames org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LongUtil_Package renames org.allbinary.logic.java.number.LongUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package MediaDataFactory_Package renames org.allbinary.logic.visual.media.MediaDataFactory_Package;
   package BufferedImageFrameCacheable_Package renames org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;

   type SavedCaptureImagesWorker is tagged;
   type SavedCaptureImagesWorker_Access is access all SavedCaptureImagesWorker'Class;
   type SavedCaptureImagesWorker_Access_Array is array (Natural range <>) of SavedCaptureImagesWorker_Access;
   type SavedCaptureImagesWorker_Access_Array_Access is access all SavedCaptureImagesWorker_Access_Array;

   type SavedCaptureImagesWorker is new BasicEventHandler and CaptureWorkerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      screenScavangerRobot : ScreenScavangerRobot_Access;
      savedCaptureGenericProfileDataWorkerType : SavedCaptureGenericProfileDataWorkerType_Access;
   end record;
   index : Long_Long_Integer;

   procedure Initialize (This : in out SavedCaptureImagesWorker'Class; savedCaptureGenericProfileDataWorkerType : SavedCaptureGenericProfileDataWorkerType_Access);
   function Create (savedCaptureGenericProfileDataWorkerType : SavedCaptureGenericProfileDataWorkerType_Access) return SavedCaptureImagesWorker_Access;
   procedure setThread (This : in out SavedCaptureImagesWorker; thread : Thread_Access);
   function isRunning (This : in out SavedCaptureImagesWorker) return Boolean;
   procedure isRunning (This : in out SavedCaptureImagesWorker);
   procedure setRunning (This : in out SavedCaptureImagesWorker; running : Boolean);
   procedure run (This : in out SavedCaptureImagesWorker);

end org.allbinary.input.automation.module.generic_Id.SavedCaptureImagesWorker_Package;


