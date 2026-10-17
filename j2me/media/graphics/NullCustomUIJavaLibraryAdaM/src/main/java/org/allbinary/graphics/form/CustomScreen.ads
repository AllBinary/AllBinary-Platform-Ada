--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.form.CustomDisplayable_Package; use org.allbinary.graphics.form.CustomDisplayable_Package;

package org.allbinary.graphics.form.CustomScreen_Package is


   type CustomScreen is tagged;
   type CustomScreen_Access is access all CustomScreen'Class;
   type CustomScreen_Access_Array is array (Natural range <>) of CustomScreen_Access;
   type CustomScreen_Access_Array_Access is access all CustomScreen_Access_Array;

   type CustomScreen is new CustomDisplayable with null record;

   procedure Initialize (This : in out CustomScreen'Class);
   function Create return CustomScreen_Access;

end org.allbinary.graphics.form.CustomScreen_Package;


