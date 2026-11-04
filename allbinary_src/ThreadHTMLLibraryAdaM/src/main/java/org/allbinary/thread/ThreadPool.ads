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

limited with org.allbinary.thread.ThreadPool_Package;
package org.allbinary.thread.ThreadPool_Package_References is
   type ThreadPool_Access is access all org.allbinary.thread.ThreadPool_Package.ThreadPool'Class;
   type ThreadPool_Access_Array is array (Natural range <>) of ThreadPool_Access;
   type ThreadPool_Access_Array_Access is access all ThreadPool_Access_Array;
   type ThreadPool_Access_Array_Access_Array is array (Natural range <>) of ThreadPool_Access_Array_Access;
   type ThreadPool_Access_Array_Access_Array_Access is access all ThreadPool_Access_Array_Access_Array;
end org.allbinary.thread.ThreadPool_Package_References;

with org.allbinary.thread.ThreadPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.thread.NullRunnable_Package_References;
limited with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.thread.ThreadPoolStrings_Package_References;
limited with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
limited with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.PriorityRunnable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ThreadPool_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype NullRunnable_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access;
   use type NullRunnable_Access;
   subtype NullRunnable_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array;
   use type NullRunnable_Access_Array;
   subtype NullRunnable_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access;
   use type NullRunnable_Access_Array_Access;
   subtype NullRunnable_Access_Array_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array;
   use type NullRunnable_Access_Array_Access_Array;
   subtype NullRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array_Access;
   use type NullRunnable_Access_Array_Access_Array_Access;
   subtype ThreadPoolStrings_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access;
   use type ThreadPoolStrings_Access;
   subtype ThreadPoolStrings_Access_Array is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array;
   use type ThreadPoolStrings_Access_Array;
   subtype ThreadPoolStrings_Access_Array_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access;
   use type ThreadPoolStrings_Access_Array_Access;
   subtype ThreadPoolStrings_Access_Array_Access_Array is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access_Array;
   use type ThreadPoolStrings_Access_Array_Access_Array;
   subtype ThreadPoolStrings_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access_Array_Access;
   use type ThreadPoolStrings_Access_Array_Access_Array_Access;
   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   use type ThreadObjectUtil_Access;
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   use type ThreadObjectUtil_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access;
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   use type ThreadObjectUtil_Access_Array_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access_Array_Access;
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


   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   function "=" (Left, Right : ThreadPool_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPool_Package_References."=";

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
   NORMAL_PRIORITY : constant Integer := 5;

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


