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
limited with org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package;
package org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References is
   type SaveCapturedImageWorker_Access is access all org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package.SaveCapturedImageWorker'Class;
   type SaveCapturedImageWorker_Access_Array is array (Natural range <>) of SaveCapturedImageWorker_Access;
   type SaveCapturedImageWorker_Access_Array_Access is access all SaveCapturedImageWorker_Access_Array;
   type SaveCapturedImageWorker_Access_Array_Access_Array is array (Natural range <>) of SaveCapturedImageWorker_Access_Array_Access;
   type SaveCapturedImageWorker_Access_Array_Access_Array_Access is access all SaveCapturedImageWorker_Access_Array_Access_Array;
   type SaveCapturedImageWorker_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveCapturedImageWorker_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveCapturedImageWorker_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveCapturedImageWorker_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveCapturedImageWorker_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveCapturedImageWorker_Access_Array_Access is (if Value /= null and then Value.all in SaveCapturedImageWorker_Access_Array_Object'Class then SaveCapturedImageWorker_Access_Array_Object'Class (Value.all).Value else null);
   type SaveCapturedImageWorker_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveCapturedImageWorker_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveCapturedImageWorker_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveCapturedImageWorker_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveCapturedImageWorker_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveCapturedImageWorker_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SaveCapturedImageWorker_Access_Array_Access_Array_Object'Class then SaveCapturedImageWorker_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References;

with org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package; use org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
limited with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References;

package org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype SaveCapturedImageWorker_Access is org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.SaveCapturedImageWorker_Access;
   function "=" (Left, Right : SaveCapturedImageWorker_Access) return Boolean renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References."=";
   subtype SaveCapturedImageWorker_Access_Array is org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.SaveCapturedImageWorker_Access_Array;
   function "=" (Left, Right : SaveCapturedImageWorker_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References."=";
   subtype SaveCapturedImageWorker_Access_Array_Access is org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.SaveCapturedImageWorker_Access_Array_Access;
   function "=" (Left, Right : SaveCapturedImageWorker_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References."=";
   function Java_Box (Value : SaveCapturedImageWorker_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.Java_Box;
   function Java_Unbox_SaveCapturedImageWorker_Access_Array (Value : access Java_Object'Class) return SaveCapturedImageWorker_Access_Array_Access renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.Java_Unbox_SaveCapturedImageWorker_Access_Array;
   subtype SaveCapturedImageWorker_Access_Array_Access_Array is org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.SaveCapturedImageWorker_Access_Array_Access_Array;
   function "=" (Left, Right : SaveCapturedImageWorker_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References."=";
   subtype SaveCapturedImageWorker_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.SaveCapturedImageWorker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveCapturedImageWorker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References."=";
   function Java_Box (Value : SaveCapturedImageWorker_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.Java_Box;
   function Java_Unbox_SaveCapturedImageWorker_Access_Array_Access_Array (Value : access Java_Object'Class) return SaveCapturedImageWorker_Access_Array_Access_Array_Access renames org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package_References.Java_Unbox_SaveCapturedImageWorker_Access_Array_Access_Array;

   type SaveCapturedImageWorker is new BasicEventHandler and CapturedImageWorkerResultsListener with record
      SaveCapturedImageWorker_Field_logUtil : LogUtil_Access;
      SaveCapturedImageWorker_Field_commonStrings : CommonStrings_Access;
      running : Boolean;
      capturedImageWorkerResultsEventVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveCapturedImageWorker'Class);
   function Create return SaveCapturedImageWorker_Access;
   function isRunning (This : in out SaveCapturedImageWorker) return Boolean;
   procedure setRunning (This : in out SaveCapturedImageWorker; running : Boolean);
   procedure onCaptureEvent (This : in out SaveCapturedImageWorker; capturedImageEvent_Param : access CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class);
   procedure onEvent (This : in out SaveCapturedImageWorker; allBinaryEventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure run (This : in out SaveCapturedImageWorker);

end org.allbinary.input.media.image.capture.SaveCapturedImageWorker_Package;


