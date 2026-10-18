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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.WaypointBehaviorBase_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type WaypointBehaviorBase is tagged;
   type WaypointBehaviorBase_Access is access all WaypointBehaviorBase'Class;
   type WaypointBehaviorBase_Access_Array is array (Natural range <>) of WaypointBehaviorBase_Access;
   type WaypointBehaviorBase_Access_Array_Access is access all WaypointBehaviorBase_Access_Array;
   type WaypointBehaviorBase_Access_Array_Access_Array is array (Natural range <>) of WaypointBehaviorBase_Access_Array_Access;
   type WaypointBehaviorBase_Access_Array_Access_Array_Access is access all WaypointBehaviorBase_Access_Array_Access_Array;

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


