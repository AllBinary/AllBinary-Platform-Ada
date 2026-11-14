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
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References is
   type PathFindingInfoInterface_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package.PathFindingInfoInterface'Class;
   type PathFindingInfoInterface_Access_Array is array (Natural range <>) of PathFindingInfoInterface_Access;
   type PathFindingInfoInterface_Access_Array_Access is access all PathFindingInfoInterface_Access_Array;
   type PathFindingInfoInterface_Access_Array_Access_Array is array (Natural range <>) of PathFindingInfoInterface_Access_Array_Access;
   type PathFindingInfoInterface_Access_Array_Access_Array_Access is access all PathFindingInfoInterface_Access_Array_Access_Array;
   type PathFindingInfoInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingInfoInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingInfoInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingInfoInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingInfoInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingInfoInterface_Access_Array_Access is (if Value /= null and then Value.all in PathFindingInfoInterface_Access_Array_Object'Class then PathFindingInfoInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingInfoInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingInfoInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingInfoInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingInfoInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingInfoInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingInfoInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingInfoInterface_Access_Array_Access_Array_Object'Class then PathFindingInfoInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References;
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
limited with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package is

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
   subtype GeographicPathFinderBase_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access;
   use type GeographicPathFinderBase_Access;
   subtype GeographicPathFinderBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array;
   use type GeographicPathFinderBase_Access_Array;
   subtype GeographicPathFinderBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access;
   use type GeographicPathFinderBase_Access_Array_Access;
   subtype GeographicPathFinderBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access_Array;
   use type GeographicPathFinderBase_Access_Array_Access_Array;
   subtype GeographicPathFinderBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access_Array_Access;
   use type GeographicPathFinderBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PathFindingInfoInterface is interface;
   subtype PathFindingInfoInterface_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.PathFindingInfoInterface_Access;
   function "=" (Left, Right : PathFindingInfoInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References."=";
   subtype PathFindingInfoInterface_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.PathFindingInfoInterface_Access_Array;
   function "=" (Left, Right : PathFindingInfoInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References."=";
   subtype PathFindingInfoInterface_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.PathFindingInfoInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References."=";
   function Java_Box (Value : PathFindingInfoInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingInfoInterface_Access_Array (Value : access Java_Object'Class) return PathFindingInfoInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.Java_Unbox_PathFindingInfoInterface_Access_Array;
   subtype PathFindingInfoInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.PathFindingInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References."=";
   subtype PathFindingInfoInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.PathFindingInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References."=";
   function Java_Box (Value : PathFindingInfoInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingInfoInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingInfoInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package_References.Java_Unbox_PathFindingInfoInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PathFindingInfoInterface (Value : PathFindingInfoInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getStartPathFindingNodeList (This : in out PathFindingInfoInterface) return BasicArrayList_Access is abstract;
   function getEndPathFindingNodeList (This : in out PathFindingInfoInterface) return BasicArrayList_Access is abstract;
   function getPathFinder (This : in out PathFindingInfoInterface) return GeographicPathFinderBase_Access is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package;


