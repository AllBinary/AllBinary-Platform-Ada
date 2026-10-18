--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ChoiceGroupItem_Package is


   type ChoiceGroupItem is tagged;
   type ChoiceGroupItem_Access is access all ChoiceGroupItem'Class;
   type ChoiceGroupItem_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access;
   type ChoiceGroupItem_Access_Array_Access is access all ChoiceGroupItem_Access_Array;
   type ChoiceGroupItem_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupItem_Access_Array_Access;
   type ChoiceGroupItem_Access_Array_Access_Array_Access is access all ChoiceGroupItem_Access_Array_Access_Array;

   type ChoiceGroupItem is new Java_Object with null record;

   procedure Initialize (This : in out ChoiceGroupItem'Class);
   function Create return ChoiceGroupItem_Access;

end org.allbinary.graphics.form.item.ChoiceGroupItem_Package;


