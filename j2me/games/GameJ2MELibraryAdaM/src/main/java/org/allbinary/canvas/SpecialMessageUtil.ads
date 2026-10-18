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

package org.allbinary.canvas.SpecialMessageUtil_Package is


   type SpecialMessageUtil is tagged;
   type SpecialMessageUtil_Access is access all SpecialMessageUtil'Class;
   type SpecialMessageUtil_Access_Array is array (Natural range <>) of SpecialMessageUtil_Access;
   type SpecialMessageUtil_Access_Array_Access is access all SpecialMessageUtil_Access_Array;
   type SpecialMessageUtil_Access_Array_Access_Array is array (Natural range <>) of SpecialMessageUtil_Access_Array_Access;
   type SpecialMessageUtil_Access_Array_Access_Array_Access is access all SpecialMessageUtil_Access_Array_Access_Array;

   type SpecialMessageUtil is new Java_Object with null record;
   SINGLETON : SpecialMessageUtil_Access;

   procedure Initialize (This : in out SpecialMessageUtil'Class);
   function Create return SpecialMessageUtil_Access;
   function getInstance return SpecialMessageUtil_Access;
   function get (This : in out SpecialMessageUtil) return Unbounded_String;

end org.allbinary.canvas.SpecialMessageUtil_Package;


