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
with java.util.Hashtable_Package; use java.util.Hashtable_Package;

package org.allbinary.util.ABHashtable_Package is

   package Hashtable_Package renames Standard.java.util.Hashtable_Package;

   type ABHashtable is tagged;
   type ABHashtable_Access is access all ABHashtable'Class;
   type ABHashtable_Access_Array is array (Natural range <>) of ABHashtable_Access;
   type ABHashtable_Access_Array_Access is access all ABHashtable_Access_Array;
   type ABHashtable_Access_Array_Access_Array is array (Natural range <>) of ABHashtable_Access_Array_Access;
   type ABHashtable_Access_Array_Access_Array_Access is access all ABHashtable_Access_Array_Access_Array;

   type ABHashtable is new Hashtable with null record;

   procedure Initialize (This : in out ABHashtable'Class; initialCapacity : Integer);
   function Create (initialCapacity : Integer) return ABHashtable_Access;
   procedure Initialize (This : in out ABHashtable'Class);
   function Create return ABHashtable_Access;

end org.allbinary.util.ABHashtable_Package;


