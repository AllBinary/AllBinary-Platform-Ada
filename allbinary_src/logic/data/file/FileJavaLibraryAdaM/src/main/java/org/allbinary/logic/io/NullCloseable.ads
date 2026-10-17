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
--  with java.io.Closeable_Package; use java.io.Closeable_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;

package org.allbinary.logic.io.NullCloseable_Package is


   type NullCloseable is tagged;
   type NullCloseable_Access is access all NullCloseable'Class;
   type NullCloseable_Access_Array is array (Natural range <>) of NullCloseable_Access;
   type NullCloseable_Access_Array_Access is access all NullCloseable_Access_Array;

   type NullCloseable is new Closeable with null record;
   NULL_CLOSEABLE : NullCloseable_Access;

   procedure Initialize (This : in out NullCloseable'Class);
   function Create return NullCloseable_Access;
   procedure close (This : in out NullCloseable);

end org.allbinary.logic.io.NullCloseable_Package;


