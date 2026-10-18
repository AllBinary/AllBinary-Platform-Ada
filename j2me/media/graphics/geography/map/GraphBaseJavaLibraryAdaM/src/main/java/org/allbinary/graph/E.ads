--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graph.E_Package is


   type E is tagged;
   type E_Access is access all E'Class;
   type E_Access_Array is array (Natural range <>) of E_Access;
   type E_Access_Array_Access is access all E_Access_Array;
   type E_Access_Array_Access_Array is array (Natural range <>) of E_Access_Array_Access;
   type E_Access_Array_Access_Array_Access is access all E_Access_Array_Access_Array;

   type E is new Java_Object with null record;
   e : E_Access;

   procedure Initialize (This : in out E'Class);
   function Create return E_Access;
   function newInstance (This : in out E) return E_Access;

end org.allbinary.graph.E_Package;


