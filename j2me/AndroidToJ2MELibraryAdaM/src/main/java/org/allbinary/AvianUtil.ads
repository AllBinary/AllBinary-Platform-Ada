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

package org.allbinary.AvianUtil_Package is


   type AvianUtil is tagged;
   type AvianUtil_Access is access all AvianUtil'Class;
   type AvianUtil_Access_Array is array (Natural range <>) of AvianUtil_Access;
   type AvianUtil_Access_Array_Access is access all AvianUtil_Access_Array;

   type AvianUtil is new Java_Object with null record;

   procedure Initialize (This : in out AvianUtil'Class);
   function Create return AvianUtil_Access;
   function isAvian return Boolean;

end org.allbinary.AvianUtil_Package;


