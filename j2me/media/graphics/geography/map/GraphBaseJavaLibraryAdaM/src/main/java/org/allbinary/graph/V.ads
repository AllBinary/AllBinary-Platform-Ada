--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graph.V_Package is


   type V is tagged;
   type V_Access is access all V'Class;
   type V_Access_Array is array (Natural range <>) of V_Access;
   type V_Access_Array_Access is access all V_Access_Array;
   type V_Access_Array_Access_Array is array (Natural range <>) of V_Access_Array_Access;
   type V_Access_Array_Access_Array_Access is access all V_Access_Array_Access_Array;

   type V is new Java_Object with null record;

   procedure Initialize (This : in out V'Class);
   function Create return V_Access;
   function getId (This : in out V) return Integer;

end org.allbinary.graph.V_Package;


