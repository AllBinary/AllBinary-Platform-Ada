--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package AppTest_Package is


   type AppTest is tagged;
   type AppTest_Access is access all AppTest'Class;
   type AppTest_Access_Array is array (Natural range <>) of AppTest_Access;
   type AppTest_Access_Array_Access is access all AppTest_Access_Array;
   type AppTest_Access_Array_Access_Array is array (Natural range <>) of AppTest_Access_Array_Access;
   type AppTest_Access_Array_Access_Array_Access is access all AppTest_Access_Array_Access_Array;

   type AppTest is new Java_Object with null record;

   procedure Initialize (This : in out AppTest'Class);
   function Create return AppTest_Access;
   procedure testAddition (This : in out AppTest);
   procedure testStringEquality (This : in out AppTest);
   procedure testBooleanAssertions (This : in out AppTest);

end AppTest_Package;


