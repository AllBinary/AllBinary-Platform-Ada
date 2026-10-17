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


package body org.allbinary.game.layer.WaypointBehaviorBase_Package is

   procedure Initialize_Fields (This : in out WaypointBehaviorBase'Class) is
   begin
      null;
      
      This.waypointOverridesAttacking := True;
      This.waypoint := WaypointBase_Package.NULL_WAYPOINT_BASE;
      This.steeringVisitorList := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointBehaviorBase'Class) is
   begin
      Initialize_Fields (This);
        This.ownedWaypointList := BasicArrayListS_Package.Create (1);
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
   procedure processTick (This : in out WaypointBehaviorBase; allBinaryLayerManager : AllBinaryLayerManager_Access) is
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

   procedure setWaypoint (This : in out WaypointBehaviorBase; waypoint : WaypointBase_Access) is
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
   end getMovementLogicAsString;

   function isWaypointListEmptyOrOnlyTargets (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isWaypointListEmptyOrOnlyTargets;

   function isInSensorRange (This : in out WaypointBehaviorBase; layerInterface : CollidableDestroyableDamageableLayer_Access; targetDistance : Integer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isInSensorRange;

   function getCurrentTargetLayerInterface (This : in out WaypointBehaviorBase) return CollidableDestroyableDamageableLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentTargetLayerInterface;

   function getCurrentTargetingStateString (This : in out WaypointBehaviorBase) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentTargetingStateString;

   function isTrackingWaypoint (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isTrackingWaypoint;

   function getCurrentPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentPathGeographicMapCellPosition;

   function getCurrentGeographicMapCellHistory (This : in out WaypointBehaviorBase) return GeographicMapCellHistory_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentGeographicMapCellHistory;

   function isWaypointOverridesAttacking (This : in out WaypointBehaviorBase) return Boolean is
   begin
        return This.waypointOverridesAttacking;
   end isWaypointOverridesAttacking;

   function getNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointBehaviorBase) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getNextUnvisitedPathGeographicMapCellPosition;

   function needToMove (This : in out WaypointBehaviorBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end needToMove;

   procedure setWaypointPathsList (This : in out WaypointBehaviorBase; waypointPathsList : BasicArrayList_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setWaypointPathsList;

   function getWaypointPathsList (This : in out WaypointBehaviorBase) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWaypointPathsList;

   --  throws Exception
   procedure setTarget (This : in out WaypointBehaviorBase; layerInterface : PathFindingLayerInterface_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure setTargetWithDistance (This : in out WaypointBehaviorBase; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
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

   procedure isInSensorRange (This : in out WaypointBehaviorBase; layerInterface : CollidableDestroyableDamageableLayer_Access; targetDistance : Integer) is
      Java_Result : constant Boolean := WaypointBehaviorBase'Class (This).isInSensorRange (layerInterface, targetDistance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInSensorRange;

end org.allbinary.game.layer.WaypointBehaviorBase_Package;


