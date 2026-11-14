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

with AllBinary_Java;
limited with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;
package org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References is
   type MotionRectanglesWorker_Access is access all org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package.MotionRectanglesWorker'Class;
   type MotionRectanglesWorker_Access_Array is array (Natural range <>) of MotionRectanglesWorker_Access;
   type MotionRectanglesWorker_Access_Array_Access is access all MotionRectanglesWorker_Access_Array;
   type MotionRectanglesWorker_Access_Array_Access_Array is array (Natural range <>) of MotionRectanglesWorker_Access_Array_Access;
   type MotionRectanglesWorker_Access_Array_Access_Array_Access is access all MotionRectanglesWorker_Access_Array_Access_Array;
   type MotionRectanglesWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectanglesWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectanglesWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectanglesWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectanglesWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectanglesWorker_Access_Array_Access is (if Value /= null and then Value.all in MotionRectanglesWorker_Access_Array_Object'Class then MotionRectanglesWorker_Access_Array_Object'Class (Value.all).Value else null);
   type MotionRectanglesWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionRectanglesWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionRectanglesWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionRectanglesWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionRectanglesWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionRectanglesWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionRectanglesWorker_Access_Array_Access_Array_Object'Class then MotionRectanglesWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References;
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
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References;
with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package ImageComparisonResultsEvent_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
   package ImageComparisonResultsListener_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
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
   subtype ImageComparisonResultsEvent_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access;
   use type ImageComparisonResultsEvent_Access;
   subtype ImageComparisonResultsEvent_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array;
   use type ImageComparisonResultsEvent_Access_Array;
   subtype ImageComparisonResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access;
   use type ImageComparisonResultsEvent_Access_Array_Access;
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array;
   use type ImageComparisonResultsEvent_Access_Array_Access_Array;
   subtype ImageComparisonResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References.ImageComparisonResultsEvent_Access_Array_Access_Array_Access;
   use type ImageComparisonResultsEvent_Access_Array_Access_Array_Access;
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


   subtype MotionRectanglesWorker_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   function Java_Box (Value : MotionRectanglesWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.Java_Box;
   function Java_Unbox_MotionRectanglesWorker_Access_Array (Value : access Java_Object'Class) return MotionRectanglesWorker_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.Java_Unbox_MotionRectanglesWorker_Access_Array;
   subtype MotionRectanglesWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   subtype MotionRectanglesWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.MotionRectanglesWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References."=";
   function Java_Box (Value : MotionRectanglesWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.Java_Box;
   function Java_Unbox_MotionRectanglesWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionRectanglesWorker_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package_References.Java_Unbox_MotionRectanglesWorker_Access_Array_Access_Array;

   type MotionRectanglesWorker is new BasicEventHandler and ImageComparisonResultsListener with record
      MotionRectanglesWorker_Field_logUtil : LogUtil_Access;
      MotionRectanglesWorker_Field_commonStrings : CommonStrings_Access;
      imageComparisonInfoVector : BasicArrayList_Access;
      motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access;
      index : Long_Long_Integer;
      running : Boolean;
   end record;

   procedure Initialize (This : in out MotionRectanglesWorker'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class);
   function Create (motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class) return MotionRectanglesWorker_Access;
   procedure onImageComparisonResultsEvent (This : in out MotionRectanglesWorker; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class);
   procedure onEvent (This : in out MotionRectanglesWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   function isRunning (This : in out MotionRectanglesWorker) return Boolean;
   procedure setRunning (This : in out MotionRectanglesWorker; running : Boolean);
   procedure run (This : in out MotionRectanglesWorker);

end org.allbinary.media.image.comparison.motion.MotionRectanglesWorker_Package;


