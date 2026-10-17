--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package is

   package BaseBasicArrayListCache_Package renames org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListS_Package renames org.allbinary.util.BasicArrayListS_Package;

   type BasicGeographicMapExtractedPathCacheFactory is tagged;
   type BasicGeographicMapExtractedPathCacheFactory_Access is access all BasicGeographicMapExtractedPathCacheFactory'Class;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathCacheFactory_Access;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access is access all BasicGeographicMapExtractedPathCacheFactory_Access_Array;

   type BasicGeographicMapExtractedPathCacheFactory is new BaseBasicArrayListCache with record
      maxConcurrentPaths : Integer;
      maxPaths : Integer;
   end record;
   instance : BasicGeographicMapExtractedPathCacheFactory_Access;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathCacheFactory'Class);
   function Create return BasicGeographicMapExtractedPathCacheFactory_Access;
   function getInstance return BasicGeographicMapExtractedPathCacheFactory_Access;
   procedure getInstance;
   procedure init (This : in out BasicGeographicMapExtractedPathCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer);
   function getPath (This : in out BasicGeographicMapExtractedPathCacheFactory) return BasicArrayList_Access;
   procedure getPath (This : in out BasicGeographicMapExtractedPathCacheFactory);
   procedure release (This : in out BasicGeographicMapExtractedPathCacheFactory; list : BasicArrayList_Access);

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package;


