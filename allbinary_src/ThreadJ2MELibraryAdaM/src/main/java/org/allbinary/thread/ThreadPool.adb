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


package body org.allbinary.thread.ThreadPool_Package is

   procedure Initialize_Fields (This : in out ThreadPool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.NULL_RUNNABLE := NullRunnable_Package.getInstance;
      This.threadPoolStrings := ThreadPoolStrings_Package.getInstance;
      This.threadObjectUtil := ThreadObjectUtil_Package.getInstance;
      
      
      This.isAlive := False;
      This.taskQueue := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.threadID := 0;
      
      This.runningTask := False;
   end Initialize_Fields;


   procedure Initialize (This : in out ThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
      Initialize_Fields (This);
        This.poolName := poolName;
        This.priority := priority;
        This.numThreads := numThreads;
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return ThreadPool_Access is
      This : constant ThreadPool_Access := new ThreadPool;
   begin
      ThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure init (This : in out ThreadPool) is
      pooledThread : PooledThread_Access;
      i : Integer;
   begin
        if not (This.isAlive) then
            This.isAlive := True;
            This.taskQueue := BasicArrayListD_Package.Create;
            pooledThread := null;
            for i in 0 .. (This.numThreads) - 1 loop
                pooledThread := PooledThread_Package.Create (ThreadPool_Access'(This'Unchecked_Access));
                pooledThread.setPriority (This.priority);
                pooledThread.start;
            end loop;
        end if;
   end init;

   --  throws Exception
   procedure runAPriorityTask (This : in out ThreadPool) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end runAPriorityTask;

   procedure runTaskWithPriority (This : in out ThreadPool; task_Id_Param : access PriorityRunnable'Class) is
      task_Id : PriorityRunnable_Access := PriorityRunnable_Access (task_Id_Param);
      size : Integer;
      runnable : PriorityRunnable_Access;
      lowerPriorityRunnable : PriorityRunnable_Access;
      index : Integer;
   begin
        begin  --  synchronized
            if not (This.isAlive) then
                This.init;
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
                    This.taskQueue.add (task_Id);
                else
                    index := This.taskQueue.indexOf (lowerPriorityRunnable);
                    This.taskQueue.addAt (index, task_Id);
                end if;
                This.notify;
            end if;
        end;
   end runTaskWithPriority;

   procedure runTask (This : in out ThreadPool; task_Id_Param : access Runnable'Class) is
      task_Id : Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        begin  --  synchronized
            if not (This.isAlive) then
                This.init;
            end if;
            if (task_Id) /= (null) then
                This.taskQueue.add (task_Id);
                This.notify;
            end if;
        end;
   end runTask;

   --  throws InterruptedException
   function getTask (This : in out ThreadPool) return Runnable_Access is
      runnable : Runnable_Access;
   begin
        begin  --  synchronized
            while (This.taskQueue.size) = (0) loop
                if not (This.isAlive) then
                    return This.NULL_RUNNABLE;
                end if;
                This.wait;
            end loop;
            runnable := Runnable_Access (This.taskQueue.removeAt (0));
            return runnable;
        end;
   end getTask;

   procedure clear (This : in out ThreadPool) is
   begin
        begin  --  synchronized
            if This.isAlive then
                This.taskQueue.clear;
            end if;
        end;
   end clear;

   procedure close (This : in out ThreadPool) is
   begin
        begin  --  synchronized
            if This.isAlive then
                This.isAlive := False;
                This.taskQueue.clear;
            end if;
        end;
   end close;

   procedure join (This : in out ThreadPool) is
   begin
        begin  --  synchronized
            This.isAlive := False;
            This.taskQueue.clear;
            This.notifyAll;
        end;
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
        end if;
   end threadStopped;

   procedure startTask (This : in out ThreadPool; task_Id_Param : access Runnable'Class) is
      task_Id : Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end startTask;

   procedure completedTask (This : in out ThreadPool; task_Id_Param : access Runnable'Class) is
      task_Id : Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        null;
   end completedTask;

   function createName (This : in out ThreadPool) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (This.poolName).append (ThreadPool_Package.ROOT_NAME).appendint (Java_Post_Increment (This.threadID)).toString;
   end createName;

begin
   null;
   ROOT_NAME := To_Unbounded_String ("-PooledThread-");
   NORMAL_PRIORITY := Thread_Package.NORM_PRIORITY;

end org.allbinary.thread.ThreadPool_Package;


