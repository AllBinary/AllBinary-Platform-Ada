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
with org.allbinary.game.input.form.PrimaryWaypointHelper_Package; use org.allbinary.game.input.form.PrimaryWaypointHelper_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.SensorAction_Package; use org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.game.layer.SensorActionFactory_Package; use org.allbinary.game.layer.SensorActionFactory_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package; use org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.UnitWaypointBehavior_Package is

   package PrimaryWaypointHelper_Package renames Standard.org.allbinary.game.input.form.PrimaryWaypointHelper_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package SensorAction_Package renames Standard.org.allbinary.game.layer.SensorAction_Package;
   package SensorActionFactory_Package renames Standard.org.allbinary.game.layer.SensorActionFactory_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package BuildingLayer_Package renames Standard.org.allbinary.game.layer.building.BuildingLayer_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package WaypointEventListenerInterface_Package renames Standard.org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type UnitWaypointBehavior is tagged;
   type UnitWaypointBehavior_Access is access all UnitWaypointBehavior'Class;
   type UnitWaypointBehavior_Access_Array is array (Natural range <>) of UnitWaypointBehavior_Access;
   type UnitWaypointBehavior_Access_Array_Access is access all UnitWaypointBehavior_Access_Array;

   type UnitWaypointBehavior is new WaypointBehaviorBase and WaypointEventListenerInterface with record
      commonSeps : CommonSeps_Access;
      longWeaponRange : Integer;
      sensorAction : SensorAction_Access;
      completeTimeDelayHelper : TimeDelayHelper_Access;
      currentGeographicMapCellHistoryP : GeographicMapCellHistory_Access;
      lastPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      FAKE_WAYPOINT_LAYER : CollidableDestroyableDamageableLayer_Access;
      targetList : BasicArrayList_Access;
      possibleTargetList : BasicArrayList_Access;
      associatedAdvancedRTSGameLayer : UnitLayer_Access;
      moving : Boolean;
      movingFromStopped : Boolean;
      waypointPathsListP : BasicArrayList_Access;
      currentTargetDistance : Integer;
      currentTargetLayerInterfaceP : CollidableDestroyableDamageableLayer_Access;
      trackingWaypoint : Boolean;
      repeatedToLong : TimeDelayHelper_Access;
   end record;
   PATHING : Unbounded_String;

   procedure Initialize (This : in out UnitWaypointBehavior'Class; associatedAdvancedRTSGameLayer_Param : access UnitLayer_Package.UnitLayer'Class; fakeWaypoint_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function Create (associatedAdvancedRTSGameLayer_Param : access UnitLayer_Package.UnitLayer'Class; fakeWaypoint_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return UnitWaypointBehavior_Access;
   procedure initRange (This : in out UnitWaypointBehavior; weaponRange : Integer);
   procedure onEvent (This : in out UnitWaypointBehavior; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onWaypointEvent (This : in out UnitWaypointBehavior; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class);
   procedure addWaypointFromUser (This : in out UnitWaypointBehavior; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class);
   procedure addWaypointFromBuilding (This : in out UnitWaypointBehavior; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer_Package.AdvancedRTSGameLayer'Class);
   function isWaypointListEmptyOrOnlyTargets (This : in out UnitWaypointBehavior) return Boolean;
   function insertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return Boolean;
   procedure insertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   procedure move (This : in out UnitWaypointBehavior);
   procedure setRandomGeographicMapCellHistory (This : in out UnitWaypointBehavior; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure setGeographicMapCellHistoryPath (This : in out UnitWaypointBehavior; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function canInsertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return Boolean;
   procedure canInsertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   procedure addBuildingChase (This : in out UnitWaypointBehavior; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure moveAwayFromBuilding (This : in out UnitWaypointBehavior; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class);
   function needToMove (This : in out UnitWaypointBehavior) return Boolean;
   function getMovementLogicAsString (This : in out UnitWaypointBehavior) return Unbounded_String;
   function isMovingFromStopped (This : in out UnitWaypointBehavior) return Boolean;
   procedure setMovingFromStopped (This : in out UnitWaypointBehavior; movingFromStopped : Boolean);
   procedure setWaypointPathsList (This : in out UnitWaypointBehavior; waypointPathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getWaypointPathsList (This : in out UnitWaypointBehavior) return BasicArrayList_Access;
   function isMoving (This : in out UnitWaypointBehavior) return Boolean;
   procedure setMoving (This : in out UnitWaypointBehavior; moving : Boolean);
   function isTrackingWaypoint (This : in out UnitWaypointBehavior) return Boolean;
   function getPossibleTargetList (This : in out UnitWaypointBehavior) return BasicArrayList_Access;
   procedure setLastPathGeographicMapCellPosition (This : in out UnitWaypointBehavior; lastPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getLastPathGeographicMapCellPosition (This : in out UnitWaypointBehavior) return GeographicMapCellPosition_Access;
   procedure setCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior; currentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior) return GeographicMapCellPosition_Access;
   procedure setSensorAction (This : in out UnitWaypointBehavior; sensorAction_Param : access SensorAction_Package.SensorAction'Class);
   function getSensorAction (This : in out UnitWaypointBehavior) return SensorAction_Access;
   procedure setCurrentTargetLayerInterface (This : in out UnitWaypointBehavior; currentTargetLayerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function getCurrentTargetLayerInterface (This : in out UnitWaypointBehavior) return CollidableDestroyableDamageableLayer_Access;
   procedure setCurrentTargetDistance (This : in out UnitWaypointBehavior; currentTargetDistance : Integer);
   function getCurrentTargetDistance (This : in out UnitWaypointBehavior) return Integer;
   function getCompleteTimeDelayHelper (This : in out UnitWaypointBehavior) return TimeDelayHelper_Access;
   function getCurrentGeographicMapCellHistory (This : in out UnitWaypointBehavior) return GeographicMapCellHistory_Access;
   procedure setTrackingWaypoint (This : in out UnitWaypointBehavior; trackingWaypoint : Boolean);

end org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;


