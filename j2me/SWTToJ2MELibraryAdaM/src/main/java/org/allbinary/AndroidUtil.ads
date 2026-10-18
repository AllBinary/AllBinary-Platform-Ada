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

package org.allbinary.AndroidUtil_Package is


   type AndroidUtil is tagged;
   type AndroidUtil_Access is access all AndroidUtil'Class;
   type AndroidUtil_Access_Array is array (Natural range <>) of AndroidUtil_Access;
   type AndroidUtil_Access_Array_Access is access all AndroidUtil_Access_Array;
   type AndroidUtil_Access_Array_Access_Array is array (Natural range <>) of AndroidUtil_Access_Array_Access;
   type AndroidUtil_Access_Array_Access_Array_Access is access all AndroidUtil_Access_Array_Access_Array;

   type AndroidUtil is new Java_Object with null record;

   procedure Initialize (This : in out AndroidUtil'Class);
   function Create return AndroidUtil_Access;
   function isMemoryRestrictive return Boolean;
   function isAndroid return Boolean;

end org.allbinary.AndroidUtil_Package;


