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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package; use org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package; use org.allbinary.input.media.image.capture.CaptureWorkerInterface_Package;
with org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package; use org.allbinary.input.media.image.capture.ScreenScavangerRobot_Package;
with org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package; use org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;
with org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package; use org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;

package org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BufferedImageFrameCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageFrameCacheable_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type ScreenCaptureImagesWorker is tagged;
   type ScreenCaptureImagesWorker_Access is access all ScreenCaptureImagesWorker'Class;
   type ScreenCaptureImagesWorker_Access_Array is array (Natural range <>) of ScreenCaptureImagesWorker_Access;
   type ScreenCaptureImagesWorker_Access_Array_Access is access all ScreenCaptureImagesWorker_Access_Array;

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
   procedure setThread (This : in out ScreenCaptureImagesWorker; thread : Thread_Access);
   procedure run (This : in out ScreenCaptureImagesWorker);

end org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker_Package;


