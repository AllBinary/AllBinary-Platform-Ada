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

limited with org.allbinary.logic.math.vector.MathVector_Package;
package org.allbinary.logic.math.vector.MathVector_Package_References is
   type MathVector_Access is access all org.allbinary.logic.math.vector.MathVector_Package.MathVector'Class;
   type MathVector_Access_Array is array (Natural range <>) of MathVector_Access;
   type MathVector_Access_Array_Access is access all MathVector_Access_Array;
   type MathVector_Access_Array_Access_Array is array (Natural range <>) of MathVector_Access_Array_Access;
   type MathVector_Access_Array_Access_Array_Access is access all MathVector_Access_Array_Access_Array;
end org.allbinary.logic.math.vector.MathVector_Package_References;

with org.allbinary.logic.math.vector.MathVector_Package_References;
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
with org.allbinary.logic.math.vector.MathVectorInterface_Package; use org.allbinary.logic.math.vector.MathVectorInterface_Package;

package org.allbinary.logic.math.vector.MathVector_Package is

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


   subtype MathVector_Access is org.allbinary.logic.math.vector.MathVector_Package_References.MathVector_Access;
   function "=" (Left, Right : MathVector_Access) return Boolean renames org.allbinary.logic.math.vector.MathVector_Package_References."=";
   subtype MathVector_Access_Array is org.allbinary.logic.math.vector.MathVector_Package_References.MathVector_Access_Array;
   function "=" (Left, Right : MathVector_Access_Array) return Boolean renames org.allbinary.logic.math.vector.MathVector_Package_References."=";
   subtype MathVector_Access_Array_Access is org.allbinary.logic.math.vector.MathVector_Package_References.MathVector_Access_Array_Access;
   function "=" (Left, Right : MathVector_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.MathVector_Package_References."=";
   subtype MathVector_Access_Array_Access_Array is org.allbinary.logic.math.vector.MathVector_Package_References.MathVector_Access_Array_Access_Array;
   function "=" (Left, Right : MathVector_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.MathVector_Package_References."=";
   subtype MathVector_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.MathVector_Package_References.MathVector_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MathVector_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.MathVector_Package_References."=";

   type MathVector is new Java_Object and MathVectorInterface with record
      magnitudeBasicDecimal : BasicDecimal_Access;
      direction : Integer;
      resultBasicDecimal : BasicDecimal_Access;
   end record;

   procedure Initialize (This : in out MathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer);
   function Create (magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) return MathVector_Access;
   function getMagnitude (This : in out MathVector) return BasicDecimal_Access;
   function getDirection (This : in out MathVector) return Integer;
   function getResult (This : in out MathVector) return BasicDecimal_Access;

end org.allbinary.logic.math.vector.MathVector_Package;


