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
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package is

   package CaptionAnimationHelperBase_Package renames Standard.org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package TrackingEvent_Package renames Standard.org.allbinary.game.tracking.TrackingEvent_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type WaypointLayerInterface is interface;
   type WaypointLayerInterface_Access is access all WaypointLayerInterface'Class;
   type WaypointLayerInterface_Access_Array is array (Natural range <>) of WaypointLayerInterface_Access;
   type WaypointLayerInterface_Access_Array_Access is access all WaypointLayerInterface_Access_Array;
   procedure init (This : in out WaypointLayerInterface; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPositionBasicArrayList : BasicArrayList_Access) is abstract;
   function getMoveOutOfBuildAreaPath (This : in out WaypointLayerInterface; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is abstract;
   procedure setClosestGeographicMapCellHistory (This : in out WaypointLayerInterface; pathsList : BasicArrayList_Access) is abstract;
   procedure teleportTo (This : in out WaypointLayerInterface; geographicMapCellPosition : GeographicMapCellPosition_Access) is abstract;
   procedure setLoad (This : in out WaypointLayerInterface; resource : Integer) is abstract;
   function getSurroundingGeographicMapCellPositionList (This : in out WaypointLayerInterface) return BasicArrayList_Access is abstract;
   function isSelected (This : in out WaypointLayerInterface) return Boolean is abstract;
   function shouldAddWaypointFromBuilding (This : in out WaypointLayerInterface) return Boolean is abstract;
   function isShowMoreCaptionStates (This : in out WaypointLayerInterface) return Boolean is abstract;
   procedure trackTo (This : in out WaypointLayerInterface; reason : Unbounded_String) is abstract;
   procedure trackToDXY (This : in out WaypointLayerInterface; dx : Integer; dy : Integer) is abstract;
   function buildingChase (This : in out WaypointLayerInterface; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) return Boolean is abstract;
   function getTrackingEvent (This : in out WaypointLayerInterface) return TrackingEvent_Access is abstract;
   procedure allStop (This : in out WaypointLayerInterface) is abstract;
   function isWaypointListEmptyOrOnlyTargets (This : in out WaypointLayerInterface) return Boolean is abstract;
   function getCurrentGeographicMapCellPosition (This : in out WaypointLayerInterface) return GeographicMapCellPosition_Access is abstract;
   function getTopLeftGeographicMapCellPosition (This : in out WaypointLayerInterface) return GeographicMapCellPosition_Access is abstract;
   function getCaptionAnimationHelper (This : in out WaypointLayerInterface) return CaptionAnimationHelperBase_Access is abstract;
   function getWaypointBehavior (This : in out WaypointLayerInterface) return WaypointBehaviorBase_Access is abstract;
   function getWaypointLogHelper (This : in out WaypointLayerInterface) return WaypointLogHelper_Access is abstract;
   function getWaypoint2LogHelper (This : in out WaypointLayerInterface) return Waypoint2LogHelper_Access is abstract;
   function getWaypointRunnableLogHelper (This : in out WaypointLayerInterface) return WaypointRunnableLogHelper_Access is abstract;

end org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;


