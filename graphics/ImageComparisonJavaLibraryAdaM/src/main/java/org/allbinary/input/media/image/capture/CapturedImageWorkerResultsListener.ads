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
limited with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;
package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References is
   type CapturedImageWorkerResultsListener_Access is access all org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package.CapturedImageWorkerResultsListener'Class;
   type CapturedImageWorkerResultsListener_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsListener_Access;
   type CapturedImageWorkerResultsListener_Access_Array_Access is access all CapturedImageWorkerResultsListener_Access_Array;
   type CapturedImageWorkerResultsListener_Access_Array_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsListener_Access_Array_Access;
   type CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access is access all CapturedImageWorkerResultsListener_Access_Array_Access_Array;
   type CapturedImageWorkerResultsListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageWorkerResultsListener_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageWorkerResultsListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageWorkerResultsListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageWorkerResultsListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageWorkerResultsListener_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageWorkerResultsListener_Access_Array_Object'Class then CapturedImageWorkerResultsListener_Access_Array_Object'Class (Value.all).Value else null);
   type CapturedImageWorkerResultsListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageWorkerResultsListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageWorkerResultsListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageWorkerResultsListener_Access_Array_Access_Array_Object'Class then CapturedImageWorkerResultsListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References;

with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package; use org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
limited with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References;

package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package is

   package BasicEventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.BasicEventListenerInterface_Package;
   package Reference_Types is
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


   type CapturedImageWorkerResultsListener is interface and BasicEventListenerInterface;
   subtype CapturedImageWorkerResultsListener_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.CapturedImageWorkerResultsListener_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsListener_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References."=";
   subtype CapturedImageWorkerResultsListener_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.CapturedImageWorkerResultsListener_Access_Array;
   function "=" (Left, Right : CapturedImageWorkerResultsListener_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References."=";
   subtype CapturedImageWorkerResultsListener_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.CapturedImageWorkerResultsListener_Access_Array_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsListener_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References."=";
   function Java_Box (Value : CapturedImageWorkerResultsListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.Java_Box;
   function Java_Unbox_CapturedImageWorkerResultsListener_Access_Array (Value : access Java_Object'Class) return CapturedImageWorkerResultsListener_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.Java_Unbox_CapturedImageWorkerResultsListener_Access_Array;
   subtype CapturedImageWorkerResultsListener_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.CapturedImageWorkerResultsListener_Access_Array_Access_Array;
   function "=" (Left, Right : CapturedImageWorkerResultsListener_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References."=";
   subtype CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References."=";
   function Java_Box (Value : CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.Java_Box;
   function Java_Unbox_CapturedImageWorkerResultsListener_Access_Array_Access_Array (Value : access Java_Object'Class) return CapturedImageWorkerResultsListener_Access_Array_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package_References.Java_Unbox_CapturedImageWorkerResultsListener_Access_Array_Access_Array;
   function Java_Object_Access_From_CapturedImageWorkerResultsListener (Value : CapturedImageWorkerResultsListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onCaptureEvent (This : in out CapturedImageWorkerResultsListener; capturedimageworkerresultsevent_Param : access CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class) is abstract;

end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener_Package;


