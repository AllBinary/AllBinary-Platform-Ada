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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.LayerDistanceUtil_Package; use org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.WaypointPathRunnableBase_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerDistanceUtil_Package renames Standard.org.allbinary.math.LayerDistanceUtil_Package;
   package PriorityRunnable_Package renames Standard.org.allbinary.thread.PriorityRunnable_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;

   type WaypointPathRunnableBase is tagged;
   type WaypointPathRunnableBase_Access is access all WaypointPathRunnableBase'Class;
   type WaypointPathRunnableBase_Access_Array is array (Natural range <>) of WaypointPathRunnableBase_Access;
   type WaypointPathRunnableBase_Access_Array_Access is access all WaypointPathRunnableBase_Access_Array;

   type WaypointPathRunnableBase is new RunnableInterface and PriorityRunnable with record
      layerDistanceUtil : LayerDistanceUtil_Access;
      pathFindingLayer : PathFindingLayerInterface_Access;
      targetPathFindingLayer : PathFindingLayerInterface_Access;
      priorityP : Integer;
      runningP : Boolean;
   end record;

   procedure Initialize (This : in out WaypointPathRunnableBase'Class);
   function Create return WaypointPathRunnableBase_Access;
   function isRunning (This : in out WaypointPathRunnableBase) return Boolean;
   procedure setRunning (This : in out WaypointPathRunnableBase; isRunning : Boolean);
   procedure setThread (This : in out WaypointPathRunnableBase; thread : Thread_Access);
   procedure setTargetLayer (This : in out WaypointPathRunnableBase; waypointLayer : PathFindingLayerInterface_Access);
   procedure setPriority (This : in out WaypointPathRunnableBase);
   function getTargetLayer (This : in out WaypointPathRunnableBase) return PathFindingLayerInterface_Access;
   procedure setUnitLayer (This : in out WaypointPathRunnableBase; unitLayer : PathFindingLayerInterface_Access);
   function getPriority (This : in out WaypointPathRunnableBase) return Integer;
   function isDone (This : in out WaypointPathRunnableBase) return Boolean;
   procedure run (This : in out WaypointPathRunnableBase);
   procedure reset (This : in out WaypointPathRunnableBase);

end org.allbinary.game.layer.WaypointPathRunnableBase_Package;


