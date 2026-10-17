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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;

package org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type ImageComparisonResultsEvent is tagged;
   type ImageComparisonResultsEvent_Access is access all ImageComparisonResultsEvent'Class;
   type ImageComparisonResultsEvent_Access_Array is array (Natural range <>) of ImageComparisonResultsEvent_Access;
   type ImageComparisonResultsEvent_Access_Array_Access is access all ImageComparisonResultsEvent_Access_Array;

   type ImageComparisonResultsEvent is new AllBinaryEventObject with record
      imageComparisonResult : ImageComparisonResult_Access;
   end record;

   procedure Initialize (This : in out ImageComparisonResultsEvent'Class; anyType_Param : access Java_Object'Class; imageComparisonInfo_Param : access ImageComparisonResult'Class);
   function Create (anyType_Param : access Java_Object'Class; imageComparisonInfo_Param : access ImageComparisonResult'Class) return ImageComparisonResultsEvent_Access;
   function getImageComparisonResult (This : in out ImageComparisonResultsEvent) return ImageComparisonResult_Access;
   procedure setImageComparisonResult (This : in out ImageComparisonResultsEvent; imageComparisonResult_Param : access ImageComparisonResult'Class);

end org.allbinary.media.image.comparison.ImageComparisonResultsEvent_Package;


