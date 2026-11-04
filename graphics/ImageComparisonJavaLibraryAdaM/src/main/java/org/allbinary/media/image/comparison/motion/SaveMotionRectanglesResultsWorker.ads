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

limited with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;
package org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References is
   type SaveMotionRectanglesResultsWorker_Access is access all org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package.SaveMotionRectanglesResultsWorker'Class;
   type SaveMotionRectanglesResultsWorker_Access_Array is array (Natural range <>) of SaveMotionRectanglesResultsWorker_Access;
   type SaveMotionRectanglesResultsWorker_Access_Array_Access is access all SaveMotionRectanglesResultsWorker_Access_Array;
   type SaveMotionRectanglesResultsWorker_Access_Array_Access_Array is array (Natural range <>) of SaveMotionRectanglesResultsWorker_Access_Array_Access;
   type SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is access all SaveMotionRectanglesResultsWorker_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References;

with org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package; use org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References;

package org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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
   subtype MotionRectanglesResultsEvent_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access;
   use type MotionRectanglesResultsEvent_Access;
   subtype MotionRectanglesResultsEvent_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array;
   use type MotionRectanglesResultsEvent_Access_Array;
   subtype MotionRectanglesResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access;
   use type MotionRectanglesResultsEvent_Access_Array_Access;
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array;
   use type MotionRectanglesResultsEvent_Access_Array_Access_Array;
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   use type MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SaveMotionRectanglesResultsWorker_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";
   subtype SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References.SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveMotionRectanglesResultsWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package_References."=";

   type SaveMotionRectanglesResultsWorker is new Java_Object and MotionRectanglesResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      motionRectanglesVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveMotionRectanglesResultsWorker'Class);
   function Create return SaveMotionRectanglesResultsWorker_Access;
   function getMotionRectanglesVector (This : in out SaveMotionRectanglesResultsWorker) return BasicArrayList_Access;
   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out SaveMotionRectanglesResultsWorker; motionRectanglesResultsEvent_Param : access MotionRectanglesResultsEvent_Package.MotionRectanglesResultsEvent'Class);
   procedure onEvent (This : in out SaveMotionRectanglesResultsWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   function isRunning (This : in out SaveMotionRectanglesResultsWorker) return Boolean;
   procedure setRunning (This : in out SaveMotionRectanglesResultsWorker; running : Boolean);
   procedure run (This : in out SaveMotionRectanglesResultsWorker);

end org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker_Package;


