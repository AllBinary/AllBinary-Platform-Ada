-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package; use org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;

package org.allbinary.game.layer.NullPathFindingLayer_Package is

   package CaptionAnimationHelperBase_Package renames Standard.org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package Waypoint2LogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
   package WaypointLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
   package WaypointRunnableLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NullPathFindingLayer is tagged;
   type NullPathFindingLayer_Access is access all NullPathFindingLayer'Class;
   type NullPathFindingLayer_Access_Array is array (Natural range <>) of NullPathFindingLayer_Access;
   type NullPathFindingLayer_Access_Array_Access is access all NullPathFindingLayer_Access_Array;

   type NullPathFindingLayer is new PathFindingLayerInterface with null record;
   NULL_PATH_FINDING_LAYER : NullPathFindingLayer_Access;

   procedure Initialize (This : in out NullPathFindingLayer'Class);
   function Create return NullPathFindingLayer_Access;
   function getName (This : in out NullPathFindingLayer) return Unbounded_String;
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean;
   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access;
   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access;
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer_Param : access PathFindingLayerInterface'Class);
   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access;
   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access;
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer_Param : access PathFindingLayerInterface'Class);
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList'Class);
   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList_Param : access BasicArrayList'Class);
   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer);
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   function isSelected (This : in out NullPathFindingLayer) return Boolean;
   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean;
   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean;
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String);
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer);
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class) return Boolean;
   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class);
   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access;
   procedure allStop (This : in out NullPathFindingLayer);
   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean;
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access;
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access;
   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access;
   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access;
   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access;
   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access;
   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access;
   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access;
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean;
   function getSourceId (This : in out NullPathFindingLayer) return Integer;

end org.allbinary.game.layer.NullPathFindingLayer_Package;


