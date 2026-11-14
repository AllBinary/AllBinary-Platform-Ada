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
limited with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;
package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References is
   type CapturedImageWorkerResultsEvent_Access is access all org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package.CapturedImageWorkerResultsEvent'Class;
   type CapturedImageWorkerResultsEvent_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsEvent_Access;
   type CapturedImageWorkerResultsEvent_Access_Array_Access is access all CapturedImageWorkerResultsEvent_Access_Array;
   type CapturedImageWorkerResultsEvent_Access_Array_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsEvent_Access_Array_Access;
   type CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access is access all CapturedImageWorkerResultsEvent_Access_Array_Access_Array;
   type CapturedImageWorkerResultsEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageWorkerResultsEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageWorkerResultsEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageWorkerResultsEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageWorkerResultsEvent_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageWorkerResultsEvent_Access_Array_Object'Class then CapturedImageWorkerResultsEvent_Access_Array_Object'Class (Value.all).Value else null);
   type CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Object'Class then CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References;

with org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CapturedImageWorkerResultsEvent_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsEvent_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References."=";
   subtype CapturedImageWorkerResultsEvent_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array;
   function "=" (Left, Right : CapturedImageWorkerResultsEvent_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References."=";
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsEvent_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References."=";
   function Java_Box (Value : CapturedImageWorkerResultsEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.Java_Box;
   function Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array (Value : access Java_Object'Class) return CapturedImageWorkerResultsEvent_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array;
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access_Array is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CapturedImageWorkerResultsEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References."=";
   subtype CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access is org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References."=";
   function Java_Box (Value : CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.Java_Box;
   function Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return CapturedImageWorkerResultsEvent_Access_Array_Access_Array_Access renames org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package_References.Java_Unbox_CapturedImageWorkerResultsEvent_Access_Array_Access_Array;

   type CapturedImageWorkerResultsEvent is new AllBinaryEventObject with record
      frame : Long_Long_Integer;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out CapturedImageWorkerResultsEvent'Class; anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function Create (anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return CapturedImageWorkerResultsEvent_Access;
   function getBufferedImage (This : in out CapturedImageWorkerResultsEvent) return BufferedImage_Access;
   procedure setBufferedImage (This : in out CapturedImageWorkerResultsEvent; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   function getFrame (This : in out CapturedImageWorkerResultsEvent) return Long_Long_Integer;

end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;


