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


with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package body org.allbinary.thread.PathFindingThreadPool_Package is

   subtype PriorityRunnable_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access;
   function "=" (Left, Right : PriorityRunnable_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array;
   function "=" (Left, Right : PriorityRunnable_Access_Array) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array_Access_Array is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   subtype PriorityRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.PriorityRunnable_Package_References.PriorityRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PriorityRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.PriorityRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out PathFindingThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return ThreadPool_Access (PathFindingThreadPool_Package.instance);
   end getInstance;

   procedure Initialize (This : in out PathFindingThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
        ThreadPool_Package.Initialize (This, poolName, numThreads, ThreadPool_Package.NORMAL_PRIORITY);
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return PathFindingThreadPool_Access is
      This : constant PathFindingThreadPool_Access := new PathFindingThreadPool;
   begin
      PathFindingThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure runTaskWithPriority (This : in out PathFindingThreadPool; task_Id_Param : access PriorityRunnable_Package.PriorityRunnable'Class) is
      task_Id : constant PriorityRunnable_Access := PriorityRunnable_Access (task_Id_Param);
   begin
        ThreadPool (This).runTaskWithPriority (task_Id);
   end runTaskWithPriority;

   procedure runTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end startTask;

   procedure completedTask (This : in out PathFindingThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end completedTask;

begin
   null;
   instance := ThreadPool_Access (PathFindingThreadPool_Package.Create (To_Unbounded_String ("PathFinding"), 1, 1));

end org.allbinary.thread.PathFindingThreadPool_Package;


