--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.AndroidAPI9KeyFactory_Package; use org.allbinary.game.input.AndroidAPI9KeyFactory_Package;

package org.allbinary.game.input.AndroidAPI12KeyFactory_Package is


   type AndroidAPI12KeyFactory is tagged;
   type AndroidAPI12KeyFactory_Access is access all AndroidAPI12KeyFactory'Class;
   type AndroidAPI12KeyFactory_Access_Array is array (Natural range <>) of AndroidAPI12KeyFactory_Access;
   type AndroidAPI12KeyFactory_Access_Array_Access is access all AndroidAPI12KeyFactory_Access_Array;
   type AndroidAPI12KeyFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidAPI12KeyFactory_Access_Array_Access;
   type AndroidAPI12KeyFactory_Access_Array_Access_Array_Access is access all AndroidAPI12KeyFactory_Access_Array_Access_Array;

   type AndroidAPI12KeyFactory is new AndroidAPI9KeyFactory with null record;
   instance12 : Java_Object_Access;

   procedure Initialize (This : in out AndroidAPI12KeyFactory'Class);
   function Create return AndroidAPI12KeyFactory_Access;
   function getAPI12Instance return AndroidAPI12KeyFactory_Access;

end org.allbinary.game.input.AndroidAPI12KeyFactory_Package;


