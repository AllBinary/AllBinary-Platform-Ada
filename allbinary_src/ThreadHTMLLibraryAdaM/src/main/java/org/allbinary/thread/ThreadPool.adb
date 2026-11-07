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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with org.allbinary.thread.NullRunnable_Package_References;
with org.allbinary.thread.ThreadPoolStrings_Package; use org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.thread.ThreadPoolStrings_Package_References;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.PriorityRunnable_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package_References;

package body org.allbinary.thread.ThreadPool_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype NullRunnable_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access;
   function "=" (Left, Right : NullRunnable_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array;
   function "=" (Left, Right : NullRunnable_Access_Array) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access;
   function "=" (Left, Right : NullRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array_Access_Array is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : NullRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype NullRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.NullRunnable_Package_References.NullRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.NullRunnable_Package_References."=";
   subtype ThreadPoolStrings_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access;
   function "=" (Left, Right : ThreadPoolStrings_Access) return Boolean renames org.allbinary.thread.ThreadPoolStrings_Package_References."=";
   subtype ThreadPoolStrings_Access_Array is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array;
   function "=" (Left, Right : ThreadPoolStrings_Access_Array) return Boolean renames org.allbinary.thread.ThreadPoolStrings_Package_References."=";
   subtype ThreadPoolStrings_Access_Array_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access;
   function "=" (Left, Right : ThreadPoolStrings_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPoolStrings_Package_References."=";
   subtype ThreadPoolStrings_Access_Array_Access_Array is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadPoolStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadPoolStrings_Package_References."=";
   subtype ThreadPoolStrings_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPoolStrings_Package_References.ThreadPoolStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadPoolStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadPoolStrings_Package_References."=";
   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadObjectUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadObjectUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out ThreadPool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.NULL_RUNNABLE := NullRunnable_Package.getInstance;
      This.threadPoolStrings := ThreadPoolStrings_Package.getInstance;
      This.threadObjectUtil := ThreadObjectUtil_Package.getInstance;
      This.isAlive := False;
      This.taskQueue := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.numThreads := 0;
      This.runningTask := False;
      This.currentPriorityRunnable := PriorityRunnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
   end Initialize_Fields;


   procedure Initialize (This : in out ThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ThreadPool_Access is
      This : constant ThreadPool_Access := new ThreadPool;
   begin
      ThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   --  throws Exception
   procedure runAPriorityTask (This : in out ThreadPool) is
      runnable : Runnable_Access;
   begin
        if not (This.currentPriorityRunnable.isDone) then
            This.currentPriorityRunnable.run;
        else
            runnable := Runnable_Access (ThreadPool'Class (This).getTask);
            if (Java_Object_Access (runnable)) = (Java_Object_Access (This.NULL_RUNNABLE)) then
                return;
            end if;
            This.currentPriorityRunnable := PriorityRunnable_Access (runnable);
            if not ((org.allbinary.thread.PriorityRunnable_Package_References."=" (This.currentPriorityRunnable, This.threadObjectUtil.NULL_PRIORITY_RUNNABLE))) then
                This.currentPriorityRunnable.reset;
                This.currentPriorityRunnable.run;
            end if;
        end if;
   end runAPriorityTask;

   --  throws Exception
   procedure runATask (This : in out ThreadPool) is
      runnable : Runnable_Access;
   begin
        runnable := Runnable_Access (ThreadPool'Class (This).getTask);
        if (runnable) /= (null) then
            runnable.run;
        end if;
   end runATask;

   procedure init (This : in out ThreadPool) is
   begin
        if not (This.isAlive) then
            This.isAlive := True;
            This.taskQueue := BasicArrayList_Access (BasicArrayListD_Package.Create);
        end if;
   end init;

   procedure runTaskWithPriority (This : in out ThreadPool; task_Id_Param : access PriorityRunnable_Package.PriorityRunnable'Class) is
      task_Id : constant PriorityRunnable_Access := PriorityRunnable_Access (task_Id_Param);
      size : Integer;
      runnable : PriorityRunnable_Access;
      lowerPriorityRunnable : PriorityRunnable_Access;
      index : Integer;
   begin
        if not (This.isAlive) then
            ThreadPool'Class (This).init;
        end if;
        if (not org.allbinary.thread.PriorityRunnable_Package_References."=" (task_Id, null)) then
            size := This.taskQueue.size;
            runnable := null;
            lowerPriorityRunnable := PriorityRunnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
            for index in 0 .. (size) - 1 loop
                runnable := PriorityRunnable_Access (This.taskQueue.get (index));
                if (runnable.getPriority) > (task_Id.getPriority) then
                    lowerPriorityRunnable := runnable;
                    exit;
                end if;
            end loop;
            if org.allbinary.thread.PriorityRunnable_Package_References."=" (lowerPriorityRunnable, This.threadObjectUtil.NULL_PRIORITY_RUNNABLE) then
                This.taskQueue.add (Java_Object_Access (task_Id));
            else
                index := This.taskQueue.indexOf (Java_Object_Access (lowerPriorityRunnable));
                This.taskQueue.addAt (index, Java_Object_Access (task_Id));
            end if;
        end if;
   end runTaskWithPriority;

   procedure runTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        if not (This.isAlive) then
            ThreadPool'Class (This).init;
        end if;
        if (task_Id) /= (null) then
            This.taskQueue.add (Runnable_Package.Java_Object_Access_From_Runnable (task_Id));
        end if;
   end runTask;

   --  throws InterruptedException
   function getTask (This : in out ThreadPool) return Runnable_Access is
   begin
        if This.taskQueue.isEmpty then
            return Runnable_Access (This.NULL_RUNNABLE);
        end if;
        return Runnable_Access (This.taskQueue.removeAt (0));
   end getTask;

   procedure clear (This : in out ThreadPool) is
   begin
        This.taskQueue.clear;
   end clear;

   procedure close (This : in out ThreadPool) is
   begin
        if This.isAlive then
            This.isAlive := False;
            This.taskQueue.clear;
            This.currentPriorityRunnable := PriorityRunnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
        end if;
   end close;

   procedure join (This : in out ThreadPool) is
   begin
        This.isAlive := False;
        This.taskQueue.clear;
        This.currentPriorityRunnable := PriorityRunnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
   end join;

   function isBusy (This : in out ThreadPool) return Boolean is
   begin
        if not (This.isAlive) then
            return False;
        end if;
        if (This.taskQueue.size) > (0) then
            return True;
        end if;
        if This.runningTask then
            return True;
        end if;
        return False;
   end isBusy;

   procedure threadStarted (This : in out ThreadPool) is
   begin
        null;
   end threadStarted;

   procedure threadStopped (This : in out ThreadPool) is
   begin
        if (This.numThreads) = (1) then
            This.isAlive := False;
            This.taskQueue.clear;
            This.currentPriorityRunnable := PriorityRunnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
        end if;
   end threadStopped;

   procedure startTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end startTask;

   procedure completedTask (This : in out ThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end completedTask;

begin
   null;
   

end org.allbinary.thread.ThreadPool_Package;


