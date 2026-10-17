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

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type Waypoint2LogHelper is tagged;
   type Waypoint2LogHelper_Access is access all Waypoint2LogHelper'Class;
   type Waypoint2LogHelper_Access_Array is array (Natural range <>) of Waypoint2LogHelper_Access;
   type Waypoint2LogHelper_Access_Array_Access is access all Waypoint2LogHelper_Access_Array;

   type Waypoint2LogHelper is new Java_Object with null record;
   instance : Waypoint2LogHelper_Access;

   procedure Initialize (This : in out Waypoint2LogHelper'Class);
   function Create return Waypoint2LogHelper_Access;
   function getInstance return Waypoint2LogHelper_Access;
   procedure initRange (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; closeRange : Integer; sensorRange : Integer);
   procedure processPossibleTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean);
   procedure processSetTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer);
   procedure processPossibleTargetCloser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer);
   procedure setTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer);
   procedure setTargetPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class);
   procedure processWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; targetLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; size : Integer);
   procedure processWaypointTracked (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class);
   procedure processWaypointTrackedVisit (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; reason : Unbounded_String);
   procedure wander (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure targetDestroyed (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure processTargeting (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer);
   procedure processTargetingNonWayPoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer);
   procedure removeWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; waypointLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; reason : Unbounded_String);
   procedure removeWaypointList (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure removeWaypointClear (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure clearTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure addWaypointFromUser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure targetMovedSoRetarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;


