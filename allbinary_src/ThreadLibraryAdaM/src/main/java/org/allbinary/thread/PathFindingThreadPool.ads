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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package org.allbinary.thread.PathFindingThreadPool_Package is


   type PathFindingThreadPool is tagged;
   type PathFindingThreadPool_Access is access all PathFindingThreadPool'Class;
   type PathFindingThreadPool_Access_Array is array (Natural range <>) of PathFindingThreadPool_Access;
   type PathFindingThreadPool_Access_Array_Access is access all PathFindingThreadPool_Access_Array;

   type PathFindingThreadPool is new ThreadPool with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out PathFindingThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return PathFindingThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTaskWithPriority (This : in out PathFindingThreadPool; task_Id : PriorityRunnable_Access);
   procedure runTask (This : in out PathFindingThreadPool; task_Id : Runnable_Access);
   procedure startTask (This : in out PathFindingThreadPool; task_Id : Runnable_Access);
   procedure completedTask (This : in out PathFindingThreadPool; task_Id : Runnable_Access);

end org.allbinary.thread.PathFindingThreadPool_Package;


