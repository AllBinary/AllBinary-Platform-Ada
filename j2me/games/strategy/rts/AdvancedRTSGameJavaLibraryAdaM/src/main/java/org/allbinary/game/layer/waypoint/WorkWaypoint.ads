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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package; use org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package; use org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.media.audio.WorkSound_Package; use org.allbinary.media.audio.WorkSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.game.layer.waypoint.Waypoint_Package; use org.allbinary.game.layer.waypoint.Waypoint_Package;

package org.allbinary.game.layer.waypoint.WorkWaypoint_Package is

   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayer_Package renames org.allbinary.game.layer.RTSLayer_Package;
   package GeologicalGeographicMapCellPosition_Package renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
   package GeologicalResource_Package renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
   package UnitLayer_Package renames org.allbinary.game.layer.unit.UnitLayer_Package;
   package UnitWaypointBehavior_Package renames org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package WorkSound_Package renames org.allbinary.media.audio.WorkSound_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type WorkWaypoint is tagged;
   type WorkWaypoint_Access is access all WorkWaypoint'Class;
   type WorkWaypoint_Access_Array is array (Natural range <>) of WorkWaypoint_Access;
   type WorkWaypoint_Access_Array_Access is access all WorkWaypoint_Access_Array;

   type WorkWaypoint is new Waypoint with null record;
   ID : Integer;

   procedure Initialize (This : in out WorkWaypoint'Class; ownerLayer : PathFindingLayerInterface_Access);
   function Create (ownerLayer : PathFindingLayerInterface_Access) return WorkWaypoint_Access;
   procedure visit (This : in out WorkWaypoint; unitLayer : UnitLayer_Access);
   function getType (This : in out WorkWaypoint) return Integer;
   procedure getType (This : in out WorkWaypoint);

end org.allbinary.game.layer.waypoint.WorkWaypoint_Package;


