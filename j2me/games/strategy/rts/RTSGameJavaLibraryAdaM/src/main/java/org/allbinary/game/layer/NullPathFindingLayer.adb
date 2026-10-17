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


package body org.allbinary.game.layer.NullPathFindingLayer_Package is

   procedure Initialize_Fields (This : in out NullPathFindingLayer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullPathFindingLayer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullPathFindingLayer_Access is
      This : constant NullPathFindingLayer_Access := new NullPathFindingLayer;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPathFindingLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getName;

   --  throws Exception
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end shouldHandleStartSameAsEnd;

   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGeographicMapCellPositionArea;

   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getHudPaintable;

   --  throws Exception
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer : PathFindingLayerInterface_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleCost;

   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getParentLayer;

   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRTSLayer2LogHelper;

   --  throws Exception
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer : PathFindingLayerInterface_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPositionBasicArrayList : BasicArrayList_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getMoveOutOfBuildAreaPath;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList : BasicArrayList_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setClosestGeographicMapCellHistory;

   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end teleportTo;

   --  throws Exception
   procedure setLoad (This : in out NullPathFindingLayer; resource : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setLoad;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getSurroundingGeographicMapCellPositionList;

   function isSelected (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isSelected;

   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end shouldAddWaypointFromBuilding;

   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isShowMoreCaptionStates;

   --  throws Exception
   procedure trackTo (This : in out NullPathFindingLayer; reason : Unbounded_String) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out NullPathFindingLayer; dx : Integer; dy : Integer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end trackToDXY;

   --  throws Exception
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end buildingChase;

   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getTrackingEvent;

   procedure allStop (This : in out NullPathFindingLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end allStop;

   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getTopLeftGeographicMapCellPosition;

   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getCaptionAnimationHelper;

   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWaypointBehavior;

   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getWaypointRunnableLogHelper;

   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGroupInterface;

   --  throws Exception
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isDestroyed;

   function getSourceId (This : in out NullPathFindingLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getSourceId;

   procedure getName (This : in out NullPathFindingLayer) is
      Java_Result : constant Unbounded_String := NullPathFindingLayer'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getEndGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPositionList;

   procedure shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).shouldHandleStartSameAsEnd;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldHandleStartSameAsEnd;

   procedure getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) is
      Java_Result : constant GeographicMapCellPositionAreaBase_Access := NullPathFindingLayer'Class (This).getGeographicMapCellPositionArea;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionArea;

   procedure getHudPaintable (This : in out NullPathFindingLayer) is
      Java_Result : constant SelectionHudPaintable_Access := NullPathFindingLayer'Class (This).getHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudPaintable;

   procedure getParentLayer (This : in out NullPathFindingLayer) is
      Java_Result : constant PathFindingLayerInterface_Access := NullPathFindingLayer'Class (This).getParentLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getParentLayer;

   procedure getRTSLayer2LogHelper (This : in out NullPathFindingLayer) is
      Java_Result : constant RTSLayer2LogHelper_Access := NullPathFindingLayer'Class (This).getRTSLayer2LogHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRTSLayer2LogHelper;

   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure getSurroundingGeographicMapCellPositionList (This : in out NullPathFindingLayer) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getSurroundingGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurroundingGeographicMapCellPositionList;

   procedure isSelected (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).isSelected;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSelected;

   procedure shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).shouldAddWaypointFromBuilding;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldAddWaypointFromBuilding;

   procedure isShowMoreCaptionStates (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).isShowMoreCaptionStates;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isShowMoreCaptionStates;

   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer : AllBinaryLayer_Access; cellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).buildingChase (allbinaryLayer, cellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

   procedure getTrackingEvent (This : in out NullPathFindingLayer) is
      Java_Result : constant TrackingEvent_Access := NullPathFindingLayer'Class (This).getTrackingEvent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

   procedure isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).isWaypointListEmptyOrOnlyTargets;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isWaypointListEmptyOrOnlyTargets;

   procedure getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) is
      Java_Result : constant GeographicMapCellPosition_Access := NullPathFindingLayer'Class (This).getCurrentGeographicMapCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentGeographicMapCellPosition;

   procedure getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) is
      Java_Result : constant GeographicMapCellPosition_Access := NullPathFindingLayer'Class (This).getTopLeftGeographicMapCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTopLeftGeographicMapCellPosition;

   procedure getCaptionAnimationHelper (This : in out NullPathFindingLayer) is
      Java_Result : constant CaptionAnimationHelperBase_Access := NullPathFindingLayer'Class (This).getCaptionAnimationHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCaptionAnimationHelper;

   procedure getWaypointBehavior (This : in out NullPathFindingLayer) is
      Java_Result : constant WaypointBehaviorBase_Access := NullPathFindingLayer'Class (This).getWaypointBehavior;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWaypointBehavior;

   procedure getWaypointLogHelper (This : in out NullPathFindingLayer) is
      Java_Result : constant WaypointLogHelper_Access := NullPathFindingLayer'Class (This).getWaypointLogHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWaypointLogHelper;

   procedure getWaypoint2LogHelper (This : in out NullPathFindingLayer) is
      Java_Result : constant Waypoint2LogHelper_Access := NullPathFindingLayer'Class (This).getWaypoint2LogHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWaypoint2LogHelper;

   procedure getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) is
      Java_Result : constant WaypointRunnableLogHelper_Access := NullPathFindingLayer'Class (This).getWaypointRunnableLogHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWaypointRunnableLogHelper;

   procedure getGroupInterface (This : in out NullPathFindingLayer) is
      Java_Result : constant Group_Access_Array_Access := NullPathFindingLayer'Class (This).getGroupInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupInterface;

   procedure isDestroyed (This : in out NullPathFindingLayer) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).isDestroyed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDestroyed;

   procedure getSourceId (This : in out NullPathFindingLayer) is
      Java_Result : constant Integer := NullPathFindingLayer'Class (This).getSourceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSourceId;

begin
   null;
   NULL_PATH_FINDING_LAYER := NullPathFindingLayer_Package.Create;

end org.allbinary.game.layer.NullPathFindingLayer_Package;


