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
      NullPathFindingLayer_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPathFindingLayer) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end getName;

   --  throws Exception
   function getEndGeographicMapCellPositionList (This : in out NullPathFindingLayer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldHandleStartSameAsEnd;

   function getGeographicMapCellPositionArea (This : in out NullPathFindingLayer) return GeographicMapCellPositionAreaBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGeographicMapCellPositionArea;

   function getHudPaintable (This : in out NullPathFindingLayer) return SelectionHudPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getHudPaintable;

   --  throws Exception
   procedure handleCost (This : in out NullPathFindingLayer; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end handleCost;

   function getParentLayer (This : in out NullPathFindingLayer) return PathFindingLayerInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getParentLayer;

   function getRTSLayer2LogHelper (This : in out NullPathFindingLayer) return RTSLayer2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getRTSLayer2LogHelper;

   --  throws Exception
   procedure setTarget (This : in out NullPathFindingLayer; targetGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      targetGameLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetGameLayer_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setTarget;

   --  throws Exception
   procedure init (This : in out NullPathFindingLayer; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      geographicMapCellPositionBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   function getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getMoveOutOfBuildAreaPath;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out NullPathFindingLayer; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      pathsList : constant BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setClosestGeographicMapCellHistory;

   procedure teleportTo (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
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
        return null;
   end getSurroundingGeographicMapCellPositionList;

   function isSelected (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isSelected;

   function shouldAddWaypointFromBuilding (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end shouldAddWaypointFromBuilding;

   function isShowMoreCaptionStates (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
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
   function buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end buildingChase;

   function getTrackingEvent (This : in out NullPathFindingLayer) return TrackingEvent_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTrackingEvent;

   procedure allStop (This : in out NullPathFindingLayer) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end allStop;

   function isWaypointListEmptyOrOnlyTargets (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   function getTopLeftGeographicMapCellPosition (This : in out NullPathFindingLayer) return GeographicMapCellPosition_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getTopLeftGeographicMapCellPosition;

   function getCaptionAnimationHelper (This : in out NullPathFindingLayer) return CaptionAnimationHelperBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getCaptionAnimationHelper;

   function getWaypointBehavior (This : in out NullPathFindingLayer) return WaypointBehaviorBase_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointBehavior;

   function getWaypointLogHelper (This : in out NullPathFindingLayer) return WaypointLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out NullPathFindingLayer) return Waypoint2LogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out NullPathFindingLayer) return WaypointRunnableLogHelper_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getWaypointRunnableLogHelper;

   function getGroupInterface (This : in out NullPathFindingLayer) return Group_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGroupInterface;

   --  throws Exception
   function isDestroyed (This : in out NullPathFindingLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isDestroyed;

   function getSourceId (This : in out NullPathFindingLayer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getSourceId;

   procedure getMoveOutOfBuildAreaPath (This : in out NullPathFindingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NullPathFindingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure buildingChase (This : in out NullPathFindingLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := NullPathFindingLayer'Class (This).buildingChase (allbinaryLayer_Param, cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

begin
   null;
   NULL_PATH_FINDING_LAYER := NullPathFindingLayer_Package.Create;

end org.allbinary.game.layer.NullPathFindingLayer_Package;


