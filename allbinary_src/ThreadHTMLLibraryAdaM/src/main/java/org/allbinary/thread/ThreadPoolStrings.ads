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

package org.allbinary.thread.ThreadPoolStrings_Package is


   type ThreadPoolStrings is tagged;
   type ThreadPoolStrings_Access is access all ThreadPoolStrings'Class;
   type ThreadPoolStrings_Access_Array is array (Natural range <>) of ThreadPoolStrings_Access;
   type ThreadPoolStrings_Access_Array_Access is access all ThreadPoolStrings_Access_Array;

   type ThreadPoolStrings is new Java_Object with record
      ADD_TASK : Unbounded_String;
      START_TASK : Unbounded_String;
      COMPLETE_TASK : Unbounded_String;
   end record;
   instance : ThreadPoolStrings_Access;

   procedure Initialize (This : in out ThreadPoolStrings'Class);
   function Create return ThreadPoolStrings_Access;
   function getInstance return ThreadPoolStrings_Access;

end org.allbinary.thread.ThreadPoolStrings_Package;


