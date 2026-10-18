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

package org.allbinary.thread.NullThread_Package is


   type NullThread is tagged;
   type NullThread_Access is access all NullThread'Class;
   type NullThread_Access_Array is array (Natural range <>) of NullThread_Access;
   type NullThread_Access_Array_Access is access all NullThread_Access_Array;
   type NullThread_Access_Array_Access_Array is array (Natural range <>) of NullThread_Access_Array_Access;
   type NullThread_Access_Array_Access_Array_Access is access all NullThread_Access_Array_Access_Array;

   type NullThread is new Java_Object with null record;
   NULL_THREAD : Thread_Access;

   procedure Initialize (This : in out NullThread'Class);
   function Create return NullThread_Access;

end org.allbinary.thread.NullThread_Package;


