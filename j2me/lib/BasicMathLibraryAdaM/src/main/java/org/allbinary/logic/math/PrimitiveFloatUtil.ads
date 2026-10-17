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

package org.allbinary.logic.math.PrimitiveFloatUtil_Package is


   type PrimitiveFloatUtil is tagged;
   type PrimitiveFloatUtil_Access is access all PrimitiveFloatUtil'Class;
   type PrimitiveFloatUtil_Access_Array is array (Natural range <>) of PrimitiveFloatUtil_Access;
   type PrimitiveFloatUtil_Access_Array_Access is access all PrimitiveFloatUtil_Access_Array;

   type PrimitiveFloatUtil is new Java_Object with null record;

   procedure Initialize (This : in out PrimitiveFloatUtil'Class);
   function Create return PrimitiveFloatUtil_Access;
   function getArrayInstance return Float_Array_Access;

end org.allbinary.logic.math.PrimitiveFloatUtil_Package;


