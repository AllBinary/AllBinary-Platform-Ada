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
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package; use org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.WaypointPathRunnable_Package; use org.allbinary.game.layer.WaypointPathRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package; use org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package MultipassWaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package WaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointPathRunnableBase_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnableBase_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package LayerDistanceUtil_Package renames Standard.org.allbinary.math.LayerDistanceUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package PathFindingThreadPool_Package renames Standard.org.allbinary.thread.PathFindingThreadPool_Package;
   package ThreadPool_Package renames Standard.org.allbinary.thread.ThreadPool_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type UnitWaypointBehavior2 is tagged;
   type UnitWaypointBehavior2_Access is access all UnitWaypointBehavior2'Class;
   type UnitWaypointBehavior2_Access_Array is array (Natural range <>) of UnitWaypointBehavior2_Access;
   type UnitWaypointBehavior2_Access_Array_Access is access all UnitWaypointBehavior2_Access_Array;

   type UnitWaypointBehavior2 is new UnitWaypointBehavior with record
      logUtil : LogUtil_Access;
      unitWaypointStrings : UnitWaypointStrings_Access;
      basicColorFactory : BasicColorFactory_Access;
      layerDistanceUtil : LayerDistanceUtil_Access;
      pathFindingThreadPool : ThreadPool_Access;
      progressTimeDelayHelper : TimeDelayHelper_Access;
      wanderPathsList : BasicArrayList_Access;
      waypointPathRunnable : WaypointPathRunnableBase_Access;
      sensorRange : Integer;
      closeRange : Integer;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      afterNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      waitingOnTargetPath : Boolean;
      waitingOnWaypointPath : Boolean;
      targetWithoutCachedPathLayerInterface : CollidableDestroyableDamageableLayer_Access;
      buildingSteeringVisitor : BuildingSteeringVisitor_Access;
   end record;
   runningWaypointPathList : BasicArrayList_Access;
   TARGET_DISTANCE : Unbounded_String;
   TARGET_LAYER : Unbounded_String;

   procedure Initialize (This : in out UnitWaypointBehavior2'Class; ownerAdvancedRTSGameLayer_Param : access UnitLayer'Class; fakeWaypoint_Param : access AdvancedRTSGameLayer'Class);
   function Create (ownerAdvancedRTSGameLayer_Param : access UnitLayer'Class; fakeWaypoint_Param : access AdvancedRTSGameLayer'Class) return UnitWaypointBehavior2_Access;
   procedure initRange (This : in out UnitWaypointBehavior2; weaponRange : Integer);
   function getNextUnvisitedPathGeographicMapCellPosition (This : in out UnitWaypointBehavior2) return GeographicMapCellPosition_Access;
   function isRunning (This : in out UnitWaypointBehavior2) return Boolean;
   procedure processTick (This : in out UnitWaypointBehavior2; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);
   procedure onEnemyMovement (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer'Class);
   procedure processPossibleTarget (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer'Class; anotherTargetDistance : Integer);
   procedure teleportIfNoProgress (This : in out UnitWaypointBehavior2);
   procedure setTarget (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer'Class; anotherTargetDistance : Integer);
   procedure setTargetPath (This : in out UnitWaypointBehavior2);
   procedure setGeographicMapCellHistoryPath (This : in out UnitWaypointBehavior2; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList'Class);
   procedure processWaypoint (This : in out UnitWaypointBehavior2);
   procedure wander (This : in out UnitWaypointBehavior2);
   function visitIfAtMidPoint (This : in out UnitWaypointBehavior2; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return Boolean;
   procedure visitIfAtMidPoint (This : in out UnitWaypointBehavior2; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);
   procedure processTargetList (This : in out UnitWaypointBehavior2);
   procedure processTargeting (This : in out UnitWaypointBehavior2);
   procedure updateCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior2);
   procedure setWaypointPath (This : in out UnitWaypointBehavior2; waypointLayer_Param : access AdvancedRTSGameLayer'Class);
   procedure runWaypointPathTask (This : in out UnitWaypointBehavior2; waypointLayer_Param : access AdvancedRTSGameLayer'Class);
   procedure removeWaypoint (This : in out UnitWaypointBehavior2; waypointLayer_Param : access RTSLayer'Class; reason : Unbounded_String);
   procedure clearTarget (This : in out UnitWaypointBehavior2);
   function isWaypointListEmptyOrOnlyTargets (This : in out UnitWaypointBehavior2) return Boolean;
   function isCloseRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer'Class; targetDistance : Integer) return Boolean;
   procedure isCloseRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access AdvancedRTSGameLayer'Class; targetDistance : Integer);
   function isInSensorRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) return Boolean;
   procedure isInSensorRange (This : in out UnitWaypointBehavior2; layerInterface_Param : access CollidableDestroyableDamageableLayer'Class; targetDistance : Integer);
   function getCurrentTargetingStateString (This : in out UnitWaypointBehavior2) return Unbounded_String;
   procedure addWaypointFromUser (This : in out UnitWaypointBehavior2; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer'Class);
   procedure addBuildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class);
   function buildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class) return Boolean;
   procedure buildingChase (This : in out UnitWaypointBehavior2; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class);

end org.allbinary.game.layer.unit.UnitWaypointBehavior2_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.MultipassWaypointPathRunnable_Package; use org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.WaypointPathRunnable_Package; use org.allbinary.game.layer.WaypointPathRunnable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package; use org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package is

   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package MultipassWaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.MultipassWaypointPathRunnable_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package WaypointPathRunnable_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointPathRunnableBase_Package renames Standard.org.allbinary.game.layer.WaypointPathRunnableBase_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package LayerDistanceUtil_Package renames Standard.org.allbinary.math.LayerDistanceUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package PathFindingThreadPool_Package renames Standard.org.allbinary.thread.PathFindingThreadPool_Package;
   package ThreadPool_Package renames Standard.org.allbinary.thread.ThreadPool_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type BuildingSteeringVisitor is tagged;
   type BuildingSteeringVisitor_Access is access all BuildingSteeringVisitor'Class;
   type BuildingSteeringVisitor_Access_Array is array (Natural range <>) of BuildingSteeringVisitor_Access;
   type BuildingSteeringVisitor_Access_Array_Access is access all BuildingSteeringVisitor_Access_Array;

   type BuildingSteeringVisitor is new SteeringVisitor with record
      positionList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BuildingSteeringVisitor'Class);
   function Create return BuildingSteeringVisitor_Access;
   function visit (This : in out BuildingSteeringVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out BuildingSteeringVisitor; anyType_Param : access Java_Object'Class);
   function getPositionList (This : in out BuildingSteeringVisitor) return BasicArrayList_Access;

end org.allbinary.game.layer.unit.BuildingSteeringVisitor_Package;


