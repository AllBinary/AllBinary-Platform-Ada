--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.AndroidGameKey_Package is


   type AndroidGameKey is tagged;
   type AndroidGameKey_Access is access all AndroidGameKey'Class;
   type AndroidGameKey_Access_Array is array (Natural range <>) of AndroidGameKey_Access;
   type AndroidGameKey_Access_Array_Access is access all AndroidGameKey_Access_Array;
   type AndroidGameKey_Access_Array_Access_Array is array (Natural range <>) of AndroidGameKey_Access_Array_Access;
   type AndroidGameKey_Access_Array_Access_Array_Access is access all AndroidGameKey_Access_Array_Access_Array;

   type AndroidGameKey is new Input_Package.Input with null record;

   procedure Initialize (This : in out AndroidGameKey'Class; keyCode : Integer; name : Unbounded_String);
   function Create (keyCode : Integer; name : Unbounded_String) return AndroidGameKey_Access;
   function toString (This : in out AndroidGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.AndroidGameKey_Package;


