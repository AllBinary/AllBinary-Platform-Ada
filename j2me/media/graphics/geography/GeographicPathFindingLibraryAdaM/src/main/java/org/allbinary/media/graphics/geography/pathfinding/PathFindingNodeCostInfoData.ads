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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References is
   type PathFindingNodeCostInfoData_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package.PathFindingNodeCostInfoData'Class;
   type PathFindingNodeCostInfoData_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoData_Access;
   type PathFindingNodeCostInfoData_Access_Array_Access is access all PathFindingNodeCostInfoData_Access_Array;
   type PathFindingNodeCostInfoData_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoData_Access_Array_Access;
   type PathFindingNodeCostInfoData_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfoData_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingNodeCostInfoData_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoData_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References."=";
   subtype PathFindingNodeCostInfoData_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoData_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References."=";
   subtype PathFindingNodeCostInfoData_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoData_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References."=";
   subtype PathFindingNodeCostInfoData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References."=";
   subtype PathFindingNodeCostInfoData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References."=";

   type PathFindingNodeCostInfoData is new Java_Object with record
      MAX_TOTAL_COST : Integer;
      MAX_NODE_COST : Integer;
   end record;
   instance : PathFindingNodeCostInfoData_Access;

   procedure Initialize (This : in out PathFindingNodeCostInfoData'Class);
   function Create return PathFindingNodeCostInfoData_Access;
   function getInstance return PathFindingNodeCostInfoData_Access;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;


