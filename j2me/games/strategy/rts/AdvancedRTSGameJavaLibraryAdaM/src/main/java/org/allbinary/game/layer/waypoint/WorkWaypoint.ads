-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
package org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References is
   type WorkWaypoint_Access is access all org.allbinary.game.layer.waypoint.WorkWaypoint_Package.WorkWaypoint'Class;
   type WorkWaypoint_Access_Array is array (Natural range <>) of WorkWaypoint_Access;
   type WorkWaypoint_Access_Array_Access is access all WorkWaypoint_Access_Array;
   type WorkWaypoint_Access_Array_Access_Array is array (Natural range <>) of WorkWaypoint_Access_Array_Access;
   type WorkWaypoint_Access_Array_Access_Array_Access is access all WorkWaypoint_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References;

with org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.waypoint.Waypoint_Package; use org.allbinary.game.layer.waypoint.Waypoint_Package;

package org.allbinary.game.layer.waypoint.WorkWaypoint_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package Reference_Types is
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   use type UnitLayer_Access;
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   use type UnitLayer_Access_Array;
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   use type UnitLayer_Access_Array_Access;
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   use type UnitLayer_Access_Array_Access_Array;
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   use type UnitLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkWaypoint_Access is org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References.WorkWaypoint_Access;
   function "=" (Left, Right : WorkWaypoint_Access) return Boolean renames org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References."=";
   subtype WorkWaypoint_Access_Array is org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References.WorkWaypoint_Access_Array;
   function "=" (Left, Right : WorkWaypoint_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References."=";
   subtype WorkWaypoint_Access_Array_Access is org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References.WorkWaypoint_Access_Array_Access;
   function "=" (Left, Right : WorkWaypoint_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References."=";
   subtype WorkWaypoint_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References.WorkWaypoint_Access_Array_Access_Array;
   function "=" (Left, Right : WorkWaypoint_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References."=";
   subtype WorkWaypoint_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References.WorkWaypoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkWaypoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WorkWaypoint_Package_References."=";

   type WorkWaypoint is new Waypoint_Package.Waypoint with null record;
   ID : Integer;

   procedure Initialize (This : in out WorkWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) return WorkWaypoint_Access;
   procedure visit (This : in out WorkWaypoint; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class);
   function getType (This : in out WorkWaypoint) return Integer;

end org.allbinary.game.layer.waypoint.WorkWaypoint_Package;


