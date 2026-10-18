--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.AndroidKeyFactory_Package; use org.allbinary.game.input.AndroidKeyFactory_Package;

package org.allbinary.game.input.AndroidAPI9KeyFactory_Package is


   type AndroidAPI9KeyFactory is tagged;
   type AndroidAPI9KeyFactory_Access is access all AndroidAPI9KeyFactory'Class;
   type AndroidAPI9KeyFactory_Access_Array is array (Natural range <>) of AndroidAPI9KeyFactory_Access;
   type AndroidAPI9KeyFactory_Access_Array_Access is access all AndroidAPI9KeyFactory_Access_Array;
   type AndroidAPI9KeyFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidAPI9KeyFactory_Access_Array_Access;
   type AndroidAPI9KeyFactory_Access_Array_Access_Array_Access is access all AndroidAPI9KeyFactory_Access_Array_Access_Array;

   type AndroidAPI9KeyFactory is new AndroidKeyFactory with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out AndroidAPI9KeyFactory'Class);
   function Create return AndroidAPI9KeyFactory_Access;
   function getInstance return AndroidAPI9KeyFactory_Access;

end org.allbinary.game.input.AndroidAPI9KeyFactory_Package;


