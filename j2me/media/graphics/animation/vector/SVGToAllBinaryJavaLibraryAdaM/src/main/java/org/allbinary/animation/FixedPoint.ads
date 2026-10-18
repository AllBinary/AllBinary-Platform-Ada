--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.FixedPoint_Package is


   type FixedPoint is tagged;
   type FixedPoint_Access is access all FixedPoint'Class;
   type FixedPoint_Access_Array is array (Natural range <>) of FixedPoint_Access;
   type FixedPoint_Access_Array_Access is access all FixedPoint_Access_Array;
   type FixedPoint_Access_Array_Access_Array is array (Natural range <>) of FixedPoint_Access_Array_Access;
   type FixedPoint_Access_Array_Access_Array_Access is access all FixedPoint_Access_Array_Access_Array;

   type FixedPoint is new Java_Object with record
      ONE : Integer;
   end record;
   instance : FixedPoint_Access;

   procedure Initialize (This : in out FixedPoint'Class);
   function Create return FixedPoint_Access;
   function getInstance return FixedPoint_Access;
   function toFixed (This : in out FixedPoint; val : Long_Float) return Integer;
   procedure toFixed (This : in out FixedPoint; val : Long_Float);
   function toFixed (This : in out FixedPoint; val : Float) return Integer;
   procedure toFixed (This : in out FixedPoint; val : Float);
   function mul (This : in out FixedPoint; a : Integer; b : Integer) return Integer;
   procedure mul (This : in out FixedPoint; a : Integer; b : Integer);
   function div (This : in out FixedPoint; a : Integer; b : Integer) return Integer;
   procedure div (This : in out FixedPoint; a : Integer; b : Integer);
   function toInt (This : in out FixedPoint; fixed : Integer) return Integer;
   procedure toInt (This : in out FixedPoint; fixed : Integer);

end org.allbinary.animation.FixedPoint_Package;


