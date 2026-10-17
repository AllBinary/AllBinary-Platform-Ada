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
with android.os.Debug_Package; use android.os.Debug_Package;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;

package org.allbinary.debug.AndroidDebug_Package is

   package Debug_Package renames android.os.Debug_Package;

   type AndroidDebug is tagged;
   type AndroidDebug_Access is access all AndroidDebug'Class;
   type AndroidDebug_Access_Array is array (Natural range <>) of AndroidDebug_Access;
   type AndroidDebug_Access_Array_Access is access all AndroidDebug_Access_Array;

   type AndroidDebug is new DebugInterface with record
      startTime : Long_Long_Integer;
      running : Boolean;
      bufferSize : Integer;
   end record;

   procedure Initialize (This : in out AndroidDebug'Class);
   function Create return AndroidDebug_Access;
   procedure start (This : in out AndroidDebug);
   procedure stop (This : in out AndroidDebug);
   function getMaxTime (This : in out AndroidDebug) return Long_Long_Integer;
   procedure getMaxTime (This : in out AndroidDebug);
   procedure setStartTime (This : in out AndroidDebug; startTime : Long_Long_Integer);
   function getStartTime (This : in out AndroidDebug) return Long_Long_Integer;
   procedure getStartTime (This : in out AndroidDebug);
   procedure setRunning (This : in out AndroidDebug; running : Boolean);
   function isRunning (This : in out AndroidDebug) return Boolean;
   procedure isRunning (This : in out AndroidDebug);

end org.allbinary.debug.AndroidDebug_Package;


