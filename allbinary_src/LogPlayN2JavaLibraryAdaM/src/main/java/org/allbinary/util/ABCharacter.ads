-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.ABCharacter_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABCharacter is tagged;
   type ABCharacter_Access is access all ABCharacter'Class;
   type ABCharacter_Access_Array is array (Natural range <>) of ABCharacter_Access;
   type ABCharacter_Access_Array_Access is access all ABCharacter_Access_Array;

   type ABCharacter is new Java_Object with null record;

   procedure Initialize (This : in out ABCharacter'Class);
   function Create return ABCharacter_Access;
   function toString (ch : Character) return Unbounded_String;
   procedure toString (ch : Character);

end org.allbinary.util.ABCharacter_Package;


