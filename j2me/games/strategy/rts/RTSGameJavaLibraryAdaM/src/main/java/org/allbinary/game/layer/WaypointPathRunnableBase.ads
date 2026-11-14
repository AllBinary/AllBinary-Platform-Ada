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
limited with org.allbinary.game.layer.WaypointPathRunnableBase_Package;
package org.allbinary.game.layer.WaypointPathRunnableBase_Package_References is
   type WaypointPathRunnableBase_Access is access all org.allbinary.game.layer.WaypointPathRunnableBase_Package.WaypointPathRunnableBase'Class;
   type WaypointPathRunnableBase_Access_Array is array (Natural range <>) of WaypointPathRunnableBase_Access;
   type WaypointPathRunnableBase_Access_Array_Access is access all WaypointPathRunnableBase_Access_Array;
   type WaypointPathRunnableBase_Access_Array_Access_Array is array (Natural range <>) of WaypointPathRunnableBase_Access_Array_Access;
   type WaypointPathRunnableBase_Access_Array_Access_Array_Access is access all WaypointPathRunnableBase_Access_Array_Access_Array;
   type WaypointPathRunnableBase_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointPathRunnableBase_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointPathRunnableBase_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointPathRunnableBase_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointPathRunnableBase_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointPathRunnableBase_Access_Array_Access is (if Value /= null and then Value.all in WaypointPathRunnableBase_Access_Array_Object'Class then WaypointPathRunnableBase_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointPathRunnableBase_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointPathRunnableBase_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointPathRunnableBase_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointPathRunnableBase_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointPathRunnableBase_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointPathRunnableBase_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointPathRunnableBase_Access_Array_Access_Array_Object'Class then WaypointPathRunnableBase_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.WaypointPathRunnableBase_Package_References;

with org.allbinary.game.layer.WaypointPathRunnableBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.LayerDistanceUtil_Package;
with org.allbinary.math.LayerDistanceUtil_Package_References;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.game.layer.WaypointPathRunnableBase_Package is

   package LayerDistanceUtil_Package renames Standard.org.allbinary.math.LayerDistanceUtil_Package;
   package PriorityRunnable_Package renames Standard.org.allbinary.thread.PriorityRunnable_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype LayerDistanceUtil_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access;
   use type LayerDistanceUtil_Access;
   subtype LayerDistanceUtil_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array;
   use type LayerDistanceUtil_Access_Array;
   subtype LayerDistanceUtil_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access;
   use type LayerDistanceUtil_Access_Array_Access;
   subtype LayerDistanceUtil_Access_Array_Access_Array is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array;
   use type LayerDistanceUtil_Access_Array_Access_Array;
   subtype LayerDistanceUtil_Access_Array_Access_Array_Access is org.allbinary.math.LayerDistanceUtil_Package_References.LayerDistanceUtil_Access_Array_Access_Array_Access;
   use type LayerDistanceUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype WaypointPathRunnableBase_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   function Java_Box (Value : WaypointPathRunnableBase_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.Java_Box;
   function Java_Unbox_WaypointPathRunnableBase_Access_Array (Value : access Java_Object'Class) return WaypointPathRunnableBase_Access_Array_Access renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.Java_Unbox_WaypointPathRunnableBase_Access_Array;
   subtype WaypointPathRunnableBase_Access_Array_Access_Array is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   subtype WaypointPathRunnableBase_Access_Array_Access_Array_Access is org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.WaypointPathRunnableBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointPathRunnableBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References."=";
   function Java_Box (Value : WaypointPathRunnableBase_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.Java_Box;
   function Java_Unbox_WaypointPathRunnableBase_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointPathRunnableBase_Access_Array_Access_Array_Access renames org.allbinary.game.layer.WaypointPathRunnableBase_Package_References.Java_Unbox_WaypointPathRunnableBase_Access_Array_Access_Array;

   type WaypointPathRunnableBase is new Java_Object and RunnableInterface and PriorityRunnable with record
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
   procedure setThread (This : in out WaypointPathRunnableBase; thread_Param : access Thread_Package.Thread'Class);
   procedure setTargetLayer (This : in out WaypointPathRunnableBase; waypointLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure setPriority (This : in out WaypointPathRunnableBase);
   function getTargetLayer (This : in out WaypointPathRunnableBase) return PathFindingLayerInterface_Access;
   procedure setUnitLayer (This : in out WaypointPathRunnableBase; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   function getPriority (This : in out WaypointPathRunnableBase) return Integer;
   function isDone (This : in out WaypointPathRunnableBase) return Boolean;
   procedure run (This : in out WaypointPathRunnableBase);
   procedure reset (This : in out WaypointPathRunnableBase);

end org.allbinary.game.layer.WaypointPathRunnableBase_Package;


