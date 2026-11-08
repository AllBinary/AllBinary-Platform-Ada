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


with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.WaypointBehaviorBase_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype WaypointBase_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access;
   function "=" (Left, Right : WaypointBase_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointBase_Package_References."=";
   subtype WaypointBase_Access_Array is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array;
   function "=" (Left, Right : WaypointBase_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointBase_Package_References."=";
   subtype WaypointBase_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access;
   function "=" (Left, Right : WaypointBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointBase_Package_References."=";
   subtype WaypointBase_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointBase_Package_References."=";
   subtype WaypointBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointBase_Package_References.WaypointBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointBase_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out WaypointBehaviorBase'Class) is
   begin
      null;
      
      This.waypointOverridesAttacking := True;
      This.waypoint := WaypointBase_Access (WaypointBase_Package.NULL_WAYPOINT_BASE);
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
        return To_Unbounded_String (Ada.Tags.Expanded_Name (Java_Object'Class (This)'Tag));
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
      Java_Result : constant Boolean := WaypointBehaviorBase'Class (This).isInSensorRange (layerInterface_Param => layerInterface_Param, targetDistance => targetDistance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInSensorRange;

end org.allbinary.game.layer.WaypointBehaviorBase_Package;


