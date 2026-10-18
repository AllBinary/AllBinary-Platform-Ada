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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.thread.ThreadPool_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
      This.currentPriorityRunnable := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
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
            runnable := ThreadPool'Class (This).getTask;
            if (runnable) = (This.NULL_RUNNABLE) then
                return;
            end if;
            This.currentPriorityRunnable := PriorityRunnable_Access (runnable);
            if not (((This.currentPriorityRunnable) = (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE))) then
                This.currentPriorityRunnable.reset;
                This.currentPriorityRunnable.run;
            end if;
        end if;
   end runAPriorityTask;

   --  throws Exception
   procedure runATask (This : in out ThreadPool) is
      runnable : Runnable_Access;
   begin
        runnable := ThreadPool'Class (This).getTask;
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
        if (task_Id) /= (null) then
            size := This.taskQueue.size;
            runnable := null;
            lowerPriorityRunnable := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            for index in 0 .. (size) - 1 loop
                runnable := PriorityRunnable_Access (This.taskQueue.get (index));
                if (runnable.getPriority) > (task_Id.getPriority) then
                    lowerPriorityRunnable := runnable;
                    exit;
                end if;
            end loop;
            if (lowerPriorityRunnable) = (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE) then
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
            This.taskQueue.add (Java_Object_Access (task_Id));
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
            This.currentPriorityRunnable := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
        end if;
   end close;

   procedure join (This : in out ThreadPool) is
   begin
        This.isAlive := False;
        This.taskQueue.clear;
        This.currentPriorityRunnable := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
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
            This.currentPriorityRunnable := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
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
   NORMAL_PRIORITY := 5;

end org.allbinary.thread.ThreadPool_Package;


