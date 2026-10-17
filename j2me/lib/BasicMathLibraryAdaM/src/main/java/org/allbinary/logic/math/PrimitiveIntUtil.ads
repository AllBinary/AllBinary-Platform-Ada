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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.logic.math.PrimitiveIntUtil_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type PrimitiveIntUtil is tagged;
   type PrimitiveIntUtil_Access is access all PrimitiveIntUtil'Class;
   type PrimitiveIntUtil_Access_Array is array (Natural range <>) of PrimitiveIntUtil_Access;
   type PrimitiveIntUtil_Access_Array_Access is access all PrimitiveIntUtil_Access_Array;

   type PrimitiveIntUtil is new Java_Object with null record;

   procedure Initialize (This : in out PrimitiveIntUtil'Class);
   function Create return PrimitiveIntUtil_Access;
   function getArrayInstance return Integer_Array_Access;
   procedure getArrayInstance;
   function getTwoDimensionalArrayInstance return Integer_Array_Access_Array_Access;
   procedure getTwoDimensionalArrayInstance;

end org.allbinary.logic.math.PrimitiveIntUtil_Package;


