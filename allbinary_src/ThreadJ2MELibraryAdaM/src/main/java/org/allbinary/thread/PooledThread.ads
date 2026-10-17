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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.Thread_Package; use org.allbinary.thread.Thread_Package;

package org.allbinary.thread.PooledThread_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type PooledThread is tagged;
   type PooledThread_Access is access all PooledThread'Class;
   type PooledThread_Access_Array is array (Natural range <>) of PooledThread_Access;
   type PooledThread_Access_Array_Access is access all PooledThread_Access_Array;

   type PooledThread is new Thread with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
      threadPool : ThreadPool_Access;
      INTERRUPT_EXCEPTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out PooledThread'Class; threadPool : ThreadPool_Access);
   function Create (threadPool : ThreadPool_Access) return PooledThread_Access;
   procedure run (This : in out PooledThread);

end org.allbinary.thread.PooledThread_Package;


