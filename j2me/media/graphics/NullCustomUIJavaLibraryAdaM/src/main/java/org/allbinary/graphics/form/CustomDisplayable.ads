--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.CustomDisplayable_Package is


   type CustomDisplayable is tagged;
   type CustomDisplayable_Access is access all CustomDisplayable'Class;
   type CustomDisplayable_Access_Array is array (Natural range <>) of CustomDisplayable_Access;
   type CustomDisplayable_Access_Array_Access is access all CustomDisplayable_Access_Array;

   type CustomDisplayable is new Java_Object with null record;

   procedure Initialize (This : in out CustomDisplayable'Class);
   function Create return CustomDisplayable_Access;
   procedure setTitle (This : in out CustomDisplayable; title : Unbounded_String);

end org.allbinary.graphics.form.CustomDisplayable_Package;


