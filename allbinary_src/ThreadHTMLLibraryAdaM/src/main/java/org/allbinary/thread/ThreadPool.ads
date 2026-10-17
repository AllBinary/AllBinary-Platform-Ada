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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.thread.ThreadPoolStrings_Package; use org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package org.allbinary.thread.ThreadPool_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type ThreadPool is tagged;
   type ThreadPool_Access is access all ThreadPool'Class;
   type ThreadPool_Access_Array is array (Natural range <>) of ThreadPool_Access;
   type ThreadPool_Access_Array_Access is access all ThreadPool_Access_Array;

   type ThreadPool is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      NULL_RUNNABLE : NullRunnable_Access;
      threadPoolStrings : ThreadPoolStrings_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
      isAlive : Boolean;
      taskQueue : BasicArrayList_Access;
      numThreads : Integer;
      runningTask : Boolean;
      currentPriorityRunnable : PriorityRunnable_Access;
   end record;
   NORMAL_PRIORITY : Integer;

   procedure Initialize (This : in out ThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ThreadPool_Access;
   procedure runAPriorityTask (This : in out ThreadPool);
   procedure runATask (This : in out ThreadPool);
   procedure init (This : in out ThreadPool);
   procedure runTaskWithPriority (This : in out ThreadPool; task_Id_Param : access PriorityRunnable_Package.PriorityRunnable'Class);
   procedure runTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   function getTask (This : in out ThreadPool) return Runnable_Access;
   procedure clear (This : in out ThreadPool);
   procedure close (This : in out ThreadPool);
   procedure join (This : in out ThreadPool);
   function isBusy (This : in out ThreadPool) return Boolean;
   procedure threadStarted (This : in out ThreadPool);
   procedure threadStopped (This : in out ThreadPool);
   procedure startTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.ThreadPool_Package;


