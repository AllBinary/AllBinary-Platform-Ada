--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package;
package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References is
   type BasicGeographicMapExtractedPathCacheFactory_Access is access all org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package.BasicGeographicMapExtractedPathCacheFactory'Class;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathCacheFactory_Access;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access is access all BasicGeographicMapExtractedPathCacheFactory_Access_Array;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access is access all BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array;
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGeographicMapExtractedPathCacheFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicGeographicMapExtractedPathCacheFactory_Access_Array_Object'Class then BasicGeographicMapExtractedPathCacheFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Object'Class then BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package; use org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package is

   package BaseBasicArrayListCache_Package renames Standard.org.allbinary.logic.util.cache.BaseBasicArrayListCache_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype BasicGeographicMapExtractedPathCacheFactory_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.BasicGeographicMapExtractedPathCacheFactory_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathCacheFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathCacheFactory_Access_Array is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.BasicGeographicMapExtractedPathCacheFactory_Access_Array;
   function "=" (Left, Right : BasicGeographicMapExtractedPathCacheFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References."=";
   function Java_Box (Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.Java_Box;
   function Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array (Value : access Java_Object'Class) return BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array;
   subtype BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References."=";
   subtype BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References."=";
   function Java_Box (Value : BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.Java_Box;
   function Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package_References.Java_Unbox_BasicGeographicMapExtractedPathCacheFactory_Access_Array_Access_Array;

   type BasicGeographicMapExtractedPathCacheFactory is new BaseBasicArrayListCache with record
      maxConcurrentPaths : Integer;
      maxPaths : Integer;
   end record;
   instance : BasicGeographicMapExtractedPathCacheFactory_Access;

   procedure Initialize (This : in out BasicGeographicMapExtractedPathCacheFactory'Class);
   function Create return BasicGeographicMapExtractedPathCacheFactory_Access;
   function getInstance return BasicGeographicMapExtractedPathCacheFactory_Access;
   procedure init (This : in out BasicGeographicMapExtractedPathCacheFactory; maxConcurrentPaths : Integer; maxPaths : Integer);
   function getPath (This : in out BasicGeographicMapExtractedPathCacheFactory) return BasicArrayList_Access;
   procedure release (This : in out BasicGeographicMapExtractedPathCacheFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathCacheFactory_Package;


