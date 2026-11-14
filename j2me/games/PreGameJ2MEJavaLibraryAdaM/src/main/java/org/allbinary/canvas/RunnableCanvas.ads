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

with AllBinary_Java;
limited with org.allbinary.canvas.RunnableCanvas_Package;
package org.allbinary.canvas.RunnableCanvas_Package_References is
   type RunnableCanvas_Access is access all org.allbinary.canvas.RunnableCanvas_Package.RunnableCanvas'Class;
   type RunnableCanvas_Access_Array is array (Natural range <>) of RunnableCanvas_Access;
   type RunnableCanvas_Access_Array_Access is access all RunnableCanvas_Access_Array;
   type RunnableCanvas_Access_Array_Access_Array is array (Natural range <>) of RunnableCanvas_Access_Array_Access;
   type RunnableCanvas_Access_Array_Access_Array_Access is access all RunnableCanvas_Access_Array_Access_Array;
   type RunnableCanvas_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunnableCanvas_Access_Array_Access;
   end record;
   function Java_Box (Value : RunnableCanvas_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunnableCanvas_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunnableCanvas_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunnableCanvas_Access_Array_Access is (if Value /= null and then Value.all in RunnableCanvas_Access_Array_Object'Class then RunnableCanvas_Access_Array_Object'Class (Value.all).Value else null);
   type RunnableCanvas_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RunnableCanvas_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RunnableCanvas_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RunnableCanvas_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RunnableCanvas_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RunnableCanvas_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RunnableCanvas_Access_Array_Access_Array_Object'Class then RunnableCanvas_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.canvas.RunnableCanvas_Package_References;

with org.allbinary.canvas.RunnableCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
limited with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.ABSystemWrapper_Package_References;
limited with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
limited with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.StdUtil_Package_References;
limited with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
limited with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;

package org.allbinary.canvas.RunnableCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   use type TsUtil_Access;
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   use type TsUtil_Access_Array;
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   use type TsUtil_Access_Array_Access;
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   use type TsUtil_Access_Array_Access_Array;
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   use type TsUtil_Access_Array_Access_Array_Access;
   subtype ABSystemWrapper_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access;
   use type ABSystemWrapper_Access;
   subtype ABSystemWrapper_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array;
   use type ABSystemWrapper_Access_Array;
   subtype ABSystemWrapper_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access;
   use type ABSystemWrapper_Access_Array_Access;
   subtype ABSystemWrapper_Access_Array_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array;
   use type ABSystemWrapper_Access_Array_Access_Array;
   subtype ABSystemWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array_Access;
   use type ABSystemWrapper_Access_Array_Access_Array_Access;
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   use type NullUtil_Access;
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   use type NullUtil_Access_Array;
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   use type NullUtil_Access_Array_Access;
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   use type NullUtil_Access_Array_Access_Array;
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   use type NullUtil_Access_Array_Access_Array_Access;
   subtype StdUtil_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access;
   use type StdUtil_Access;
   subtype StdUtil_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array;
   use type StdUtil_Access_Array;
   subtype StdUtil_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access;
   use type StdUtil_Access_Array_Access;
   subtype StdUtil_Access_Array_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array;
   use type StdUtil_Access_Array_Access_Array;
   subtype StdUtil_Access_Array_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array_Access;
   use type StdUtil_Access_Array_Access_Array_Access;
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   use type CommonLabels_Access;
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   use type CommonLabels_Access_Array;
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   use type CommonLabels_Access_Array_Access;
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   use type CommonLabels_Access_Array_Access_Array;
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   use type CommonLabels_Access_Array_Access_Array_Access;
   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   use type ThreadObjectUtil_Access;
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   use type ThreadObjectUtil_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access;
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   use type ThreadObjectUtil_Access_Array_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   use type Processor_Access;
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   use type Processor_Access_Array;
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   use type Processor_Access_Array_Access;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   use type Processor_Access_Array_Access_Array;
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   use type Processor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RunnableCanvas_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access;
   function "=" (Left, Right : RunnableCanvas_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array;
   function "=" (Left, Right : RunnableCanvas_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   function Java_Box (Value : RunnableCanvas_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.RunnableCanvas_Package_References.Java_Box;
   function Java_Unbox_RunnableCanvas_Access_Array (Value : access Java_Object'Class) return RunnableCanvas_Access_Array_Access renames org.allbinary.canvas.RunnableCanvas_Package_References.Java_Unbox_RunnableCanvas_Access_Array;
   subtype RunnableCanvas_Access_Array_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   function Java_Box (Value : RunnableCanvas_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.RunnableCanvas_Package_References.Java_Box;
   function Java_Unbox_RunnableCanvas_Access_Array_Access_Array (Value : access Java_Object'Class) return RunnableCanvas_Access_Array_Access_Array_Access renames org.allbinary.canvas.RunnableCanvas_Package_References.Java_Unbox_RunnableCanvas_Access_Array_Access_Array;

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

   procedure Initialize (This : in out RunnableCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class; hasParam : Boolean);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class; hasParam : Boolean) return RunnableCanvas_Access;
   procedure initCommands (This : in out RunnableCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   function isMainCanvas (This : in out RunnableCanvas) return Boolean;
   procedure setThread (This : in out RunnableCanvas; thread_Param : access Thread_Package.Thread'Class);
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


