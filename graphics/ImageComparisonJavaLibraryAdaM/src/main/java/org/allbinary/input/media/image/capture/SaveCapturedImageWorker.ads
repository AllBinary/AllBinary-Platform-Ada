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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package; use org.allbinary.input.media.image.capture.CapturedImageInputOutput_Package;

package org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type SaveCapturedImageWorker is tagged;
   type SaveCapturedImageWorker_Access is access all SaveCapturedImageWorker'Class;
   type SaveCapturedImageWorker_Access_Array is array (Natural range <>) of SaveCapturedImageWorker_Access;
   type SaveCapturedImageWorker_Access_Array_Access is access all SaveCapturedImageWorker_Access_Array;

   type SaveCapturedImageWorker is new BasicEventHandler and CapturedImageWorkerResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      capturedImageWorkerResultsEventVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveCapturedImageWorker'Class);
   function Create return SaveCapturedImageWorker_Access;
   function isRunning (This : in out SaveCapturedImageWorker) return Boolean;
   procedure setRunning (This : in out SaveCapturedImageWorker; running : Boolean);
   procedure onCaptureEvent (This : in out SaveCapturedImageWorker; capturedImageEvent : CapturedImageWorkerResultsEvent_Access);
   procedure onEvent (This : in out SaveCapturedImageWorker; allBinaryEventObject : AllBinaryEventObject_Access);
   procedure run (This : in out SaveCapturedImageWorker);

end org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package;


