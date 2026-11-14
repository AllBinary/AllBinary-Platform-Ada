--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.thread.PathFindingThreadPool_Package;
package org.allbinary.thread.PathFindingThreadPool_Package_References is
   type PathFindingThreadPool_Access is access all org.allbinary.thread.PathFindingThreadPool_Package.PathFindingThreadPool'Class;
   type PathFindingThreadPool_Access_Array is array (Natural range <>) of PathFindingThreadPool_Access;
   type PathFindingThreadPool_Access_Array_Access is access all PathFindingThreadPool_Access_Array;
   type PathFindingThreadPool_Access_Array_Access_Array is array (Natural range <>) of PathFindingThreadPool_Access_Array_Access;
   type PathFindingThreadPool_Access_Array_Access_Array_Access is access all PathFindingThreadPool_Access_Array_Access_Array;
   type PathFindingThreadPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingThreadPool_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingThreadPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingThreadPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingThreadPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingThreadPool_Access_Array_Access is (if Value /= null and then Value.all in PathFindingThreadPool_Access_Array_Object'Class then PathFindingThreadPool_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingThreadPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingThreadPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingThreadPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingThreadPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingThreadPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingThreadPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingThreadPool_Access_Array_Access_Array_Object'Class then PathFindingThreadPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.PathFindingThreadPool_Package_References;

with org.allbinary.thread.PathFindingThreadPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
limited with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.PriorityRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.PathFindingThreadPool_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype PriorityRunnable_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access;
   use type PriorityRunnable_Access;
   subtype PriorityRunnable_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array;
   use type PriorityRunnable_Access_Array;
   subtype PriorityRunnable_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access;
   use type PriorityRunnable_Access_Array_Access;
   subtype PriorityRunnable_Access_Array_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array;
   use type PriorityRunnable_Access_Array_Access_Array;
   subtype PriorityRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array_Access;
   use type PriorityRunnable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingThreadPool_Access is org.allbinary.thread.PathFindingThreadPool_Package_References.PathFindingThreadPool_Access;
   function "=" (Left, Right : PathFindingThreadPool_Access) return Boolean renames org.allbinary.thread.PathFindingThreadPool_Package_References."=";
   subtype PathFindingThreadPool_Access_Array is org.allbinary.thread.PathFindingThreadPool_Package_References.PathFindingThreadPool_Access_Array;
   function "=" (Left, Right : PathFindingThreadPool_Access_Array) return Boolean renames org.allbinary.thread.PathFindingThreadPool_Package_References."=";
   subtype PathFindingThreadPool_Access_Array_Access is org.allbinary.thread.PathFindingThreadPool_Package_References.PathFindingThreadPool_Access_Array_Access;
   function "=" (Left, Right : PathFindingThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.PathFindingThreadPool_Package_References."=";
   function Java_Box (Value : PathFindingThreadPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PathFindingThreadPool_Package_References.Java_Box;
   function Java_Unbox_PathFindingThreadPool_Access_Array (Value : access Java_Object'Class) return PathFindingThreadPool_Access_Array_Access renames org.allbinary.thread.PathFindingThreadPool_Package_References.Java_Unbox_PathFindingThreadPool_Access_Array;
   subtype PathFindingThreadPool_Access_Array_Access_Array is org.allbinary.thread.PathFindingThreadPool_Package_References.PathFindingThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.PathFindingThreadPool_Package_References."=";
   subtype PathFindingThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.PathFindingThreadPool_Package_References.PathFindingThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.PathFindingThreadPool_Package_References."=";
   function Java_Box (Value : PathFindingThreadPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.PathFindingThreadPool_Package_References.Java_Box;
   function Java_Unbox_PathFindingThreadPool_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingThreadPool_Access_Array_Access_Array_Access renames org.allbinary.thread.PathFindingThreadPool_Package_References.Java_Unbox_PathFindingThreadPool_Access_Array_Access_Array;

   type PathFindingThreadPool is new ThreadPool with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out PathFindingThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return PathFindingThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTaskWithPriority (This : in out PathFindingThreadPool; task_Id_Param : access PriorityRunnable_Package.PriorityRunnable'Class);
   procedure runTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.PathFindingThreadPool_Package;


