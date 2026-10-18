-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.MusicThreadPool_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;

   type MusicThreadPool is tagged;
   type MusicThreadPool_Access is access all MusicThreadPool'Class;
   type MusicThreadPool_Access_Array is array (Natural range <>) of MusicThreadPool_Access;
   type MusicThreadPool_Access_Array_Access is access all MusicThreadPool_Access_Array;
   type MusicThreadPool_Access_Array_Access_Array is array (Natural range <>) of MusicThreadPool_Access_Array_Access;
   type MusicThreadPool_Access_Array_Access_Array_Access is access all MusicThreadPool_Access_Array_Access_Array;

   type MusicThreadPool is new ThreadPool with null record;
   THREAD_POOL : ThreadPool_Access;

   procedure Initialize (This : in out MusicThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return MusicThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out MusicThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.MusicThreadPool_Package;


