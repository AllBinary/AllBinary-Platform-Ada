--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.animation.PathParser_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type PathParser is tagged;
   type PathParser_Access is access all PathParser'Class;
   type PathParser_Access_Array is array (Natural range <>) of PathParser_Access;
   type PathParser_Access_Array_Access is access all PathParser_Access_Array;

   type PathParser is new Java_Object with null record;

   procedure Initialize (This : in out PathParser'Class);
   function Create return PathParser_Access;
   function tokenize (d : Unbounded_String) return Unbounded_String_Array_Access;
   procedure tokenize (d : Unbounded_String);
   function parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer) return Integer;
   procedure parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer);
   function isCommand (tok : Unbounded_String) return Boolean;
   procedure isCommand (tok : Unbounded_String);

end org.allbinary.animation.PathParser_Package;


