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

limited with org.allbinary.thread.ThreadUtil_Package;
package org.allbinary.thread.ThreadUtil_Package_References is
   type ThreadUtil_Access is access all org.allbinary.thread.ThreadUtil_Package.ThreadUtil'Class;
   type ThreadUtil_Access_Array is array (Natural range <>) of ThreadUtil_Access;
   type ThreadUtil_Access_Array_Access is access all ThreadUtil_Access_Array;
   type ThreadUtil_Access_Array_Access_Array is array (Natural range <>) of ThreadUtil_Access_Array_Access;
   type ThreadUtil_Access_Array_Access_Array_Access is access all ThreadUtil_Access_Array_Access_Array;
end org.allbinary.thread.ThreadUtil_Package_References;

with org.allbinary.thread.ThreadUtil_Package_References;
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
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.thread.ThreadUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ThreadUtil_Access is org.allbinary.thread.ThreadUtil_Package_References.ThreadUtil_Access;
   function "=" (Left, Right : ThreadUtil_Access) return Boolean renames org.allbinary.thread.ThreadUtil_Package_References."=";
   subtype ThreadUtil_Access_Array is org.allbinary.thread.ThreadUtil_Package_References.ThreadUtil_Access_Array;
   function "=" (Left, Right : ThreadUtil_Access_Array) return Boolean renames org.allbinary.thread.ThreadUtil_Package_References."=";
   subtype ThreadUtil_Access_Array_Access is org.allbinary.thread.ThreadUtil_Package_References.ThreadUtil_Access_Array_Access;
   function "=" (Left, Right : ThreadUtil_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadUtil_Package_References."=";
   subtype ThreadUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadUtil_Package_References.ThreadUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ThreadUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ThreadUtil_Package_References."=";
   subtype ThreadUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadUtil_Package_References.ThreadUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThreadUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ThreadUtil_Package_References."=";

   type ThreadUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      JOIN_Field : Unbounded_String;
   end record;
   instance : ThreadUtil_Access;

   procedure Initialize (This : in out ThreadUtil'Class);
   function Create return ThreadUtil_Access;
   function getInstance return ThreadUtil_Access;
   function isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class) return Boolean;
   procedure isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class);
   procedure join (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class);

end org.allbinary.thread.ThreadUtil_Package;


