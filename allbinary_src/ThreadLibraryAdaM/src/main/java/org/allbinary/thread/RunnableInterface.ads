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
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;

package org.allbinary.thread.RunnableInterface_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;

   type RunnableInterface is interface and Runnable;
   type RunnableInterface_Access is access all RunnableInterface'Class;
   type RunnableInterface_Access_Array is array (Natural range <>) of RunnableInterface_Access;
   type RunnableInterface_Access_Array_Access is access all RunnableInterface_Access_Array;
   type RunnableInterface_Access_Array_Access_Array is array (Natural range <>) of RunnableInterface_Access_Array_Access;
   type RunnableInterface_Access_Array_Access_Array_Access is access all RunnableInterface_Access_Array_Access_Array;
   function isRunning (This : in out RunnableInterface) return Boolean is abstract;
   procedure setRunning (This : in out RunnableInterface; isRunning : Boolean) is abstract;
   procedure setThread (This : in out RunnableInterface; thread_Param : access Thread_Package.Thread'Class) is abstract;

end org.allbinary.thread.RunnableInterface_Package;


