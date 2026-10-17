--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.junit.jupiter.api.Assertions_Package; use org.junit.jupiter.api.Assertions_Package;
with org.junit.jupiter.api.DisplayName_Package; use org.junit.jupiter.api.DisplayName_Package;
with org.junit.jupiter.api.Test_Package; use org.junit.jupiter.api.Test_Package;

package BooleanTest_Package is

   package Assertions_Package renames org.junit.jupiter.api.Assertions_Package;
   package DisplayName_Package renames org.junit.jupiter.api.DisplayName_Package;
   package Test_Package renames org.junit.jupiter.api.Test_Package;

   type BooleanTest is tagged;
   type BooleanTest_Access is access all BooleanTest'Class;
   type BooleanTest_Access_Array is array (Natural range <>) of BooleanTest_Access;
   type BooleanTest_Access_Array_Access is access all BooleanTest_Access_Array;

   type BooleanTest is new Java_Object with null record;

   procedure Initialize (This : in out BooleanTest'Class);
   function Create return BooleanTest_Access;

end BooleanTest_Package;


