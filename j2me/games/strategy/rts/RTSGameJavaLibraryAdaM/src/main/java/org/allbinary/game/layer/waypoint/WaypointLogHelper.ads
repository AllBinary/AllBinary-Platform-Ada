-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.waypoint.WaypointLogHelper_Package is

   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package CollidableDestroyableDamageableLayer_Package renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type WaypointLogHelper is tagged;
   type WaypointLogHelper_Access is access all WaypointLogHelper'Class;
   type WaypointLogHelper_Access_Array is array (Natural range <>) of WaypointLogHelper_Access;
   type WaypointLogHelper_Access_Array_Access is access all WaypointLogHelper_Access_Array;

   type WaypointLogHelper is new Java_Object with null record;
   instance : WaypointLogHelper_Access;

   procedure Initialize (This : in out WaypointLogHelper'Class);
   function Create return WaypointLogHelper_Access;
   function getInstance return WaypointLogHelper_Access;
   procedure getInstance;
   procedure onWaypointEvent (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromBuildingList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access; list : BasicArrayList_Access);
   procedure insertWaypoint (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String);
   procedure insertWaypointList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String; list : BasicArrayList_Access);
   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access);
   procedure moveAwayFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure needToMove (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior : WaypointBehaviorBase_Access);
   procedure setRandomGeographicMapCellHistory (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access; currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;


