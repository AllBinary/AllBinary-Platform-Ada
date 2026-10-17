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
with org.allbinary.thread.PriorityRunnable_Package; use org.allbinary.thread.PriorityRunnable_Package;

package org.allbinary.thread.NullPriorityRunnable_Package is


   type NullPriorityRunnable is tagged;
   type NullPriorityRunnable_Access is access all NullPriorityRunnable'Class;
   type NullPriorityRunnable_Access_Array is array (Natural range <>) of NullPriorityRunnable_Access;
   type NullPriorityRunnable_Access_Array_Access is access all NullPriorityRunnable_Access_Array;

   type NullPriorityRunnable is new PriorityRunnable with null record;

   procedure Initialize (This : in out NullPriorityRunnable'Class);
   function Create return NullPriorityRunnable_Access;
   function getPriority (This : in out NullPriorityRunnable) return Integer;
   function isDone (This : in out NullPriorityRunnable) return Boolean;
   procedure reset (This : in out NullPriorityRunnable);
   procedure run (This : in out NullPriorityRunnable);

end org.allbinary.thread.NullPriorityRunnable_Package;


