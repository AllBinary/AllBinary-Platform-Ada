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
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;

package org.allbinary.thread.NullABRunnable_Package is


   type NullABRunnable is tagged;
   type NullABRunnable_Access is access all NullABRunnable'Class;
   type NullABRunnable_Access_Array is array (Natural range <>) of NullABRunnable_Access;
   type NullABRunnable_Access_Array_Access is access all NullABRunnable_Access_Array;

   type NullABRunnable is new ABRunnable with null record;
   instance : NullABRunnable_Access;

   procedure Initialize (This : in out NullABRunnable'Class);
   function Create return NullABRunnable_Access;
   function getInstance return NullABRunnable_Access;
   procedure getInstance;
   function isRunning (This : in out NullABRunnable) return Boolean;
   procedure isRunning (This : in out NullABRunnable);

end org.allbinary.thread.NullABRunnable_Package;


