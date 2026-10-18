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
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;

package org.allbinary.thread.NullRunnable_Package is


   type NullRunnable is tagged;
   type NullRunnable_Access is access all NullRunnable'Class;
   type NullRunnable_Access_Array is array (Natural range <>) of NullRunnable_Access;
   type NullRunnable_Access_Array_Access is access all NullRunnable_Access_Array;
   type NullRunnable_Access_Array_Access_Array is array (Natural range <>) of NullRunnable_Access_Array_Access;
   type NullRunnable_Access_Array_Access_Array_Access is access all NullRunnable_Access_Array_Access_Array;

   type NullRunnable is new ARunnable with null record;
   instance : NullRunnable_Access;

   procedure Initialize (This : in out NullRunnable'Class);
   function Create return NullRunnable_Access;
   function getInstance return NullRunnable_Access;

end org.allbinary.thread.NullRunnable_Package;


