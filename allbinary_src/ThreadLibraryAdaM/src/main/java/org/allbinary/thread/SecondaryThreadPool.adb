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


package body org.allbinary.thread.SecondaryThreadPool_Package is

   procedure Initialize_Fields (This : in out SecondaryThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return SecondaryThreadPool_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SecondaryThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
        ThreadPool_Package.Initialize (This, poolName, numThreads, priority);
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return SecondaryThreadPool_Access is
      This : constant SecondaryThreadPool_Access := new SecondaryThreadPool;
   begin
      SecondaryThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure runTask (This : in out SecondaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (StringUtil_Package.getInstance.toString (task_Id)).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, This'Unchecked_Access, This.threadPoolStrings.ADD_TASK);
        ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out SecondaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.START_TASK).append (StringUtil_Package.getInstance.toString (task_Id)).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, This'Unchecked_Access, This.commonStrings.RUN);
   end startTask;

   procedure completedTask (This : in out SecondaryThreadPool; task_Id : Runnable_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.COMPLETE_TASK).append (StringUtil_Package.getInstance.toString (task_Id)).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, This'Unchecked_Access, This.commonStrings.RUN);
   end completedTask;

begin
   null;
   instance := SecondaryThreadPool_Package.Create (To_Unbounded_String ("Secondary"), 1, ThreadPool_Package.NORMAL_PRIORITY);

end org.allbinary.thread.SecondaryThreadPool_Package;


