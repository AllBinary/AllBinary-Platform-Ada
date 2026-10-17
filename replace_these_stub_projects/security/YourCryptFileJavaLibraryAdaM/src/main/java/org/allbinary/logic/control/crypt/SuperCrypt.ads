--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.crypt.SuperCrypt_Package is


   type SuperCrypt is tagged;
   type SuperCrypt_Access is access all SuperCrypt'Class;
   type SuperCrypt_Access_Array is array (Natural range <>) of SuperCrypt_Access;
   type SuperCrypt_Access_Array_Access is access all SuperCrypt_Access_Array;

   type SuperCrypt is new Java_Object with null record;
   KEYMAX : Integer;

   procedure Initialize (This : in out SuperCrypt'Class; key : Integer);
   function Create (key : Integer) return SuperCrypt_Access;
   function encrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure encrypt (This : in out SuperCrypt; value : Unbounded_String);
   function decrypt (This : in out SuperCrypt; value : Unbounded_String) return Unbounded_String;
   procedure decrypt (This : in out SuperCrypt; value : Unbounded_String);

end org.allbinary.logic.control.crypt.SuperCrypt_Package;


