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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package body org.allbinary.thread.PooledThread_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
            task2 := This.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            begin
                task2 := This.threadPool.getTask;
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
            if (task2) = (This.threadObjectUtil.NULL_PRIORITY_RUNNABLE) then
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
                logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (StringUtil_Package.getInstance.toString (task2)).toString, PooledThread_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                    end;
            end;
        end loop;
        This.threadPool.threadStopped;
   end run;

end org.allbinary.thread.PooledThread_Package;


