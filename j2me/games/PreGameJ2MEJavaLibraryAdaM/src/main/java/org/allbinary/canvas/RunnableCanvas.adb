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


package body org.allbinary.canvas.RunnableCanvas_Package is

   procedure Initialize_Fields (This : in out RunnableCanvas'Class) is
   begin
      null;
      This.nullUtil := NullUtil_Package.getInstance;
      This.stdUtil := StdUtil_Package.getInstance;
      This.systemWrapper := ABSystemWrapper_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.thread_Case := NullThread_Package.NULL_THREAD;
      This.currentThread := NullThread_Package.NULL_THREAD;
      This.running := False;
      This.loopTimeHelper := TimeDelayHelper_Package.Create (NullWaitGameRunnable_Package.getInstance.WAIT);
      This.runnableCanvasRefreshHelper := Processor_Package.getInstance;
      This.commonLabels := CommonLabels_Package.getInstance;
      This.threadObjectUtil := ThreadObjectUtil_Package.getInstance;
      This.SET_RUNNING := To_Unbounded_String ("setRunning");
      This.IS_RUNNING := To_Unbounded_String ("isRunning");
      This.THREAD := To_Unbounded_String ("Thread: ");
      This.NOT_EQUAL := To_Unbounded_String (" != ");
      This.PAUSE_SLEEP := To_Unbounded_String ("pause sleep");
      This.START_PAUSE := To_Unbounded_String ("start pause - game thread sleep at: ");
      This.END_PAUSE := To_Unbounded_String ("end pause - game thread sleep at: ");
      This.PROCESS_LOOP_SLEEP := To_Unbounded_String ("processLoopSleep");
      This.pauseWait := 0;
      This.notified := False;
   end Initialize_Fields;


   procedure Initialize (This : in out RunnableCanvas'Class; commandListener : CommandListener_Access; childNameList : BasicArrayList_Access; hasParam : Boolean) is
   begin
        MyCanvas_Package.Initialize (This, CommonStrings_Package.getInstance.UNKNOWN, childNameList);
        Initialize_Fields (This);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("RunnableCanvas delay: ")).appendint (Integer (This.loopTimeHelper.delay_Id)).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.runnableCanvasRefreshHelper := RunnableCanvasRefreshHelper_Package.Create (This'Unchecked_Access);
        if (commandListener) /= (null) then
            This.initCommands (commandListener);
        elsif hasParam then
            This.logUtil.putF (To_Unbounded_String ("commandListener was null"), This'Unchecked_Access, To_Unbounded_String ("initCommands"));
        end if;
   end Initialize;

   function Create (commandListener : CommandListener_Access; childNameList : BasicArrayList_Access; hasParam : Boolean) return RunnableCanvas_Access is
      This : constant RunnableCanvas_Access := new RunnableCanvas;
   begin
      RunnableCanvas_Package.Initialize (This.all, commandListener, childNameList, hasParam);
      return This;
   end Create;

   procedure initCommands (This : in out RunnableCanvas; cmdListener : CommandListener_Access) is
   begin
        This.logUtil.putF (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access, To_Unbounded_String ("initCommands"));
   end initCommands;

   function isMainCanvas (This : in out RunnableCanvas) return Boolean is
   begin
        if (This.getCustomCommandListener) /= (null) then
            return True;
        else
            return False;
        end if;
   end isMainCanvas;

   procedure setThread (This : in out RunnableCanvas; thread_Case : Thread_Access) is
   begin
        This.thread_Case := thread_Case;
   end setThread;

   procedure setRunning (This : in out RunnableCanvas; running : Boolean) is
   begin
        This.running := running;
        if not (This.running) then
            This.thread_Case := NullThread_Package.NULL_THREAD;
            begin  --  synchronized
                This.threadObjectUtil.notifyObject (This'Unchecked_Access);
            end;
        end if;
        This.logUtil.putF (StringMaker_Package.Create.append (This.IS_RUNNING).appendboolean (This.running).toString, This'Unchecked_Access, This.SET_RUNNING);
   end setRunning;

   function isRunning (This : in out RunnableCanvas) return Boolean is
      stringBuffer : StringMaker_Access;
   begin
        if (This.thread_Case) = (This.currentThread) then
            return This.running;
        else
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.THREAD);
            if (This.thread_Case) /= (null) then
                stringBuffer.append (This.thread_Case.toString);
            end if;
            stringBuffer.append (This.NOT_EQUAL);
            if (This.currentThread) /= (null) then
                stringBuffer.append (StringUtil_Package.getInstance.toString (This.currentThread));
            end if;
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.IS_RUNNING);
            return False;
        end if;
   end isRunning;

   function getLoopTimeHelperP (This : in out RunnableCanvas) return TimeDelayHelper_Access is
   begin
        return This.loopTimeHelper;
   end getLoopTimeHelperP;

   procedure setWait (This : in out RunnableCanvas; wait : Integer) is
   begin
        This.loopTimeHelper.delay_Id := wait;
        This.pauseWait := (Long_Long_Integer (wait)) * (3);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("setWait - delay: ")).appendint (Integer (This.loopTimeHelper.delay_Id)).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end setWait;

   function getWait (This : in out RunnableCanvas) return Integer is
   begin
        return This.loopTimeHelper.delay_Id;
   end getWait;

   procedure setCurrentThread (This : in out RunnableCanvas) is
   begin
        This.currentThread := Thread_Package.currentThread;
   end setCurrentThread;

   procedure setCurrentThreadFake (This : in out RunnableCanvas) is
   begin
        This.currentThread := This.thread_Case;
   end setCurrentThreadFake;

   procedure showNotify (This : in out RunnableCanvas) is
   begin
        begin
            This.stopWaiting;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("showNotify"), e);
                end;
        end;
   end showNotify;

   --  throws Exception
   procedure stopWaiting (This : in out RunnableCanvas) is
   begin
        This.notified := True;
        begin  --  synchronized
            This.threadObjectUtil.notifyObject (This'Unchecked_Access);
        end;
        This.repaint;
   end stopWaiting;

   --  throws Exception
   procedure waitOnNotify (This : in out RunnableCanvas; wait : Long_Long_Integer) is
   begin
        if not (This.notified) then
            if (wait) > (0) then
                This.threadObjectUtil.waitObjectFor (This'Unchecked_Access, wait);
            else
                This.threadObjectUtil.waitObject (This'Unchecked_Access);
            end if;
        end if;
   end waitOnNotify;

   --  throws Exception
   procedure processSleep (This : in out RunnableCanvas) is
   begin
        Java_Sleep (This.pauseWait);
   end processSleep;

   function isPausable (This : in out RunnableCanvas) return Boolean is
   begin
        return False;
   end isPausable;

   --  throws Exception
   procedure processGameSleep (This : in out RunnableCanvas; sleep : Long_Long_Integer) is
   begin
        Java_Sleep (sleep);
   end processGameSleep;

   --  throws Exception
   procedure processLoopSleep (This : in out RunnableCanvas) is
      stringMaker : StringMaker_Access;
      currentTimeMillis : Long_Long_Integer;
      elapsedTime : Long_Long_Integer;
      wait : Long_Long_Integer;
   begin
        This.runnableCanvasRefreshHelper.process;
        if This.isPaused then
            stringMaker := StringMaker_Package.Create;
            if (This.isRunning) and then (not (This.isSingleThread)) then
                stringMaker.delete (0, stringMaker.length);
                currentTimeMillis := This.systemWrapper.currentTimeMillis;
                This.logUtil.putF (stringMaker.append (This.START_PAUSE).appendlong (currentTimeMillis).append (This.PAUSE_SLEEP).appendlong (This.pauseWait).toString, This'Unchecked_Access, This.PROCESS_LOOP_SLEEP);
                while ((This.isPaused) and then (This.isRunning)) and then (not (This.isSingleThread)) loop
                    This.processSleep;
                    if not (This.isPausable) then
                        stringMaker.delete (0, stringMaker.length);
                        This.logUtil.putF (stringMaker.append (This.END_PAUSE).appendlong (currentTimeMillis).toString, This'Unchecked_Access, This.PROCESS_LOOP_SLEEP);
                        return;
                    end if;
                end loop;
            end if;
        end if;
        elapsedTime := This.loopTimeHelper.getElapsedTNT;
        wait := Long_Long_Integer (This.loopTimeHelper.delay_Id);
        if (elapsedTime) > (wait) then
            elapsedTime := wait;
        else
            This.processGameSleep ((wait) - (elapsedTime));
        end if;
   end processLoopSleep;

   function isSingleThread (This : in out RunnableCanvas) return Boolean is
   begin
        return False;
   end isSingleThread;

   procedure run (This : in out RunnableCanvas) is
   begin
        This.setCurrentThread;
   end run;

   --  throws Exception
   procedure end2 (This : in out RunnableCanvas) is
   begin
        null;
   end end2;

   function getType (This : in out RunnableCanvas) return Integer is
   begin
        return -(1);
   end getType;

end org.allbinary.canvas.RunnableCanvas_Package;


