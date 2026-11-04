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

limited with org.allbinary.logic.math.vector.YAxisMathVector_Package;
package org.allbinary.logic.math.vector.YAxisMathVector_Package_References is
   type YAxisMathVector_Access is access all org.allbinary.logic.math.vector.YAxisMathVector_Package.YAxisMathVector'Class;
   type YAxisMathVector_Access_Array is array (Natural range <>) of YAxisMathVector_Access;
   type YAxisMathVector_Access_Array_Access is access all YAxisMathVector_Access_Array;
   type YAxisMathVector_Access_Array_Access_Array is array (Natural range <>) of YAxisMathVector_Access_Array_Access;
   type YAxisMathVector_Access_Array_Access_Array_Access is access all YAxisMathVector_Access_Array_Access_Array;
end org.allbinary.logic.math.vector.YAxisMathVector_Package_References;

with org.allbinary.logic.math.vector.YAxisMathVector_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.logic.math.vector.MathVector_Package; use org.allbinary.logic.math.vector.MathVector_Package;

package org.allbinary.logic.math.vector.YAxisMathVector_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Reference_Types is
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype YAxisMathVector_Access is org.allbinary.logic.math.vector.YAxisMathVector_Package_References.YAxisMathVector_Access;
   function "=" (Left, Right : YAxisMathVector_Access) return Boolean renames org.allbinary.logic.math.vector.YAxisMathVector_Package_References."=";
   subtype YAxisMathVector_Access_Array is org.allbinary.logic.math.vector.YAxisMathVector_Package_References.YAxisMathVector_Access_Array;
   function "=" (Left, Right : YAxisMathVector_Access_Array) return Boolean renames org.allbinary.logic.math.vector.YAxisMathVector_Package_References."=";
   subtype YAxisMathVector_Access_Array_Access is org.allbinary.logic.math.vector.YAxisMathVector_Package_References.YAxisMathVector_Access_Array_Access;
   function "=" (Left, Right : YAxisMathVector_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.YAxisMathVector_Package_References."=";
   subtype YAxisMathVector_Access_Array_Access_Array is org.allbinary.logic.math.vector.YAxisMathVector_Package_References.YAxisMathVector_Access_Array_Access_Array;
   function "=" (Left, Right : YAxisMathVector_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.YAxisMathVector_Package_References."=";
   subtype YAxisMathVector_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.YAxisMathVector_Package_References.YAxisMathVector_Access_Array_Access_Array_Access;
   function "=" (Left, Right : YAxisMathVector_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.YAxisMathVector_Package_References."=";

   type YAxisMathVector is new MathVector with null record;

   procedure Initialize (This : in out YAxisMathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer);
   function Create (magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) return YAxisMathVector_Access;
   function getResult (This : in out YAxisMathVector) return BasicDecimal_Access;
   procedure calculate (This : in out YAxisMathVector);

end org.allbinary.logic.math.vector.YAxisMathVector_Package;


