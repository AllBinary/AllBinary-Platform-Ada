-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.WaypointBehaviorBase_Package;
package org.allbinary.game.layer.WaypointBehaviorBase_Package_References is
   type WaypointBehaviorBase_Access is access all org.allbinary.game.layer.WaypointBehaviorBase_Package.WaypointBehaviorBase'Class;
   type WaypointBehaviorBase_Access_Array is array (Natural range <>) of WaypointBehaviorBase_Access;
   type WaypointBehaviorBase_Access_Array_Access is access all WaypointBehaviorBase_Access_Array;
   type WaypointBehaviorBase_Access_Array_Access_Array is array (Natural range <>) of WaypointBehaviorBase_Access_Array_Access;
   type WaypointBehaviorBase_Access_Array_Access_Array_Access is access all WaypointBehaviorBase_Access_Array_Access_Array;
end org.allbinary.game.layer.WaypointBehaviorBase_Package_References;

with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;

package org.allbinary.game.layer.WaypointBehaviorBase_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   subtype WaypointBase_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access;
   use type WaypointBase_Access;
   subtype WaypointBase_Access_Array is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array;
   use type WaypointBase_Access_Array;
   subtype WaypointBase_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access;
   use type WaypointBase_Access_Array_Access;
   subtype WaypointBase_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access_Array;
   use type WaypointBase_Access_Array_Access_Array;
   subtype WaypointBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access_Array_Access;
   use type WaypointBase_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointBehaviorBase_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";
   subtype WaypointBehaviorBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointBehaviorBase_Package_References.WaypointBehaviorBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointBehaviorBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointBehaviorBase_Package_References."=";

   type WaypointBehaviorBase is new Java_Object and TickableInterface with record
      ownedWaypointList : BasicArrayList_Access;
      waypointOverridesAttacking : Boolean;
      waypoint : WaypointBase_Access;
      steeringVisitorList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out WaypointBehaviorBase'Class);
   function Create return WaypointBehaviorBase_Access;
   function getName (This : in out WaypointBehaviorBase) return Unbounded_String;
   function isRunning (This : in out WaypointBehaviorBase) return Boolean;
   procedure processTick (This : in out WaypointBehaviorBase; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getOwnedWaypointList (This : in out WaypointBehaviorBase) return BasicArrayList_Access;
   function getWaypoint (This : in out WaypointBehaviorBase) return WaypointBase_Access;
   procedure setWaypoint (This : in out WaypointBehaviorBase; waypoint_Param : access WaypointBase_Package.WaypointBase'Class);
   function getSteeringVisitorList (This : in out WaypointBehaviorBase) return BasicArrayList_Access;
   function getMovementLogicAsString (This : in out WaypointBehaviorBase) return Unbounded_String;
   function isWaypointListEmptyOrOnlyTargets (This : in out WaypointBehaviorBase) return Boolean;
   function isInSensorRange (This : in out WaypointBehaviorBase; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) return Boolean;
   procedure isInSensorRange (This : in out WaypointBehaviorBase; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer);
   function getCurrentTargetLayerInterface (This : in out WaypointBehaviorBase) return CollidableDestroyableDamageableLayer_Access;
   function getCurrentTargetingStateString (This : in out WaypointBehaviorBase) return Unbounded_String;
   function isTrackingWaypoint (This : in out WaypointBehaviorBase) return Boolean;
   function getCurrentPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access;
   function getCurrentGeographicMapCellHistory (This : in out WaypointBehaviorBase) return GeographicMapCellHistory_Access;
   function isWaypointOverridesAttacking (This : in out WaypointBehaviorBase) return Boolean;
   function getNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access;
   function needToMove (This : in out WaypointBehaviorBase) return Boolean;
   procedure setWaypointPathsList (This : in out WaypointBehaviorBase; waypointPathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getWaypointPathsList (This : in out WaypointBehaviorBase) return BasicArrayList_Access;
   procedure setTarget (This : in out WaypointBehaviorBase; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure setTargetWithDistance (This : in out WaypointBehaviorBase; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer);
   procedure clearTarget (This : in out WaypointBehaviorBase);
   procedure updatePathOnTargetMove (This : in out WaypointBehaviorBase; reason : Unbounded_String);

end org.allbinary.game.layer.WaypointBehaviorBase_Package;


