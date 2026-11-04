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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.layer.WaypointPathRunnableBase_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   subtype LayerDistanceUtil_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
   subtype LayerDistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerDistanceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.LayerDistanceUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out WaypointPathRunnableBase'Class) is
   begin
      null;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
      This.pathFindingLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
      This.targetPathFindingLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
      This.priorityP := Integer'Last;
      This.runningP := False;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointPathRunnableBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointPathRunnableBase_Access is
      This : constant WaypointPathRunnableBase_Access := new WaypointPathRunnableBase;
   begin
      WaypointPathRunnableBase_Package.Initialize (This.all);
      return This;
   end Create;


   function isRunning (This : in out WaypointPathRunnableBase) return Boolean is
   begin
        return This.runningP;
   end isRunning;

   procedure setRunning (This : in out WaypointPathRunnableBase; isRunning : Boolean) is
   begin
        This.runningP := isRunning;
   end setRunning;

   --  throws Exception
   procedure setThread (This : in out WaypointPathRunnableBase; thread_Param : access Thread_Package.Thread'Class) is
      thread : constant Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   procedure setTargetLayer (This : in out WaypointPathRunnableBase; waypointLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      waypointLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (waypointLayer_Param);
   begin
        This.targetPathFindingLayer := waypointLayer;
        WaypointPathRunnableBase'Class (This).setPriority;
   end setTargetLayer;

   procedure setPriority (This : in out WaypointPathRunnableBase) is
      pathFindingLayer : AllBinaryLayer_Access;
      targetLayer : AllBinaryLayer_Access;
      distance : Integer;
      distanceCategory : Integer;
   begin
        pathFindingLayer := AllBinaryLayer_Access (This.pathFindingLayer);
        targetLayer := AllBinaryLayer_Access (This.targetPathFindingLayer);
        if (targetLayer) /= (null) then
            distance := This.layerDistanceUtil.getDistance (targetLayer, pathFindingLayer);
            distanceCategory := (distance) / (70);
            This.priorityP := distanceCategory;
        end if;
   end setPriority;

   function getTargetLayer (This : in out WaypointPathRunnableBase) return PathFindingLayerInterface_Access is
   begin
        return This.targetPathFindingLayer;
   end getTargetLayer;

   procedure setUnitLayer (This : in out WaypointPathRunnableBase; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      unitLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (unitLayer_Param);
   begin
        This.pathFindingLayer := unitLayer;
   end setUnitLayer;

   function getPriority (This : in out WaypointPathRunnableBase) return Integer is
   begin
        return This.priorityP;
   end getPriority;

   function isDone (This : in out WaypointPathRunnableBase) return Boolean is
   begin
        return True;
   end isDone;

   procedure run (This : in out WaypointPathRunnableBase) is
   begin
        null;
   end run;

   procedure reset (This : in out WaypointPathRunnableBase) is
   begin
        null;
   end reset;

end org.allbinary.game.layer.WaypointPathRunnableBase_Package;


