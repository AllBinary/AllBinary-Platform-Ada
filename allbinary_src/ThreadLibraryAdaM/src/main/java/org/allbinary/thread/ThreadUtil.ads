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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.thread.ThreadUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ThreadUtil is tagged;
   type ThreadUtil_Access is access all ThreadUtil'Class;
   type ThreadUtil_Access_Array is array (Natural range <>) of ThreadUtil_Access;
   type ThreadUtil_Access_Array_Access is access all ThreadUtil_Access_Array;

   type ThreadUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      JOIN : Unbounded_String;
   end record;
   instance : ThreadUtil_Access;

   procedure Initialize (This : in out ThreadUtil'Class);
   function Create return ThreadUtil_Access;
   function getInstance return ThreadUtil_Access;
   function isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class) return Boolean;
   procedure isRunning (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class);
   procedure join_Case (This : in out ThreadUtil; thread_Param : access Thread_Package.Thread'Class);

end org.allbinary.thread.ThreadUtil_Package;


