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
with java.util.Vector_Package; use java.util.Vector_Package;

package org.allbinary.util.ABVector_Package is

   package Vector_Package renames Standard.java.util.Vector_Package;

   type ABVector is tagged;
   type ABVector_Access is access all ABVector'Class;
   type ABVector_Access_Array is array (Natural range <>) of ABVector_Access;
   type ABVector_Access_Array_Access is access all ABVector_Access_Array;

   type ABVector is new Vector with null record;

   procedure Initialize (This : in out ABVector'Class);
   function Create return ABVector_Access;

end org.allbinary.util.ABVector_Package;


