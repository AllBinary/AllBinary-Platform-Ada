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

with AllBinary_Java;
limited with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
package org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References is
   type WaypointLayerInterface_Access is access all org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package.WaypointLayerInterface'Class;
   type WaypointLayerInterface_Access_Array is array (Natural range <>) of WaypointLayerInterface_Access;
   type WaypointLayerInterface_Access_Array_Access is access all WaypointLayerInterface_Access_Array;
   type WaypointLayerInterface_Access_Array_Access_Array is array (Natural range <>) of WaypointLayerInterface_Access_Array_Access;
   type WaypointLayerInterface_Access_Array_Access_Array_Access is access all WaypointLayerInterface_Access_Array_Access_Array;
   type WaypointLayerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointLayerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointLayerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointLayerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointLayerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointLayerInterface_Access_Array_Access is (if Value /= null and then Value.all in WaypointLayerInterface_Access_Array_Object'Class then WaypointLayerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointLayerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointLayerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointLayerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointLayerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointLayerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointLayerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointLayerInterface_Access_Array_Access_Array_Object'Class then WaypointLayerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References;

with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References;
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
limited with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
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
limited with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package_References;
limited with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;
limited with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package_References;

package org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package is

   package CaptionAnimationHelperBase_Package renames Standard.org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
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
   end Reference_Types;
   use Reference_Types;


   type WaypointLayerInterface is interface;
   subtype WaypointLayerInterface_Access is org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.WaypointLayerInterface_Access;
   function "=" (Left, Right : WaypointLayerInterface_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References."=";
   subtype WaypointLayerInterface_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.WaypointLayerInterface_Access_Array;
   function "=" (Left, Right : WaypointLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References."=";
   subtype WaypointLayerInterface_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.WaypointLayerInterface_Access_Array_Access;
   function "=" (Left, Right : WaypointLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References."=";
   function Java_Box (Value : WaypointLayerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.Java_Box;
   function Java_Unbox_WaypointLayerInterface_Access_Array (Value : access Java_Object'Class) return WaypointLayerInterface_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.Java_Unbox_WaypointLayerInterface_Access_Array;
   subtype WaypointLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.WaypointLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References."=";
   subtype WaypointLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.WaypointLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References."=";
   function Java_Box (Value : WaypointLayerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.Java_Box;
   function Java_Unbox_WaypointLayerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointLayerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package_References.Java_Unbox_WaypointLayerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_WaypointLayerInterface (Value : WaypointLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure init (This : in out WaypointLayerInterface; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   function getMoveOutOfBuildAreaPath (This : in out WaypointLayerInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is abstract;
   procedure getMoveOutOfBuildAreaPath (This : in out WaypointLayerInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   procedure setClosestGeographicMapCellHistory (This : in out WaypointLayerInterface; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure teleportTo (This : in out WaypointLayerInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   procedure setLoad (This : in out WaypointLayerInterface; resource : Integer) is abstract;
   function getSurroundingGeographicMapCellPositionList (This : in out WaypointLayerInterface) return BasicArrayList_Access is abstract;
   function isSelected (This : in out WaypointLayerInterface) return Boolean is abstract;
   function shouldAddWaypointFromBuilding (This : in out WaypointLayerInterface) return Boolean is abstract;
   function isShowMoreCaptionStates (This : in out WaypointLayerInterface) return Boolean is abstract;
   procedure trackTo (This : in out WaypointLayerInterface; reason : Unbounded_String) is abstract;
   procedure trackToDXY (This : in out WaypointLayerInterface; dx : Integer; dy : Integer) is abstract;
   function buildingChase (This : in out WaypointLayerInterface; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is abstract;
   procedure buildingChase (This : in out WaypointLayerInterface; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
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


