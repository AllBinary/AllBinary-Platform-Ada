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

with AllBinary_Java;
limited with org.allbinary.logic.math.vector.XAxisMathVector_Package;
package org.allbinary.logic.math.vector.XAxisMathVector_Package_References is
   type XAxisMathVector_Access is access all org.allbinary.logic.math.vector.XAxisMathVector_Package.XAxisMathVector'Class;
   type XAxisMathVector_Access_Array is array (Natural range <>) of XAxisMathVector_Access;
   type XAxisMathVector_Access_Array_Access is access all XAxisMathVector_Access_Array;
   type XAxisMathVector_Access_Array_Access_Array is array (Natural range <>) of XAxisMathVector_Access_Array_Access;
   type XAxisMathVector_Access_Array_Access_Array_Access is access all XAxisMathVector_Access_Array_Access_Array;
   type XAxisMathVector_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XAxisMathVector_Access_Array_Access;
   end record;
   function Java_Box (Value : XAxisMathVector_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XAxisMathVector_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XAxisMathVector_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XAxisMathVector_Access_Array_Access is (if Value /= null and then Value.all in XAxisMathVector_Access_Array_Object'Class then XAxisMathVector_Access_Array_Object'Class (Value.all).Value else null);
   type XAxisMathVector_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XAxisMathVector_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XAxisMathVector_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XAxisMathVector_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XAxisMathVector_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XAxisMathVector_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XAxisMathVector_Access_Array_Access_Array_Object'Class then XAxisMathVector_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.vector.XAxisMathVector_Package_References;

with org.allbinary.logic.math.vector.XAxisMathVector_Package_References;
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

package org.allbinary.logic.math.vector.XAxisMathVector_Package is

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


   subtype XAxisMathVector_Access is org.allbinary.logic.math.vector.XAxisMathVector_Package_References.XAxisMathVector_Access;
   function "=" (Left, Right : XAxisMathVector_Access) return Boolean renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References."=";
   subtype XAxisMathVector_Access_Array is org.allbinary.logic.math.vector.XAxisMathVector_Package_References.XAxisMathVector_Access_Array;
   function "=" (Left, Right : XAxisMathVector_Access_Array) return Boolean renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References."=";
   subtype XAxisMathVector_Access_Array_Access is org.allbinary.logic.math.vector.XAxisMathVector_Package_References.XAxisMathVector_Access_Array_Access;
   function "=" (Left, Right : XAxisMathVector_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References."=";
   function Java_Box (Value : XAxisMathVector_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References.Java_Box;
   function Java_Unbox_XAxisMathVector_Access_Array (Value : access Java_Object'Class) return XAxisMathVector_Access_Array_Access renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References.Java_Unbox_XAxisMathVector_Access_Array;
   subtype XAxisMathVector_Access_Array_Access_Array is org.allbinary.logic.math.vector.XAxisMathVector_Package_References.XAxisMathVector_Access_Array_Access_Array;
   function "=" (Left, Right : XAxisMathVector_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References."=";
   subtype XAxisMathVector_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.XAxisMathVector_Package_References.XAxisMathVector_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XAxisMathVector_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References."=";
   function Java_Box (Value : XAxisMathVector_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References.Java_Box;
   function Java_Unbox_XAxisMathVector_Access_Array_Access_Array (Value : access Java_Object'Class) return XAxisMathVector_Access_Array_Access_Array_Access renames org.allbinary.logic.math.vector.XAxisMathVector_Package_References.Java_Unbox_XAxisMathVector_Access_Array_Access_Array;

   type XAxisMathVector is new MathVector with null record;

   procedure Initialize (This : in out XAxisMathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer);
   function Create (magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) return XAxisMathVector_Access;
   procedure calculate (This : in out XAxisMathVector);

end org.allbinary.logic.math.vector.XAxisMathVector_Package;


