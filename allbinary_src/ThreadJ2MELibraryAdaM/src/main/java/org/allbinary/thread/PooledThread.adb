-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.thread.ARunnable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.thread.PooledThread_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   procedure Initialize_Fields (This : in out PooledThread'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.threadObjectUtil := ThreadObjectUtil_Package.getInstance;
      
      This.INTERRUPT_EXCEPTION := To_Unbounded_String ("Exit InterruptedException");
   end Initialize_Fields;


   procedure Initialize (This : in out PooledThread'Class; threadPool_Param : access ThreadPool_Package.ThreadPool'Class) is
      threadPool : constant ThreadPool_Access := ThreadPool_Access (threadPool_Param);
   begin
        Thread_Package.Initialize (This, threadPool.createName);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.CONSTRUCTOR, PooledThread_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.threadPool := threadPool;
   end Initialize;

   function Create (threadPool_Param : access ThreadPool_Package.ThreadPool'Class) return PooledThread_Access is
      This : constant PooledThread_Access := new PooledThread;
   begin
      PooledThread_Package.Initialize (This.all, threadPool_Param);
      return This;
   end Create;

   procedure run (This : in out PooledThread) is
      task2 : Runnable_Access;
      logUtil : LogUtil_Access;
   begin
        This.threadPool.threadStarted;
        while True loop
            task2 := Runnable_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE);
            begin
                task2 := Runnable_Access (This.threadPool.getTask);
                This.threadPool.runningTask := True;
                This.threadPool.startTask (task2);
            exception
                when Java_Occurrence : others =>
                    declare
                        ex : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil := LogUtil_Package.getInstance;
                logUtil.putF (This.INTERRUPT_EXCEPTION, PooledThread_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                exit;
                    end;
            end;
            if (Java_Object_Access (task2)) = (Java_Object_Access (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE)) then
                exit;
            end if;
            begin
                task2.run;
                This.threadPool.completedTask (task2);
                This.threadPool.runningTask := False;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil := LogUtil_Package.getInstance;
                logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (StringUtil_Package.getInstance.toString (Runnable_Package.Java_Object_Access_From_Runnable (task2))).toString, PooledThread_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                    end;
            end;
        end loop;
        This.threadPool.threadStopped;
   end run;

end org.allbinary.thread.PooledThread_Package;


