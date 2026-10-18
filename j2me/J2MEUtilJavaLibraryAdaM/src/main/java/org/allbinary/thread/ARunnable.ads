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
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.thread.ARunnable_Package is


   type ARunnable is tagged;
   type ARunnable_Access is access all ARunnable'Class;
   type ARunnable_Access_Array is array (Natural range <>) of ARunnable_Access;
   type ARunnable_Access_Array_Access is access all ARunnable_Access_Array;
   type ARunnable_Access_Array_Access_Array is array (Natural range <>) of ARunnable_Access_Array_Access;
   type ARunnable_Access_Array_Access_Array_Access is access all ARunnable_Access_Array_Access_Array;

   type ARunnable is new Java_Object and Runnable with null record;

   procedure Initialize (This : in out ARunnable'Class);
   function Create return ARunnable_Access;
   procedure run (This : in out ARunnable);

end org.allbinary.thread.ARunnable_Package;


