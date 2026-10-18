--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package java.lang.Deprecated_Package is


   type Deprecated is tagged;
   type Deprecated_Access is access all Deprecated'Class;
   type Deprecated_Access_Array is array (Natural range <>) of Deprecated_Access;
   type Deprecated_Access_Array_Access is access all Deprecated_Access_Array;
   type Deprecated_Access_Array_Access_Array is array (Natural range <>) of Deprecated_Access_Array_Access;
   type Deprecated_Access_Array_Access_Array_Access is access all Deprecated_Access_Array_Access_Array;

   type Deprecated is new Java_Object with null record;

   procedure Initialize (This : in out Deprecated'Class);
   function Create return Deprecated_Access;

end java.lang.Deprecated_Package;


