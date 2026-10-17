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
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package org.allbinary.logic.string_Id.StringMaker_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;

   type StringMaker is tagged;
   type StringMaker_Access is access all StringMaker'Class;
   type StringMaker_Access_Array is array (Natural range <>) of StringMaker_Access;
   type StringMaker_Access_Array_Access is access all StringMaker_Access_Array;

   type StringMaker is new Java_Object with record
      charArray : Character_Array_Access;
      currentLength : Integer;
   end record;

   procedure Initialize (This : in out StringMaker'Class);
   function Create return StringMaker_Access;
   function append (This : in out StringMaker; string_Id : Unbounded_String) return StringMaker_Access;
   procedure append (This : in out StringMaker; string_Id : Unbounded_String);
   function appendchar (This : in out StringMaker; c : Character) return StringMaker_Access;
   procedure appendchar (This : in out StringMaker; c : Character);
   function appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer) return StringMaker_Access;
   procedure appendCharArray (This : in out StringMaker; charArray : Character_Array_Access; start : Integer; end_Id : Integer);
   function appendbyte (This : in out StringMaker; b : Short_Short_Integer) return StringMaker_Access;
   procedure appendbyte (This : in out StringMaker; b : Short_Short_Integer);
   function appendshort (This : in out StringMaker; b : Short_Integer) return StringMaker_Access;
   procedure appendshort (This : in out StringMaker; b : Short_Integer);
   function appendint (This : in out StringMaker; i : Integer) return StringMaker_Access;
   procedure appendint (This : in out StringMaker; i : Integer);
   function appendlong (This : in out StringMaker; l : Long_Long_Integer) return StringMaker_Access;
   procedure appendlong (This : in out StringMaker; l : Long_Long_Integer);
   function appendfloat (This : in out StringMaker; f : Float) return StringMaker_Access;
   procedure appendfloat (This : in out StringMaker; f : Float);
   function appendboolean (This : in out StringMaker; bool : Boolean) return StringMaker_Access;
   procedure appendboolean (This : in out StringMaker; bool : Boolean);
   procedure ensureCapacity (This : in out StringMaker; minSize : Integer);
   function min (This : in out StringMaker; value : Integer; value2 : Integer) return Integer;
   procedure min (This : in out StringMaker; value : Integer; value2 : Integer);
   function delete (This : in out StringMaker; start : Integer; end_Id : Integer) return StringMaker_Access;
   procedure delete (This : in out StringMaker; start : Integer; end_Id : Integer);
   function length (This : in out StringMaker) return Integer;
   function toString (This : in out StringMaker) return Unbounded_String;

end org.allbinary.logic.string_Id.StringMaker_Package;


