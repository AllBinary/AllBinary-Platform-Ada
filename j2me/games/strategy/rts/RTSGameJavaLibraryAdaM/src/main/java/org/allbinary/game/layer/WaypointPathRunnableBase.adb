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


package body org.allbinary.game.layer.WaypointPathRunnableBase_Package is

   procedure Initialize_Fields (This : in out WaypointPathRunnableBase'Class) is
   begin
      null;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
      This.pathFindingLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.targetPathFindingLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.priorityP := Integer_Package.MAX_VALUE;
      This.runningP := False;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointPathRunnableBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointPathRunnableBase_Access is
      This : constant WaypointPathRunnableBase_Access := new WaypointPathRunnableBase;
   begin
      Initialize (This.all);
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
   procedure setThread (This : in out WaypointPathRunnableBase; thread : Thread_Access) is
   begin
        null;
   end setThread;

   procedure setTargetLayer (This : in out WaypointPathRunnableBase; waypointLayer : PathFindingLayerInterface_Access) is
   begin
        This.targetPathFindingLayer := waypointLayer;
        This.setPriority;
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

   procedure setUnitLayer (This : in out WaypointPathRunnableBase; unitLayer : PathFindingLayerInterface_Access) is
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

   procedure isRunning (This : in out WaypointPathRunnableBase) is
      Java_Result : constant Boolean := WaypointPathRunnableBase'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure getTargetLayer (This : in out WaypointPathRunnableBase) is
      Java_Result : constant PathFindingLayerInterface_Access := WaypointPathRunnableBase'Class (This).getTargetLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTargetLayer;

   procedure getPriority (This : in out WaypointPathRunnableBase) is
      Java_Result : constant Integer := WaypointPathRunnableBase'Class (This).getPriority;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPriority;

   procedure isDone (This : in out WaypointPathRunnableBase) is
      Java_Result : constant Boolean := WaypointPathRunnableBase'Class (This).isDone;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDone;

end org.allbinary.game.layer.WaypointPathRunnableBase_Package;


