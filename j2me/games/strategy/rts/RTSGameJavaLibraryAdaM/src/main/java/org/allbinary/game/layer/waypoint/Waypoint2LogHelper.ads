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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package is

   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type Waypoint2LogHelper is tagged;
   type Waypoint2LogHelper_Access is access all Waypoint2LogHelper'Class;
   type Waypoint2LogHelper_Access_Array is array (Natural range <>) of Waypoint2LogHelper_Access;
   type Waypoint2LogHelper_Access_Array_Access is access all Waypoint2LogHelper_Access_Array;

   type Waypoint2LogHelper is new Java_Object with null record;
   instance : Waypoint2LogHelper_Access;

   procedure Initialize (This : in out Waypoint2LogHelper'Class);
   function Create return Waypoint2LogHelper_Access;
   function getInstance return Waypoint2LogHelper_Access;
   procedure getInstance;
   procedure initRange (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; closeRange : Integer; sensorRange : Integer);
   procedure processPossibleTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean);
   procedure processSetTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure processPossibleTargetCloser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure setTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure setTargetPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access);
   procedure processWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; targetLayer : PathFindingLayerInterface_Access; size : Integer);
   procedure processWaypointTracked (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access);
   procedure processWaypointTrackedVisit (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; reason : Unbounded_String);
   procedure wander (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure targetDestroyed (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure processTargeting (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer);
   procedure processTargetingNonWayPoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer);
   procedure removeWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; waypointLayer : PathFindingLayerInterface_Access; reason : Unbounded_String);
   procedure removeWaypointList (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; list : BasicArrayList_Access);
   procedure removeWaypointClear (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure clearTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromUser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure targetMovedSoRetarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);

end org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;


