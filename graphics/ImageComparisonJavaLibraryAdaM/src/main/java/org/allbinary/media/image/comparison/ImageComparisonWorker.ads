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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.media.image.comparison.ImageComparisonWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CapturedImageWorkerResultsEvent_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
   package CapturedImageWorkerResultsListener_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type ImageComparisonWorker is tagged;
   type ImageComparisonWorker_Access is access all ImageComparisonWorker'Class;
   type ImageComparisonWorker_Access_Array is array (Natural range <>) of ImageComparisonWorker_Access;
   type ImageComparisonWorker_Access_Array_Access is access all ImageComparisonWorker_Access_Array;

   type ImageComparisonWorker is new BasicEventHandler and CapturedImageWorkerResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      bufferedImageVector : BasicArrayList_Access;
      imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access;
      imageComparator : ImageComparator_Access;
      running : Boolean;
      index2 : Integer;
   end record;

   procedure Initialize (This : in out ImageComparisonWorker'Class; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access);
   function Create (imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) return ImageComparisonWorker_Access;
   function isRunning (This : in out ImageComparisonWorker) return Boolean;
   procedure isRunning (This : in out ImageComparisonWorker);
   procedure setRunning (This : in out ImageComparisonWorker; running : Boolean);
   procedure onCaptureEvent (This : in out ImageComparisonWorker; capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent_Access);
   procedure onEvent (This : in out ImageComparisonWorker; allBinaryEventObject : AllBinaryEventObject_Access);
   procedure run (This : in out ImageComparisonWorker);

end org.allbinary.media.image.comparison.ImageComparisonWorker_Package;


