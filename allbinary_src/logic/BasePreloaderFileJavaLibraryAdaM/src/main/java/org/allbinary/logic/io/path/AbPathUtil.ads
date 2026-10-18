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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.logic.io.path.AbPathUtil_Package is


   type AbPathUtil is tagged;
   type AbPathUtil_Access is access all AbPathUtil'Class;
   type AbPathUtil_Access_Array is array (Natural range <>) of AbPathUtil_Access;
   type AbPathUtil_Access_Array_Access is access all AbPathUtil_Access_Array;
   type AbPathUtil_Access_Array_Access_Array is array (Natural range <>) of AbPathUtil_Access_Array_Access;
   type AbPathUtil_Access_Array_Access_Array_Access is access all AbPathUtil_Access_Array_Access_Array;

   type AbPathUtil is new Java_Object with record
      NO_ABPATH : AbPath_Access;
   end record;
   instance : AbPathUtil_Access;

   procedure Initialize (This : in out AbPathUtil'Class);
   function Create return AbPathUtil_Access;
   function getInstance return AbPathUtil_Access;

end org.allbinary.logic.io.path.AbPathUtil_Package;


