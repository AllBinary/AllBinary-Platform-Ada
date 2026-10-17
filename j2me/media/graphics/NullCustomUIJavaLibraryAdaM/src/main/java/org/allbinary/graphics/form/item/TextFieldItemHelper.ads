--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.TextFieldItemHelper_Package is


   type TextFieldItemHelper is tagged;
   type TextFieldItemHelper_Access is access all TextFieldItemHelper'Class;
   type TextFieldItemHelper_Access_Array is array (Natural range <>) of TextFieldItemHelper_Access;
   type TextFieldItemHelper_Access_Array_Access is access all TextFieldItemHelper_Access_Array;

   type TextFieldItemHelper is new Java_Object with null record;

   procedure Initialize (This : in out TextFieldItemHelper'Class);
   function Create return TextFieldItemHelper_Access;

end org.allbinary.graphics.form.item.TextFieldItemHelper_Package;


