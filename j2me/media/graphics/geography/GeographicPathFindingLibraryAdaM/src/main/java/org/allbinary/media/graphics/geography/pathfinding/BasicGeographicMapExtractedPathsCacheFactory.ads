--  Generated Code Do Not Modify

limited with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package;
package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References is
   type BasicGeographicMapExtractedPathsCacheFactory_Access is access all org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package.BasicGeographicMapExtractedPathsCacheFactory'Class;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathsCacheFactory_Access;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access is access all BasicGeographicMapExtractedPathsCacheFactory_Access_Array;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access;
   type BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array_Access is access all BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References;
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
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;

package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BaseBasicArrayListCache_Package renames Standard.org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGeographicMapExtractedPathsCacheFactory_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References.BasicGeographicMapExtractedPathsCacheFactory_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathsCacheFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathsCacheFactory_Access_Array is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References.BasicGeographicMapExtractedPathsCacheFactory_Access_Array;
   function "=" (Left, Right : BasicGeographicMapExtractedPathsCacheFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References.BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References.BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References.BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathsCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package_References."=";

   type BasicGeographicMapExtractedPathsCacheFactory is new BaseBasicArrayListCache with record
      maxConcurrentPaths : Integer;
      maxPaths : Integer;
   end record;
   instance : BasicGeographicMapExtractedPathsCacheFactory_Access;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathsCacheFactory'Class);
   function Create return BasicGeographicMapExtractedPathsCacheFactory_Access;
   function getInstance return BasicGeographicMapExtractedPathsCacheFactory_Access;
   procedure init (This : in out BasicGeographicMapExtractedPathsCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer);
   function getPaths (This : in out BasicGeographicMapExtractedPathsCacheFactory) return BasicArrayList_Access;
   procedure release (This : in out BasicGeographicMapExtractedPathsCacheFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory_Package;


