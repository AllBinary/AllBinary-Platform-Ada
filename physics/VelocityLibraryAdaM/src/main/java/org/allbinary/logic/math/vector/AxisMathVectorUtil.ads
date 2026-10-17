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
with org.allbinary.math.NoDecimalTrigTable_Package; use org.allbinary.math.NoDecimalTrigTable_Package;

package org.allbinary.logic.math.vector.AxisMathVectorUtil_Package is

   package NoDecimalTrigTable_Package renames org.allbinary.math.NoDecimalTrigTable_Package;

   type AxisMathVectorUtil is tagged;
   type AxisMathVectorUtil_Access is access all AxisMathVectorUtil'Class;
   type AxisMathVectorUtil_Access_Array is array (Natural range <>) of AxisMathVectorUtil_Access;
   type AxisMathVectorUtil_Access_Array_Access is access all AxisMathVectorUtil_Access_Array;

   type AxisMathVectorUtil is new Java_Object with record
      noDecimalTrigTable : NoDecimalTrigTable_Access;
   end record;
   instance : AxisMathVectorUtil_Access;

   procedure Initialize (This : in out AxisMathVectorUtil'Class);
   function Create return AxisMathVectorUtil_Access;
   function getInstance return AxisMathVectorUtil_Access;
   procedure getInstance;
   function calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer;
   procedure calculateX (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer);
   function calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer) return Long_Long_Integer;
   procedure calculateY (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; angle : Integer);
   function calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer) return Long_Long_Integer;
   procedure calculateZ (This : in out AxisMathVectorUtil; magnitude : Long_Long_Integer; otherAngle : Integer);

end org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;


