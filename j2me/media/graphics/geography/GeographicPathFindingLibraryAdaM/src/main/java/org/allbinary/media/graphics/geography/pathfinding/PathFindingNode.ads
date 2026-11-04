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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References is
   type PathFindingNode_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package.PathFindingNode'Class;
   type PathFindingNode_Access_Array is array (Natural range <>) of PathFindingNode_Access;
   type PathFindingNode_Access_Array_Access is access all PathFindingNode_Access_Array;
   type PathFindingNode_Access_Array_Access_Array is array (Natural range <>) of PathFindingNode_Access_Array_Access;
   type PathFindingNode_Access_Array_Access_Array_Access is access all PathFindingNode_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingNode_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access;
   function "=" (Left, Right : PathFindingNode_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References."=";
   subtype PathFindingNode_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array;
   function "=" (Left, Right : PathFindingNode_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References."=";
   subtype PathFindingNode_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access;
   function "=" (Left, Right : PathFindingNode_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References."=";
   subtype PathFindingNode_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNode_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References."=";
   subtype PathFindingNode_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References."=";

   type PathFindingNode is new Java_Object with record
      parent : Java_Object_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   end record;

   procedure Initialize (This : in out PathFindingNode'Class; parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function Create (parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingNode_Access;
   function getParentP (This : in out PathFindingNode) return PathFindingNode_Access;
   procedure setGeographicMapCellPositionP (This : in out PathFindingNode; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function toString (This : in out PathFindingNode) return Unbounded_String;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;


