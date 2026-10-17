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
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.vector.MathVector_Package; use org.allbinary.logic.math.vector.MathVector_Package;

package org.allbinary.logic.math.vector.XAxisMathVector_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type XAxisMathVector is tagged;
   type XAxisMathVector_Access is access all XAxisMathVector'Class;
   type XAxisMathVector_Access_Array is array (Natural range <>) of XAxisMathVector_Access;
   type XAxisMathVector_Access_Array_Access is access all XAxisMathVector_Access_Array;

   type XAxisMathVector is new MathVector with null record;

   procedure Initialize (This : in out XAxisMathVector'Class; magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer);
   function Create (magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer) return XAxisMathVector_Access;
   procedure calculate (This : in out XAxisMathVector);

end org.allbinary.logic.math.vector.XAxisMathVector_Package;


