--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BaseBasicArrayListCache_Package renames Standard.org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;

   type BasicGeographicMapExtractedPathsCacheFactory is tagged;
   type BasicGeographicMapExtractedPathsCacheFactory_Access is access all BasicGeographicMapExtractedPathsCacheFactory'Class;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathsCacheFactory_Access;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access is access all BasicGeographicMapExtractedPathsCacheFactory_Access_Array;

   type BasicGeographicMapExtractedPathsCacheFactory is new BaseBasicArrayListCache with record
      maxConcurrentPaths : Integer;
      maxPaths : Integer;
   end record;
   instance : BasicGeographicMapExtractedPathsCacheFactory_Access;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathsCacheFactory'Class);
   function Create return BasicGeographicMapExtractedPathsCacheFactory_Access;
   function getInstance return BasicGeographicMapExtractedPathsCacheFactory_Access;
   procedure getInstance;
   procedure init (This : in out BasicGeographicMapExtractedPathsCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer);
   function getPaths (This : in out BasicGeographicMapExtractedPathsCacheFactory) return BasicArrayList_Access;
   procedure getPaths (This : in out BasicGeographicMapExtractedPathsCacheFactory);
   procedure release (This : in out BasicGeographicMapExtractedPathsCacheFactory; list : BasicArrayList_Access);

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package;


