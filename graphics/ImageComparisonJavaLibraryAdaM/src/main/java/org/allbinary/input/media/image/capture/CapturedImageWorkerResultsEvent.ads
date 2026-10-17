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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type CapturedImageWorkerResultsEvent is tagged;
   type CapturedImageWorkerResultsEvent_Access is access all CapturedImageWorkerResultsEvent'Class;
   type CapturedImageWorkerResultsEvent_Access_Array is array (Natural range <>) of CapturedImageWorkerResultsEvent_Access;
   type CapturedImageWorkerResultsEvent_Access_Array_Access is access all CapturedImageWorkerResultsEvent_Access_Array;

   type CapturedImageWorkerResultsEvent is new AllBinaryEventObject with record
      frame : Long_Long_Integer;
      bufferedImage : BufferedImage_Access;
   end record;

   procedure Initialize (This : in out CapturedImageWorkerResultsEvent'Class; anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage'Class);
   function Create (anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage'Class) return CapturedImageWorkerResultsEvent_Access;
   function getBufferedImage (This : in out CapturedImageWorkerResultsEvent) return BufferedImage_Access;
   procedure setBufferedImage (This : in out CapturedImageWorkerResultsEvent; bufferedImage_Param : access BufferedImage'Class);
   function getFrame (This : in out CapturedImageWorkerResultsEvent) return Long_Long_Integer;

end org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent_Package;


