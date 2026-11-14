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
limited with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
package org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References is
   type Waypoint2LogHelper_Access is access all org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package.Waypoint2LogHelper'Class;
   type Waypoint2LogHelper_Access_Array is array (Natural range <>) of Waypoint2LogHelper_Access;
   type Waypoint2LogHelper_Access_Array_Access is access all Waypoint2LogHelper_Access_Array;
   type Waypoint2LogHelper_Access_Array_Access_Array is array (Natural range <>) of Waypoint2LogHelper_Access_Array_Access;
   type Waypoint2LogHelper_Access_Array_Access_Array_Access is access all Waypoint2LogHelper_Access_Array_Access_Array;
   type Waypoint2LogHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Waypoint2LogHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : Waypoint2LogHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Waypoint2LogHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Waypoint2LogHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Waypoint2LogHelper_Access_Array_Access is (if Value /= null and then Value.all in Waypoint2LogHelper_Access_Array_Object'Class then Waypoint2LogHelper_Access_Array_Object'Class (Value.all).Value else null);
   type Waypoint2LogHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Waypoint2LogHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Waypoint2LogHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Waypoint2LogHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Waypoint2LogHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Waypoint2LogHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Waypoint2LogHelper_Access_Array_Access_Array_Object'Class then Waypoint2LogHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;

with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype Waypoint2LogHelper_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   function Java_Box (Value : Waypoint2LogHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Java_Box;
   function Java_Unbox_Waypoint2LogHelper_Access_Array (Value : access Java_Object'Class) return Waypoint2LogHelper_Access_Array_Access renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Java_Unbox_Waypoint2LogHelper_Access_Array;
   subtype Waypoint2LogHelper_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   subtype Waypoint2LogHelper_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Waypoint2LogHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Waypoint2LogHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References."=";
   function Java_Box (Value : Waypoint2LogHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Java_Box;
   function Java_Unbox_Waypoint2LogHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return Waypoint2LogHelper_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package_References.Java_Unbox_Waypoint2LogHelper_Access_Array_Access_Array;

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


