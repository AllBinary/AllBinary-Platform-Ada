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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;

package org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package is

   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package CollidableDestroyableDamageableLayer_Package renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames org.allbinary.math.PositionStrings_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type Waypoint2SelectedLogHelper is tagged;
   type Waypoint2SelectedLogHelper_Access is access all Waypoint2SelectedLogHelper'Class;
   type Waypoint2SelectedLogHelper_Access_Array is array (Natural range <>) of Waypoint2SelectedLogHelper_Access;
   type Waypoint2SelectedLogHelper_Access_Array_Access is access all Waypoint2SelectedLogHelper_Access_Array;

   type Waypoint2SelectedLogHelper is new Waypoint2LogHelper with record
      logUtil : LogUtil_Access;
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      stringUtil : StringUtil_Access;
      ENEMY_POSSIBLE_TARGET : Unbounded_String;
      CLOSE_RANGE : Unbounded_String;
      SENSOR_RANGE : Unbounded_String;
      ONLY_TARGETS : Unbounded_String;
      SHORTER_THAN_CURRENT_TARGET_DISTANCE : Unbounded_String;
      CURRENT_TARGET_DESTROYED : Unbounded_String;
      CURRENT_TARGET_NOT_AVAILABLE : Unbounded_String;
      PROCESS_POSSIBLE_TARGET : Unbounded_String;
   end record;
   instanceC : Waypoint2SelectedLogHelper_Access;

   procedure Initialize (This : in out Waypoint2SelectedLogHelper'Class);
   function Create return Waypoint2SelectedLogHelper_Access;
   function getInstance return Waypoint2LogHelper_Access;
   procedure getInstance;
   procedure initRange (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; closeRange : Integer; sensorRange : Integer);
   procedure processPossibleTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean);
   procedure processSetTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure processPossibleTargetCloser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure setTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer);
   procedure setTargetPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access);
   procedure processWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; targetLayer : PathFindingLayerInterface_Access; size : Integer);
   procedure processWaypointTracked (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access);
   procedure processWaypointTrackedVisit (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; reason : Unbounded_String);
   procedure wander (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure targetDestroyed (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure processTargeting (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer);
   procedure processTargetingNonWayPoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer);
   procedure removeWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; waypointLayer : PathFindingLayerInterface_Access; reason : Unbounded_String);
   procedure removeWaypointList (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; list : BasicArrayList_Access);
   procedure removeWaypointClear (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure clearTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromUser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure targetMovedSoRetarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);

end org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;


