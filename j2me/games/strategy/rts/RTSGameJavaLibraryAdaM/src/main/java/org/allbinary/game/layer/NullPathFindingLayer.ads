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

package org.allbinary.game.layer.NullPathFindingLayer_Package is

   package CaptionAnimationHelperBase_Package renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
   package Group_Package renames org.allbinary.game.identification.Group_Package;
   package Waypoint2LogHelper_Package renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
   package WaypointLogHelper_Package renames org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
   package WaypointRunnableLogHelper_Package renames org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
   package TrackingEvent_Package renames org.allbinary.game.tracking.TrackingEvent_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type NullPathFindingLayer is tagged;
   type NullPathFindingLayer_Access is access all NullPathFindingLayer'Class;
   type NullPathFindingLayer_Access_Array is array (Natural range <>) of NullPathFindingLayer_Access;
   type NullPathFindingLayer_Access_Array_Access is access all NullPathFindingLayer_Access_Array;

   type NullPathFindingLayer is new PathFindingLayerInterface with null record;
   NULL_PATH_FINDING_LAYER : NullPathFindingLayer_Access;

   procedure Initialize (This : in out NullPathFindingLayer'Class);
   function Create return NullPathFindingLayer_Access;
   function getName (This : in out NullPathFindingLayer) return Unbounded_String;
   procedure getName (This : in out NullPathFindingLayer);
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   procedure getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer);
   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean;
   procedure shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer);
   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access;
   procedure getGeographicMapCellPositionArea (This : in out NullPathFindingLayer);
   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access;
   procedure getHudPaintable (This : in out NullPathFindingLayer);
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer : PathFindingLayerInterface_Access);
   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access;
   procedure getParentLayer (This : in out NullPathFindingLayer);
   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access;
   procedure getRTSLayer2LogHelper (This : in out NullPathFindingLayer);
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer : PathFindingLayerInterface_Access);
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPositionBasicArrayList : BasicArrayList_Access);
   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access;
   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList : BasicArrayList_Access);
   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer);
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   procedure getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer);
   function isSelected (This : in out NullPathFindingLayer) return Boolean;
   procedure isSelected (This : in out NullPathFindingLayer);
   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean;
   procedure shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer);
   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean;
   procedure isShowMoreCaptionStates (This : in out NullPathFindingLayer);
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String);
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer);
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access);
   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access;
   procedure getTrackingEvent (This : in out NullPathFindingLayer);
   procedure allStop (This : in out NullPathFindingLayer);
   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean;
   procedure isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer);
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access;
   procedure getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer);
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access;
   procedure getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer);
   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access;
   procedure getCaptionAnimationHelper (This : in out NullPathFindingLayer);
   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access;
   procedure getWaypointBehavior (This : in out NullPathFindingLayer);
   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access;
   procedure getWaypointLogHelper (This : in out NullPathFindingLayer);
   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access;
   procedure getWaypoint2LogHelper (This : in out NullPathFindingLayer);
   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access;
   procedure getWaypointRunnableLogHelper (This : in out NullPathFindingLayer);
   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access;
   procedure getGroupInterface (This : in out NullPathFindingLayer);
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean;
   procedure isDestroyed (This : in out NullPathFindingLayer);
   function getSourceId (This : in out NullPathFindingLayer) return Integer;
   procedure getSourceId (This : in out NullPathFindingLayer);

end org.allbinary.game.layer.NullPathFindingLayer_Package;


