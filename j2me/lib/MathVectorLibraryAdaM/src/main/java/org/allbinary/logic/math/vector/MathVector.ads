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
with org.allbinary.logic.math.vector.MathVectorInterface_Package; use org.allbinary.logic.math.vector.MathVectorInterface_Package;

package org.allbinary.logic.math.vector.MathVector_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type MathVector is tagged;
   type MathVector_Access is access all MathVector'Class;
   type MathVector_Access_Array is array (Natural range <>) of MathVector_Access;
   type MathVector_Access_Array_Access is access all MathVector_Access_Array;

   type MathVector is new MathVectorInterface with record
      magnitudeBasicDecimal : BasicDecimal_Access;
      direction : Integer;
      resultBasicDecimal : BasicDecimal_Access;
   end record;

   procedure Initialize (This : in out MathVector'Class; magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer);
   function Create (magnitudeBasicDecimal : BasicDecimal_Access; direction : Integer) return MathVector_Access;
   function getMagnitude (This : in out MathVector) return BasicDecimal_Access;
   procedure getMagnitude (This : in out MathVector);
   function getDirection (This : in out MathVector) return Integer;
   procedure getDirection (This : in out MathVector);
   function getResult (This : in out MathVector) return BasicDecimal_Access;
   procedure getResult (This : in out MathVector);

end org.allbinary.logic.math.vector.MathVector_Package;


