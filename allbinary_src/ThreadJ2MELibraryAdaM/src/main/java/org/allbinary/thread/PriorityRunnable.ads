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
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.PriorityRunnable_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;

   type PriorityRunnable is interface and Runnable;
   type PriorityRunnable_Access is access all PriorityRunnable'Class;
   type PriorityRunnable_Access_Array is array (Natural range <>) of PriorityRunnable_Access;
   type PriorityRunnable_Access_Array_Access is access all PriorityRunnable_Access_Array;
   type PriorityRunnable_Access_Array_Access_Array is array (Natural range <>) of PriorityRunnable_Access_Array_Access;
   type PriorityRunnable_Access_Array_Access_Array_Access is access all PriorityRunnable_Access_Array_Access_Array;
   function getPriority (This : in out PriorityRunnable) return Integer is abstract;
   function isDone (This : in out PriorityRunnable) return Boolean is abstract;
   procedure reset (This : in out PriorityRunnable) is abstract;

end org.allbinary.thread.PriorityRunnable_Package;


