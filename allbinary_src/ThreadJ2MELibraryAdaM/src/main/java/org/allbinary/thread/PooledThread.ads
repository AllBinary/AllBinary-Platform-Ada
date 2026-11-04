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

limited with org.allbinary.thread.PooledThread_Package;
package org.allbinary.thread.PooledThread_Package_References is
   type PooledThread_Access is access all org.allbinary.thread.PooledThread_Package.PooledThread'Class;
   type PooledThread_Access_Array is array (Natural range <>) of PooledThread_Access;
   type PooledThread_Access_Array_Access is access all PooledThread_Access_Array;
   type PooledThread_Access_Array_Access_Array is array (Natural range <>) of PooledThread_Access_Array_Access;
   type PooledThread_Access_Array_Access_Array_Access is access all PooledThread_Access_Array_Access_Array;
end org.allbinary.thread.PooledThread_Package_References;

with org.allbinary.thread.PooledThread_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
limited with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
limited with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package_References;

package org.allbinary.thread.PooledThread_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype ThreadPool_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access;
   use type ThreadPool_Access;
   subtype ThreadPool_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array;
   use type ThreadPool_Access_Array;
   subtype ThreadPool_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access;
   use type ThreadPool_Access_Array_Access;
   subtype ThreadPool_Access_Array_Access_Array is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array;
   use type ThreadPool_Access_Array_Access_Array;
   subtype ThreadPool_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadPool_Package_References.ThreadPool_Access_Array_Access_Array_Access;
   use type ThreadPool_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PooledThread_Access is org.allbinary.thread.PooledThread_Package_References.PooledThread_Access;
   function "=" (Left, Right : PooledThread_Access) return Boolean renames org.allbinary.thread.PooledThread_Package_References."=";
   subtype PooledThread_Access_Array is org.allbinary.thread.PooledThread_Package_References.PooledThread_Access_Array;
   function "=" (Left, Right : PooledThread_Access_Array) return Boolean renames org.allbinary.thread.PooledThread_Package_References."=";
   subtype PooledThread_Access_Array_Access is org.allbinary.thread.PooledThread_Package_References.PooledThread_Access_Array_Access;
   function "=" (Left, Right : PooledThread_Access_Array_Access) return Boolean renames org.allbinary.thread.PooledThread_Package_References."=";
   subtype PooledThread_Access_Array_Access_Array is org.allbinary.thread.PooledThread_Package_References.PooledThread_Access_Array_Access_Array;
   function "=" (Left, Right : PooledThread_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.PooledThread_Package_References."=";
   subtype PooledThread_Access_Array_Access_Array_Access is org.allbinary.thread.PooledThread_Package_References.PooledThread_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PooledThread_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.PooledThread_Package_References."=";

   type PooledThread is new Thread_Package.Thread with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
      threadPool : ThreadPool_Access;
      INTERRUPT_EXCEPTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out PooledThread'Class; threadPool_Param : access ThreadPool_Package.ThreadPool'Class);
   function Create (threadPool_Param : access ThreadPool_Package.ThreadPool'Class) return PooledThread_Access;
   procedure run (This : in out PooledThread);

end org.allbinary.thread.PooledThread_Package;


