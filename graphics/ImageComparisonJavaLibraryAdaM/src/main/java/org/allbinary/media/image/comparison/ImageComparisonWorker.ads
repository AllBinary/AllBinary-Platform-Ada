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

limited with org.allbinary.media.image.comparison.ImageComparisonWorker_Package;
package org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References is
   type ImageComparisonWorker_Access is access all org.allbinary.media.image.comparison.ImageComparisonWorker_Package.ImageComparisonWorker'Class;
   type ImageComparisonWorker_Access_Array is array (Natural range <>) of ImageComparisonWorker_Access;
   type ImageComparisonWorker_Access_Array_Access is access all ImageComparisonWorker_Access_Array;
   type ImageComparisonWorker_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonWorker_Access_Array_Access;
   type ImageComparisonWorker_Access_Array_Access_Array_Access is access all ImageComparisonWorker_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References;

with org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparator_Package;
with org.allbinary.media.image.comparison.ImageComparator_Package_References;

package org.allbinary.media.image.comparison.ImageComparisonWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CapturedImageWorkerResultsEvent_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
   package CapturedImageWorkerResultsListener_Package renames Standard.org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype CapturedImageWorkerResultsEvent_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access;
   use type CapturedImageWorkerResultsEvent_Access;
   subtype CapturedImageWorkerResultsEvent_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array;
   use type CapturedImageWorkerResultsEvent_Access_Array;
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access;
   use type CapturedImageWorkerResultsEvent_Access_Array_Access;
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access_Array;
   use type CapturedImageWorkerResultsEvent_Access_Array_Access_Array;
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access;
   use type CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access;
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   subtype ImageComparator_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access;
   use type ImageComparator_Access;
   subtype ImageComparator_Access_Array is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array;
   use type ImageComparator_Access_Array;
   subtype ImageComparator_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access;
   use type ImageComparator_Access_Array_Access;
   subtype ImageComparator_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access_Array;
   use type ImageComparator_Access_Array_Access_Array;
   subtype ImageComparator_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access_Array_Access;
   use type ImageComparator_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageComparisonWorker_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";
   subtype ImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References.ImageComparisonWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparisonWorker_Package_References."=";

   type ImageComparisonWorker is new BasicEventHandler and CapturedImageWorkerResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      bufferedImageVector : BasicArrayList_Access;
      imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access;
      imageComparator : ImageComparator_Access;
      running : Boolean;
      index2 : Integer;
   end record;

   procedure Initialize (This : in out ImageComparisonWorker'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class);
   function Create (imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) return ImageComparisonWorker_Access;
   function isRunning (This : in out ImageComparisonWorker) return Boolean;
   procedure setRunning (This : in out ImageComparisonWorker; running : Boolean);
   procedure onCaptureEvent (This : in out ImageComparisonWorker; capturedImageWorkerResultsEvent_Param : access CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class);
   procedure onEvent (This : in out ImageComparisonWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure run (This : in out ImageComparisonWorker);

end org.allbinary.media.image.comparison.ImageComparisonWorker_Package;


