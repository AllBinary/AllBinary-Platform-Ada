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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.thread.SecondaryThreadPool_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out SecondaryThreadPool'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ThreadPool_Access is
   begin
        return ThreadPool_Access (SecondaryThreadPool_Package.instance);
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

   procedure runTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, SecondaryThreadPool_Access'(This'Unchecked_Access), This.threadPoolStrings.ADD_TASK);
        ThreadPool_Package.ThreadPool (This).runTask (task_Id);
   end runTask;

   procedure startTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.START_TASK).append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, SecondaryThreadPool_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end startTask;

   procedure completedTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class) is
      task_Id : constant Runnable_Access := Runnable_Access (task_Id_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.threadPoolStrings.COMPLETE_TASK).append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (task_Id))).appendlong (Long_Long_Integer (Java_Current_Time_Millis)).toString, SecondaryThreadPool_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end completedTask;

begin
   null;
   instance := ThreadPool_Access (SecondaryThreadPool_Package.Create (To_Unbounded_String ("Secondary"), 1, ThreadPool_Package.NORMAL_PRIORITY));

end org.allbinary.thread.SecondaryThreadPool_Package;


