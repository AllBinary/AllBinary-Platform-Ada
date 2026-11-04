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

limited with org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package;
package org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References is
   type ImageComparisonSearchResultsEvent_Access is access all org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package.ImageComparisonSearchResultsEvent'Class;
   type ImageComparisonSearchResultsEvent_Access_Array is array (Natural range <>) of ImageComparisonSearchResultsEvent_Access;
   type ImageComparisonSearchResultsEvent_Access_Array_Access is access all ImageComparisonSearchResultsEvent_Access_Array;
   type ImageComparisonSearchResultsEvent_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonSearchResultsEvent_Access_Array_Access;
   type ImageComparisonSearchResultsEvent_Access_Array_Access_Array_Access is access all ImageComparisonSearchResultsEvent_Access_Array_Access_Array;
end org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References;

with org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.media.image.search.ImageComparisonSearch_Package;
with org.allbinary.media.image.search.ImageComparisonSearch_Package_References;

package org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype ImageComparisonSearch_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access;
   use type ImageComparisonSearch_Access;
   subtype ImageComparisonSearch_Access_Array is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array;
   use type ImageComparisonSearch_Access_Array;
   subtype ImageComparisonSearch_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access;
   use type ImageComparisonSearch_Access_Array_Access;
   subtype ImageComparisonSearch_Access_Array_Access_Array is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access_Array;
   use type ImageComparisonSearch_Access_Array_Access_Array;
   subtype ImageComparisonSearch_Access_Array_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access_Array_Access;
   use type ImageComparisonSearch_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageComparisonSearchResultsEvent_Access is org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References.ImageComparisonSearchResultsEvent_Access;
   function "=" (Left, Right : ImageComparisonSearchResultsEvent_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References."=";
   subtype ImageComparisonSearchResultsEvent_Access_Array is org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References.ImageComparisonSearchResultsEvent_Access_Array;
   function "=" (Left, Right : ImageComparisonSearchResultsEvent_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References."=";
   subtype ImageComparisonSearchResultsEvent_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References.ImageComparisonSearchResultsEvent_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearchResultsEvent_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References."=";
   subtype ImageComparisonSearchResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References.ImageComparisonSearchResultsEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonSearchResultsEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References."=";
   subtype ImageComparisonSearchResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References.ImageComparisonSearchResultsEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearchResultsEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package_References."=";

   type ImageComparisonSearchResultsEvent is new AllBinaryEventObject with record
      imageComparisonSearch : ImageComparisonSearch_Access;
   end record;

   procedure Initialize (This : in out ImageComparisonSearchResultsEvent'Class; anyType_Param : access Java_Object'Class; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class);
   function Create (anyType_Param : access Java_Object'Class; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class) return ImageComparisonSearchResultsEvent_Access;
   function getImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent) return ImageComparisonSearch_Access;
   procedure setImageComparisonSearch (This : in out ImageComparisonSearchResultsEvent; imageComparisonSearch_Param : access ImageComparisonSearch_Package.ImageComparisonSearch'Class);

end org.allbinary.media.image.search.ImageComparisonSearchResultsEvent_Package;


