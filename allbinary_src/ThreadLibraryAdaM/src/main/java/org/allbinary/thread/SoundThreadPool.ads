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

package org.allbinary.thread.SoundThreadPool_Package is


   type SoundThreadPool is tagged;
   type SoundThreadPool_Access is access all SoundThreadPool'Class;
   type SoundThreadPool_Access_Array is array (Natural range <>) of SoundThreadPool_Access;
   type SoundThreadPool_Access_Array_Access is access all SoundThreadPool_Access_Array;

   type SoundThreadPool is new Java_Object with null record;
   instance : ThreadPool_Access;

   procedure Initialize (This : in out SoundThreadPool'Class);
   function Create return SoundThreadPool_Access;
   function getInstance return ThreadPool_Access;

end org.allbinary.thread.SoundThreadPool_Package;


