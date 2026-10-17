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

package org.allbinary.logic.math.vector.YAxisMathVector_Package is

   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;

   type YAxisMathVector is tagged;
   type YAxisMathVector_Access is access all YAxisMathVector'Class;
   type YAxisMathVector_Access_Array is array (Natural range <>) of YAxisMathVector_Access;
   type YAxisMathVector_Access_Array_Access is access all YAxisMathVector_Access_Array;

   type YAxisMathVector is new MathVector with null record;

   procedure Initialize (This : in out YAxisMathVector'Class; magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer);
   function Create (magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer) return YAxisMathVector_Access;
   function getResult (This : in out YAxisMathVector) return BasicDecimal_Access;
   procedure getResult (This : in out YAxisMathVector);
   procedure calculate (This : in out YAxisMathVector);

end org.allbinary.logic.math.vector.YAxisMathVector_Package;


