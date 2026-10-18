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
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.SecondaryThreadPool_Package is


   type SecondaryThreadPool is tagged;
   type SecondaryThreadPool_Access is access all SecondaryThreadPool'Class;
   type SecondaryThreadPool_Access_Array is array (Natural range <>) of SecondaryThreadPool_Access;
   type SecondaryThreadPool_Access_Array_Access is access all SecondaryThreadPool_Access_Array;
   type SecondaryThreadPool_Access_Array_Access_Array is array (Natural range <>) of SecondaryThreadPool_Access_Array_Access;
   type SecondaryThreadPool_Access_Array_Access_Array_Access is access all SecondaryThreadPool_Access_Array_Access_Array;

   type SecondaryThreadPool is new ThreadPool with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out SecondaryThreadPool'Class; poolName : Unbounded_String; numThreads : Integer; priority : Integer);
   function Create (poolName : Unbounded_String; numThreads : Integer; priority : Integer) return SecondaryThreadPool_Access;
   function getInstance return ThreadPool_Access;
   procedure runTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure startTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);
   procedure completedTask (This : in out SecondaryThreadPool; task_Id_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.thread.SecondaryThreadPool_Package;


