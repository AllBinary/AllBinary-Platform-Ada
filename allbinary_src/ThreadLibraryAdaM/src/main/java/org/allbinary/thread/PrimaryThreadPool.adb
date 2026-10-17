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


package body org.allbinary.thread.PrimaryThreadPool_Package is

   procedure Initialize_Fields (This : in out PrimaryThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return PrimaryThreadPool_Package.THREAD_POOL;
   end getInstance;

   procedure Initialize (This : in out PrimaryThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
        ThreadPool_Package.Initialize (This, poolName, numThreads, priority);
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return PrimaryThreadPool_Access is
      This : constant PrimaryThreadPool_Access := new PrimaryThreadPool;
   begin
      Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure runTask (This : in out PrimaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (StringUtil_Package.getInstance.toString (task_Id)).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, This'Unchecked_Access, This.threadPoolStrings.ADD_TASK);
        ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out PrimaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.START_TASK).append (StringUtil_Package.getInstance.toString (task_Id)).toString, This'Unchecked_Access, This.commonStrings.RUN);
   end startTask;

   procedure completedTask (This : in out PrimaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.COMPLETE_TASK).append (StringUtil_Package.getInstance.toString (task_Id)).toString, This'Unchecked_Access, This.commonStrings.RUN);
   end completedTask;

   procedure getInstance is
      Java_Result : constant ThreadPool_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   THREAD_POOL := ThreadPool_Package.Create (To_Unbounded_String ("Primary"), 1, ThreadPool_Package.NORMAL_PRIORITY);

end org.allbinary.thread.PrimaryThreadPool_Package;


