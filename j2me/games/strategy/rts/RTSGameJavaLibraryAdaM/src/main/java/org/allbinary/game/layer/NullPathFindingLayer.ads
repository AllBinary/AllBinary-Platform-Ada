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

limited with org.allbinary.game.layer.NullPathFindingLayer_Package;
package org.allbinary.game.layer.NullPathFindingLayer_Package_References is
   type NullPathFindingLayer_Access is access all org.allbinary.game.layer.NullPathFindingLayer_Package.NullPathFindingLayer'Class;
   type NullPathFindingLayer_Access_Array is array (Natural range <>) of NullPathFindingLayer_Access;
   type NullPathFindingLayer_Access_Array_Access is access all NullPathFindingLayer_Access_Array;
   type NullPathFindingLayer_Access_Array_Access_Array is array (Natural range <>) of NullPathFindingLayer_Access_Array_Access;
   type NullPathFindingLayer_Access_Array_Access_Array_Access is access all NullPathFindingLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.NullPathFindingLayer_Package_References;

with org.allbinary.game.layer.NullPathFindingLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;
limited with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References;
limited with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;
limited with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
limited with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References;
limited with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package_References;
limited with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package_References;
limited with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;

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
   package Reference_Types is
   subtype CaptionAnimationHelperBase_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access;
   use type CaptionAnimationHelperBase_Access;
   subtype CaptionAnimationHelperBase_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array;
   use type CaptionAnimationHelperBase_Access_Array;
   subtype CaptionAnimationHelperBase_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access;
   use type CaptionAnimationHelperBase_Access_Array_Access;
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array;
   use type CaptionAnimationHelperBase_Access_Array_Access_Array;
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array_Access;
   use type CaptionAnimationHelperBase_Access_Array_Access_Array_Access;
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype Waypoint2LogHelper_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access;
   use type Waypoint2LogHelper_Access;
   subtype Waypoint2LogHelper_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array;
   use type Waypoint2LogHelper_Access_Array;
   subtype Waypoint2LogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access;
   use type Waypoint2LogHelper_Access_Array_Access;
   subtype Waypoint2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array;
   use type Waypoint2LogHelper_Access_Array_Access_Array;
   subtype Waypoint2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array_Access;
   use type Waypoint2LogHelper_Access_Array_Access_Array_Access;
   subtype WaypointLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access;
   use type WaypointLogHelper_Access;
   subtype WaypointLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array;
   use type WaypointLogHelper_Access_Array;
   subtype WaypointLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access;
   use type WaypointLogHelper_Access_Array_Access;
   subtype WaypointLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array;
   use type WaypointLogHelper_Access_Array_Access_Array;
   subtype WaypointLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References.WaypointLogHelper_Access_Array_Access_Array_Access;
   use type WaypointLogHelper_Access_Array_Access_Array_Access;
   subtype WaypointRunnableLogHelper_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access;
   use type WaypointRunnableLogHelper_Access;
   subtype WaypointRunnableLogHelper_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array;
   use type WaypointRunnableLogHelper_Access_Array;
   subtype WaypointRunnableLogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access;
   use type WaypointRunnableLogHelper_Access_Array_Access;
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array;
   use type WaypointRunnableLogHelper_Access_Array_Access_Array;
   subtype WaypointRunnableLogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References.WaypointRunnableLogHelper_Access_Array_Access_Array_Access;
   use type WaypointRunnableLogHelper_Access_Array_Access_Array_Access;
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   use type TrackingEvent_Access;
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   use type TrackingEvent_Access_Array;
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access;
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   use type TrackingEvent_Access_Array_Access_Array;
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   use type TrackingEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionAreaBase_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access;
   use type GeographicMapCellPositionAreaBase_Access;
   subtype GeographicMapCellPositionAreaBase_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array;
   use type GeographicMapCellPositionAreaBase_Access_Array;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access_Array;
   subtype GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package_References.GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionAreaBase_Access_Array_Access_Array_Access;
   subtype SelectionHudPaintable_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access;
   use type SelectionHudPaintable_Access;
   subtype SelectionHudPaintable_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array;
   use type SelectionHudPaintable_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access;
   subtype SelectionHudPaintable_Access_Array_Access_Array is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array;
   use type SelectionHudPaintable_Access_Array_Access_Array;
   subtype SelectionHudPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.SelectionHudPaintable_Package_References.SelectionHudPaintable_Access_Array_Access_Array_Access;
   use type SelectionHudPaintable_Access_Array_Access_Array_Access;
   subtype RTSLayer2LogHelper_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access;
   use type RTSLayer2LogHelper_Access;
   subtype RTSLayer2LogHelper_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array;
   use type RTSLayer2LogHelper_Access_Array;
   subtype RTSLayer2LogHelper_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access;
   use type RTSLayer2LogHelper_Access_Array_Access;
   subtype RTSLayer2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array;
   use type RTSLayer2LogHelper_Access_Array_Access_Array;
   subtype RTSLayer2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer2LogHelper_Package_References.RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   use type RTSLayer2LogHelper_Access_Array_Access_Array_Access;
   subtype WaypointBehaviorBase_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access;
   use type WaypointBehaviorBase_Access;
   subtype WaypointBehaviorBase_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array;
   use type WaypointBehaviorBase_Access_Array;
   subtype WaypointBehaviorBase_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access;
   use type WaypointBehaviorBase_Access_Array_Access;
   subtype WaypointBehaviorBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array;
   use type WaypointBehaviorBase_Access_Array_Access_Array;
   subtype WaypointBehaviorBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array_Access;
   use type WaypointBehaviorBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullPathFindingLayer_Access is org.allbinary.game.layer.NullPathFindingLayer_Package_References.NullPathFindingLayer_Access;
   function "=" (Left, Right : NullPathFindingLayer_Access) return Boolean renames org.allbinary.game.layer.NullPathFindingLayer_Package_References."=";
   subtype NullPathFindingLayer_Access_Array is org.allbinary.game.layer.NullPathFindingLayer_Package_References.NullPathFindingLayer_Access_Array;
   function "=" (Left, Right : NullPathFindingLayer_Access_Array) return Boolean renames org.allbinary.game.layer.NullPathFindingLayer_Package_References."=";
   subtype NullPathFindingLayer_Access_Array_Access is org.allbinary.game.layer.NullPathFindingLayer_Package_References.NullPathFindingLayer_Access_Array_Access;
   function "=" (Left, Right : NullPathFindingLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullPathFindingLayer_Package_References."=";
   subtype NullPathFindingLayer_Access_Array_Access_Array is org.allbinary.game.layer.NullPathFindingLayer_Package_References.NullPathFindingLayer_Access_Array_Access_Array;
   function "=" (Left, Right : NullPathFindingLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.NullPathFindingLayer_Package_References."=";
   subtype NullPathFindingLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.NullPathFindingLayer_Package_References.NullPathFindingLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullPathFindingLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.NullPathFindingLayer_Package_References."=";

   type NullPathFindingLayer is new Java_Object and PathFindingLayerInterface with null record;
   NULL_PATH_FINDING_LAYER : NullPathFindingLayer_Access;

   procedure Initialize (This : in out NullPathFindingLayer'Class);
   function Create return NullPathFindingLayer_Access;
   function getName (This : in out NullPathFindingLayer) return Unbounded_String;
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean;
   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access;
   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access;
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access;
   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access;
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer);
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access;
   function isSelected (This : in out NullPathFindingLayer) return Boolean;
   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean;
   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean;
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String);
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer);
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
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


