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
limited with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;
package org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References is
   type SaveImageComparisonWorker_Access is access all org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package.SaveImageComparisonWorker'Class;
   type SaveImageComparisonWorker_Access_Array is array (Natural range <>) of SaveImageComparisonWorker_Access;
   type SaveImageComparisonWorker_Access_Array_Access is access all SaveImageComparisonWorker_Access_Array;
   type SaveImageComparisonWorker_Access_Array_Access_Array is array (Natural range <>) of SaveImageComparisonWorker_Access_Array_Access;
   type SaveImageComparisonWorker_Access_Array_Access_Array_Access is access all SaveImageComparisonWorker_Access_Array_Access_Array;
   type SaveImageComparisonWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveImageComparisonWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveImageComparisonWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveImageComparisonWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveImageComparisonWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveImageComparisonWorker_Access_Array_Access is (if Value /= null and then Value.all in SaveImageComparisonWorker_Access_Array_Object'Class then SaveImageComparisonWorker_Access_Array_Object'Class (Value.all).Value else null);
   type SaveImageComparisonWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveImageComparisonWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveImageComparisonWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveImageComparisonWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveImageComparisonWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveImageComparisonWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SaveImageComparisonWorker_Access_Array_Access_Array_Object'Class then SaveImageComparisonWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References;

with org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References;
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
with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;
limited with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package_References;

package org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype SaveImageComparisonWorker_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   function Java_Box (Value : SaveImageComparisonWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.Java_Box;
   function Java_Unbox_SaveImageComparisonWorker_Access_Array (Value : access Java_Object'Class) return SaveImageComparisonWorker_Access_Array_Access renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.Java_Unbox_SaveImageComparisonWorker_Access_Array;
   subtype SaveImageComparisonWorker_Access_Array_Access_Array is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   subtype SaveImageComparisonWorker_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.SaveImageComparisonWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveImageComparisonWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References."=";
   function Java_Box (Value : SaveImageComparisonWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.Java_Box;
   function Java_Unbox_SaveImageComparisonWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return SaveImageComparisonWorker_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package_References.Java_Unbox_SaveImageComparisonWorker_Access_Array_Access_Array;

   type SaveImageComparisonWorker is new Java_Object and ImageComparisonResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      imageComparisonInfoVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveImageComparisonWorker'Class);
   function Create return SaveImageComparisonWorker_Access;
   procedure onImageComparisonResultsEvent (This : in out SaveImageComparisonWorker; imageComparisonResultsEvent_Param : access ImageComparisonResultsEvent_Package.ImageComparisonResultsEvent'Class);
   procedure onEvent (This : in out SaveImageComparisonWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   function isRunning (This : in out SaveImageComparisonWorker) return Boolean;
   procedure setRunning (This : in out SaveImageComparisonWorker; running : Boolean);
   procedure run (This : in out SaveImageComparisonWorker);

end org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;


