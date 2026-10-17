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
with org.allbinary.media.image.search.ImageComparisonSearch_Package; use org.allbinary.media.image.search.ImageComparisonSearch_Package;

package org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type ImageComparisonSearchResultsEvent is tagged;
   type ImageComparisonSearchResultsEvent_Access is access all ImageComparisonSearchResultsEvent'Class;
   type ImageComparisonSearchResultsEvent_Access_Array is array (Natural range <>) of ImageComparisonSearchResultsEvent_Access;
   type ImageComparisonSearchResultsEvent_Access_Array_Access is access all ImageComparisonSearchResultsEvent_Access_Array;

   type ImageComparisonSearchResultsEvent is new AllBinaryEventObject with record
      imageComparisonSearch : ImageComparisonSearch_Access;
   end record;

   procedure Initialize (This : in out ImageComparisonSearchResultsEvent'Class; anyType : Java_Object_Access; imageComparisonSearch : ImageComparisonSearch_Access);
   function Create (anyType : Java_Object_Access; imageComparisonSearch : ImageComparisonSearch_Access) return ImageComparisonSearchResultsEvent_Access;
   function getImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent) return ImageComparisonSearch_Access;
   procedure setImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent; imageComparisonSearch : ImageComparisonSearch_Access);

end org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package;


