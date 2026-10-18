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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.game.layer.WaypointBehaviorBase_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out WaypointBehaviorBase'Class) is
   begin
      null;
      
      This.waypointOverridesAttacking := True;
      This.waypoint := WaypointBase_Package.NULL_WAYPOINT_BASE;
      This.steeringVisitorList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointBehaviorBase'Class) is
   begin
      Initialize_Fields (This);
        This.ownedWaypointList := BasicArrayList_Access (BasicArrayListS_Package.Create (1));
   end Initialize;

   function Create return WaypointBehaviorBase_Access is
      This : constant WaypointBehaviorBase_Access := new WaypointBehaviorBase;
   begin
      WaypointBehaviorBase_Package.Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out WaypointBehaviorBase) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   function isRunning (This : in out WaypointBehaviorBase) return Boolean is
   begin
        return False;
   end isRunning;

   --  throws Exception
   procedure processTick (This : in out WaypointBehaviorBase; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        null;
   end processTick;

   function getOwnedWaypointList (This : in out WaypointBehaviorBase) return BasicArrayList_Access is
   begin
        return This.ownedWaypointList;
   end getOwnedWaypointList;

   function getWaypoint (This : in out WaypointBehaviorBase) return WaypointBase_Access is
   begin
        return This.waypoint;
   end getWaypoint;

   procedure setWaypoint (This : in out WaypointBehaviorBase; waypoint_Param : access WaypointBase_Package.WaypointBase'Class) is
      waypoint : constant WaypointBase_Access := WaypointBase_Access (waypoint_Param);
   begin
        This.waypoint := waypoint;
   end setWaypoint;

   function getSteeringVisitorList (This : in out WaypointBehaviorBase) return BasicArrayList_Access is
   begin
        return This.steeringVisitorList;
   end getSteeringVisitorList;

   function getMovementLogicAsString (This : in out WaypointBehaviorBase) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getMovementLogicAsString;

   function isWaypointListEmptyOrOnlyTargets (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   function isInSensorRange (This : in out WaypointBehaviorBase; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) return Boolean is
      layerInterface : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (layerInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isInSensorRange;

   function getCurrentTargetLayerInterface (This : in out WaypointBehaviorBase) return CollidableDestroyableDamageableLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentTargetLayerInterface;

   function getCurrentTargetingStateString (This : in out WaypointBehaviorBase) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getCurrentTargetingStateString;

   function isTrackingWaypoint (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isTrackingWaypoint;

   function getCurrentPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentPathGeographicMapCellPosition;

   function getCurrentGeographicMapCellHistory (This : in out WaypointBehaviorBase) return GeographicMapCellHistory_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentGeographicMapCellHistory;

   function isWaypointOverridesAttacking (This : in out WaypointBehaviorBase) return Boolean is
   begin
        return This.waypointOverridesAttacking;
   end isWaypointOverridesAttacking;

   function getNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getNextUnvisitedPathGeographicMapCellPosition;

   function needToMove (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end needToMove;

   procedure setWaypointPathsList (This : in out WaypointBehaviorBase; waypointPathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      waypointPathsList : constant BasicArrayList_Access := BasicArrayList_Access (waypointPathsList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setWaypointPathsList;

   function getWaypointPathsList (This : in out WaypointBehaviorBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointPathsList;

   --  throws Exception
   procedure setTarget (This : in out WaypointBehaviorBase; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure setTargetWithDistance (This : in out WaypointBehaviorBase; layerInterface_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      layerInterface : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTargetWithDistance;

   --  throws Exception
   procedure clearTarget (This : in out WaypointBehaviorBase) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end clearTarget;

   --  throws Exception
   procedure updatePathOnTargetMove (This : in out WaypointBehaviorBase; reason : Unbounded_String) is
   begin
        null;
   end updatePathOnTargetMove;

   procedure isInSensorRange (This : in out WaypointBehaviorBase; layerInterface_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; targetDistance : Integer) is
      Java_Result : constant Boolean := WaypointBehaviorBase'Class (This).isInSensorRange (layerInterface_Param, targetDistance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInSensorRange;

end org.allbinary.game.layer.WaypointBehaviorBase_Package;


