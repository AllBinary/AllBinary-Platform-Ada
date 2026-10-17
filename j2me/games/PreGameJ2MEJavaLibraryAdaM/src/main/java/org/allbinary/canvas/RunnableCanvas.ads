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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package; use org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.NullThread_Package; use org.allbinary.thread.NullThread_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.RunnableCanvasRefreshHelper_Package; use org.allbinary.canvas.RunnableCanvasRefreshHelper_Package;

package org.allbinary.canvas.RunnableCanvas_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullWaitGameRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package NullThread_Package renames Standard.org.allbinary.thread.NullThread_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type RunnableCanvas is tagged;
   type RunnableCanvas_Access is access all RunnableCanvas'Class;
   type RunnableCanvas_Access_Array is array (Natural range <>) of RunnableCanvas_Access;
   type RunnableCanvas_Access_Array_Access is access all RunnableCanvas_Access_Array;

   type RunnableCanvas is new MyCanvas and RunnableInterface with record
      nullUtil : NullUtil_Access;
      stdUtil : StdUtil_Access;
      systemWrapper : ABSystemWrapper_Access;
      tsUtil : TsUtil_Access;
      thread_Case : Thread_Access;
      currentThread : Thread_Access;
      running : Boolean;
      loopTimeHelper : TimeDelayHelper_Access;
      runnableCanvasRefreshHelper : Processor_Access;
      commonLabels : CommonLabels_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
      SET_RUNNING : Unbounded_String;
      IS_RUNNING : Unbounded_String;
      THREAD : Unbounded_String;
      NOT_EQUAL : Unbounded_String;
      PAUSE_SLEEP : Unbounded_String;
      START_PAUSE : Unbounded_String;
      END_PAUSE : Unbounded_String;
      PROCESS_LOOP_SLEEP : Unbounded_String;
      pauseWait : Long_Long_Integer;
      notified : Boolean;
   end record;

   procedure Initialize (This : in out RunnableCanvas'Class; commandListener_Param : access CommandListener'Class; childNameList_Param : access BasicArrayList'Class; hasParam : Boolean);
   function Create (commandListener_Param : access CommandListener'Class; childNameList_Param : access BasicArrayList'Class; hasParam : Boolean) return RunnableCanvas_Access;
   procedure initCommands (This : in out RunnableCanvas; cmdListener_Param : access CommandListener'Class);
   function isMainCanvas (This : in out RunnableCanvas) return Boolean;
   procedure setThread (This : in out RunnableCanvas; thread_Case_Param : access Thread'Class);
   procedure setRunning (This : in out RunnableCanvas; running : Boolean);
   function isRunning (This : in out RunnableCanvas) return Boolean;
   function getLoopTimeHelperP (This : in out RunnableCanvas) return TimeDelayHelper_Access;
   procedure setWait (This : in out RunnableCanvas; wait : Integer);
   function getWait (This : in out RunnableCanvas) return Integer;
   procedure setCurrentThread (This : in out RunnableCanvas);
   procedure setCurrentThreadFake (This : in out RunnableCanvas);
   procedure showNotify (This : in out RunnableCanvas);
   procedure stopWaiting (This : in out RunnableCanvas);
   procedure waitOnNotify (This : in out RunnableCanvas; wait : Long_Long_Integer);
   procedure processSleep (This : in out RunnableCanvas);
   function isPausable (This : in out RunnableCanvas) return Boolean;
   procedure processGameSleep (This : in out RunnableCanvas; sleep : Long_Long_Integer);
   procedure processLoopSleep (This : in out RunnableCanvas);
   function isSingleThread (This : in out RunnableCanvas) return Boolean;
   procedure run (This : in out RunnableCanvas);
   procedure end2 (This : in out RunnableCanvas);
   function getType (This : in out RunnableCanvas) return Integer;

end org.allbinary.canvas.RunnableCanvas_Package;


