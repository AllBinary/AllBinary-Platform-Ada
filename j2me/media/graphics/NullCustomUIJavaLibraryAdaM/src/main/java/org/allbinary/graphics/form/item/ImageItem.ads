--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.item.ImageItem_Package is


   type ImageItem is tagged;
   type ImageItem_Access is access all ImageItem'Class;
   type ImageItem_Access_Array is array (Natural range <>) of ImageItem_Access;
   type ImageItem_Access_Array_Access is access all ImageItem_Access_Array;
   type ImageItem_Access_Array_Access_Array is array (Natural range <>) of ImageItem_Access_Array_Access;
   type ImageItem_Access_Array_Access_Array_Access is access all ImageItem_Access_Array_Access_Array;

   type ImageItem is new Java_Object with null record;

   procedure Initialize (This : in out ImageItem'Class);
   function Create return ImageItem_Access;

end org.allbinary.graphics.form.item.ImageItem_Package;


