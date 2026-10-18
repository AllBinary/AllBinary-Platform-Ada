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

package org.allbinary.thread.SynchObject_Package is


   type SynchObject is tagged;
   type SynchObject_Access is access all SynchObject'Class;
   type SynchObject_Access_Array is array (Natural range <>) of SynchObject_Access;
   type SynchObject_Access_Array_Access is access all SynchObject_Access_Array;
   type SynchObject_Access_Array_Access_Array is array (Natural range <>) of SynchObject_Access_Array_Access;
   type SynchObject_Access_Array_Access_Array_Access is access all SynchObject_Access_Array_Access_Array;

   type SynchObject is new Java_Object with null record;

   procedure Initialize (This : in out SynchObject'Class);
   function Create return SynchObject_Access;

end org.allbinary.thread.SynchObject_Package;


