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

package org.allbinary.logic.math.MathUtil_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;

   type MathUtil is tagged;
   type MathUtil_Access is access all MathUtil'Class;
   type MathUtil_Access_Array is array (Natural range <>) of MathUtil_Access;
   type MathUtil_Access_Array_Access is access all MathUtil_Access_Array;

   type MathUtil is new Java_Object with record
      ACCURACY : Integer;
   end record;
   instance : MathUtil_Access;

   procedure Initialize (This : in out MathUtil'Class);
   function Create return MathUtil_Access;
   function getInstance return MathUtil_Access;
   procedure getInstance;
   function getTotalDigits (This : in out MathUtil; digits_Id : Integer) return Integer;
   procedure getTotalDigits (This : in out MathUtil; digits_Id : Integer);
   function sqrt (This : in out MathUtil; value : Integer) return Integer;
   procedure sqrt (This : in out MathUtil; value : Integer);
   function sqrtd (This : in out MathUtil; x : Integer) return Long_Float;
   procedure sqrtd (This : in out MathUtil; x : Integer);
   function abs_Id (This : in out MathUtil; value : Integer) return Integer;
   procedure abs_Id (This : in out MathUtil; value : Integer);
   function abslong (This : in out MathUtil; value : Long_Long_Integer) return Long_Long_Integer;
   procedure abslong (This : in out MathUtil; value : Long_Long_Integer);
   function min (This : in out MathUtil; value : Integer; value2 : Integer) return Integer;
   procedure min (This : in out MathUtil; value : Integer; value2 : Integer);
   function max (This : in out MathUtil; value : Integer; value2 : Integer) return Integer;
   procedure max (This : in out MathUtil; value : Integer; value2 : Integer);

end org.allbinary.logic.math.MathUtil_Package;


