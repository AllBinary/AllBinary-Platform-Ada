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
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ThreadFactoryUtil_Package is

   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ThreadFactoryUtil is tagged;
   type ThreadFactoryUtil_Access is access all ThreadFactoryUtil'Class;
   type ThreadFactoryUtil_Access_Array is array (Natural range <>) of ThreadFactoryUtil_Access;
   type ThreadFactoryUtil_Access_Array_Access is access all ThreadFactoryUtil_Access_Array;
   type ThreadFactoryUtil_Access_Array_Access_Array is array (Natural range <>) of ThreadFactoryUtil_Access_Array_Access;
   type ThreadFactoryUtil_Access_Array_Access_Array_Access is access all ThreadFactoryUtil_Access_Array_Access_Array;

   type ThreadFactoryUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ThreadFactoryUtil_Access;

   procedure Initialize (This : in out ThreadFactoryUtil'Class);
   function Create return ThreadFactoryUtil_Access;
   function getInstance return ThreadFactoryUtil_Access;
   function getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) return Thread_Access;
   procedure getInstanceGameCanvasRunnable (This : in out ThreadFactoryUtil; runnable_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class);
   function getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class) return Thread_Access;
   procedure getInstanceForRunnable (This : in out ThreadFactoryUtil; runnable_Param : access ABRunnable_Package.ABRunnable'Class);
   function getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer) return Thread_Access;
   procedure getInstanceType (This : in out ThreadFactoryUtil; runnable_Param : access Runnable_Package.Runnable'Class; type_Id : Integer);
   procedure start (This : in out ThreadFactoryUtil; thread_Param : access Thread_Package.Thread'Class);

end org.allbinary.thread.ThreadFactoryUtil_Package;


