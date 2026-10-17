--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;

package org.allbinary.util.ArrayUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;

   type ArrayUtil is tagged;
   type ArrayUtil_Access is access all ArrayUtil'Class;
   type ArrayUtil_Access_Array is array (Natural range <>) of ArrayUtil_Access;
   type ArrayUtil_Access_Array_Access is access all ArrayUtil_Access_Array;

   type ArrayUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : ArrayUtil_Access;

   procedure Initialize (This : in out ArrayUtil'Class);
   function Create return ArrayUtil_Access;
   function getInstance return ArrayUtil_Access;
   function copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer) return Java_Object_Access_Array_Access;
   procedure copyOf (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer);
   function copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag) return Java_Object_Access_Array_Access;
   procedure copyOfType (This : in out ArrayUtil; original : Java_Object_Access_Array_Access; newLength : Integer; newType : Ada.Tags.Tag);
   function copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer) return Short_Short_Integer_Array_Access;
   procedure copyOfbyte (This : in out ArrayUtil; original : Short_Short_Integer_Array_Access; newLength : Integer);
   function copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer) return Short_Integer_Array_Access;
   procedure copyOfshort (This : in out ArrayUtil; original : Short_Integer_Array_Access; newLength : Integer);
   function copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer) return Integer_Array_Access;
   procedure copyOfint (This : in out ArrayUtil; original : Integer_Array_Access; newLength : Integer);
   function copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer) return Long_Long_Integer_Array_Access;
   procedure copyOflong (This : in out ArrayUtil; original : Long_Long_Integer_Array_Access; newLength : Integer);
   function copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer) return Character_Array_Access;
   procedure copyOfchar (This : in out ArrayUtil; original : Character_Array_Access; newLength : Integer);
   function copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer) return Float_Array_Access;
   procedure copyOffloat (This : in out ArrayUtil; original : Float_Array_Access; newLength : Integer);
   function copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer) return Long_Float_Array_Access;
   procedure copyOfdouble (This : in out ArrayUtil; original : Long_Float_Array_Access; newLength : Integer);
   function copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer) return Boolean_Array_Access;
   procedure copyOfboolean (This : in out ArrayUtil; original : Boolean_Array_Access; newLength : Integer);
   procedure reverse_Id (This : in out ArrayUtil; intArray : Integer_Array_Access);
   procedure flip (This : in out ArrayUtil; intArray : Integer_Array_Access; width : Integer; height : Integer);
   function toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access) return Unbounded_String;
   procedure toStringFromTwoDimensionaArray (This : in out ArrayUtil; twoDimensionalIntArray : Integer_Array_Access_Array_Access);
   function toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access) return Unbounded_String;
   procedure toStringFromObjectArray (This : in out ArrayUtil; objectArray : Java_Object_Access_Array_Access);
   function toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access) return Unbounded_String;
   procedure toStringFromByteArray (This : in out ArrayUtil; byteArray : Short_Short_Integer_Array_Access);

end org.allbinary.util.ArrayUtil_Package;


