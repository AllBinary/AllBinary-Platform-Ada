-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.thread.MusicThreadPool_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out MusicThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return MusicThreadPool_Package.THREAD_POOL;
   end getInstance;

   procedure Initialize (This : in out MusicThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer) is
   begin
        ThreadPool_Package.Initialize (This, poolName, numThreads, priority);
   end Initialize;

   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return MusicThreadPool_Access is
      This : constant MusicThreadPool_Access := new MusicThreadPool;
   begin
      MusicThreadPool_Package.Initialize (This.all, poolName, numThreads, priority);
      return This;
   end Create;

   procedure runTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (StringUtil_Package.getInstance.toString (Java_Object_Access (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, MusicThreadPool_Access'(This'Unchecked_Access), This.threadPoolStrings.ADD_TASK);
        ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.START_TASK).append (StringUtil_Package.getInstance.toString (Java_Object_Access (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, MusicThreadPool_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end startTask;

   procedure completedTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.COMPLETE_TASK).append (StringUtil_Package.getInstance.toString (Java_Object_Access (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, MusicThreadPool_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end completedTask;

begin
   null;
   THREAD_POOL := ThreadPool_Package.Create (To_Unbounded_String ("Music"), 2, ThreadPool_Package.NORMAL_PRIORITY);

end org.allbinary.thread.MusicThreadPool_Package;


