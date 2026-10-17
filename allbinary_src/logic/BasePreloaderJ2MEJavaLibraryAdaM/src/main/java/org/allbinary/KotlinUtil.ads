--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.KotlinUtil_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type KotlinUtil is tagged;
   type KotlinUtil_Access is access all KotlinUtil'Class;
   type KotlinUtil_Access_Array is array (Natural range <>) of KotlinUtil_Access;
   type KotlinUtil_Access_Array_Access is access all KotlinUtil_Access_Array;

   type KotlinUtil is new Java_Object with null record;

   procedure Initialize (This : in out KotlinUtil'Class);
   function Create return KotlinUtil_Access;
   function isKotlin return Boolean;
   function getShortName return Unbounded_String;

end org.allbinary.KotlinUtil_Package;


