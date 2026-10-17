--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.form.ScreenInfo_Package is


   type ScreenInfo is tagged;
   type ScreenInfo_Access is access all ScreenInfo'Class;
   type ScreenInfo_Access_Array is array (Natural range <>) of ScreenInfo_Access;
   type ScreenInfo_Access_Array_Access is access all ScreenInfo_Access_Array;

   type ScreenInfo is new Java_Object with record
      SMALL_WIDTH : Integer;
      SMALL_HEIGHT : Integer;
      MEDIUM_WIDTH : Integer;
      MEDIUM_HEIGHT : Integer;
   end record;
   instance : ScreenInfo_Access;

   procedure Initialize (This : in out ScreenInfo'Class);
   function Create return ScreenInfo_Access;
   function getInstance return ScreenInfo_Access;
   procedure getInstance;

end org.allbinary.graphics.form.ScreenInfo_Package;


