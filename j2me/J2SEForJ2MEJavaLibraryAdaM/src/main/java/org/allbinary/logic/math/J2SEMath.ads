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

package org.allbinary.logic.math.J2SEMath_Package is


   type J2SEMath is tagged;
   type J2SEMath_Access is access all J2SEMath'Class;
   type J2SEMath_Access_Array is array (Natural range <>) of J2SEMath_Access;
   type J2SEMath_Access_Array_Access is access all J2SEMath_Access_Array;
   type J2SEMath_Access_Array_Access_Array is array (Natural range <>) of J2SEMath_Access_Array_Access;
   type J2SEMath_Access_Array_Access_Array_Access is access all J2SEMath_Access_Array_Access_Array;

   type J2SEMath is new Java_Object with null record;
   instance : J2SEMath_Access;

   procedure Initialize (This : in out J2SEMath'Class);
   function Create return J2SEMath_Access;
   function getInstance return J2SEMath_Access;
   function round (This : in out J2SEMath; value : Float) return Integer;
   procedure round (This : in out J2SEMath; value : Float);
   function abs_Id (This : in out J2SEMath; value : Float) return Float;
   procedure abs_Id (This : in out J2SEMath; value : Float);
   function absdouble (This : in out J2SEMath; value : Long_Float) return Long_Float;
   procedure absdouble (This : in out J2SEMath; value : Long_Float);

end org.allbinary.logic.math.J2SEMath_Package;


