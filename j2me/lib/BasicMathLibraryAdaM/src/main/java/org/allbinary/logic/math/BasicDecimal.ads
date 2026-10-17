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

package org.allbinary.logic.math.BasicDecimal_Package is


   type BasicDecimal is tagged;
   type BasicDecimal_Access is access all BasicDecimal'Class;
   type BasicDecimal_Access_Array is array (Natural range <>) of BasicDecimal_Access;
   type BasicDecimal_Access_Array_Access is access all BasicDecimal_Access_Array;

   type BasicDecimal is new Java_Object with record
      units : Long_Long_Integer;
      scaled : Integer;
      factor : Integer;
      factorValue : Integer;
   end record;
   ZERO_BIGDECIMAL : BasicDecimal_Access;

   procedure Initialize (This : in out BasicDecimal'Class; units : Long_Long_Integer);
   function Create (units : Long_Long_Integer) return BasicDecimal_Access;
   function createBigDecimal (bigDecimal : BasicDecimal_Access) return BasicDecimal_Access;
   procedure createBigDecimal (bigDecimal : BasicDecimal_Access);
   procedure setint (This : in out BasicDecimal; value : Integer);
   procedure setlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure set (This : in out BasicDecimal; bigDecimal : BasicDecimal_Access);
   procedure addint (This : in out BasicDecimal; value : Integer);
   procedure addlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure add (This : in out BasicDecimal; bigDecimal : BasicDecimal_Access);
   procedure subtractint (This : in out BasicDecimal; value : Integer);
   procedure subtractlong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure subtract (This : in out BasicDecimal; bigDecimal : BasicDecimal_Access);
   procedure multiplyint (This : in out BasicDecimal; value : Integer);
   procedure multiplylong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure multiply (This : in out BasicDecimal; bigDecimal : BasicDecimal_Access);
   procedure divideint (This : in out BasicDecimal; value : Integer);
   procedure dividelong (This : in out BasicDecimal; value : Long_Long_Integer);
   procedure divide (This : in out BasicDecimal; bigDecimal : BasicDecimal_Access);
   function getUnscaled (This : in out BasicDecimal) return Long_Long_Integer;
   procedure getUnscaled (This : in out BasicDecimal);
   procedure updateScaled (This : in out BasicDecimal);
   function getScaled (This : in out BasicDecimal) return Integer;
   procedure getScaled (This : in out BasicDecimal);
   function toString (This : in out BasicDecimal) return Unbounded_String;
   procedure toString (This : in out BasicDecimal);
   function getScaledFactor (This : in out BasicDecimal) return Integer;
   procedure getScaledFactor (This : in out BasicDecimal);
   function getScaledFactorValue (This : in out BasicDecimal) return Integer;
   procedure getScaledFactorValue (This : in out BasicDecimal);

end org.allbinary.logic.math.BasicDecimal_Package;


