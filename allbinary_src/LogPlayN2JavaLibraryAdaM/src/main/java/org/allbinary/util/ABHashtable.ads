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
with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with java.util.Hashtable_Package; use java.util.Hashtable_Package;
--  with java.util.Set_Package; use java.util.Set_Package;

package org.allbinary.util.ABHashtable_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package Hashtable_Package renames Standard.java.util.Hashtable_Package;

   type ABHashtable is tagged;
   type ABHashtable_Access is access all ABHashtable'Class;
   type ABHashtable_Access_Array is array (Natural range <>) of ABHashtable_Access;
   type ABHashtable_Access_Array_Access is access all ABHashtable_Access_Array;
   type ABHashtable_Access_Array_Access_Array is array (Natural range <>) of ABHashtable_Access_Array_Access;
   type ABHashtable_Access_Array_Access_Array_Access is access all ABHashtable_Access_Array_Access_Array;

   type ABHashtable is new Hashtable with null record;

   procedure Initialize (This : in out ABHashtable'Class);
   function Create return ABHashtable_Access;
   function size (This : in out ABHashtable) return Integer;
   function isEmpty (This : in out ABHashtable) return Boolean;
   function elements (This : in out ABHashtable) return Enumeration_Access;
   function contains (This : in out ABHashtable; value_Param : access Java_Object'Class) return Boolean;
   procedure contains (This : in out ABHashtable; value_Param : access Java_Object'Class);
   function containsValue (This : in out ABHashtable; value_Param : access Java_Object'Class) return Boolean;
   procedure containsValue (This : in out ABHashtable; value_Param : access Java_Object'Class);
   function containsKey (This : in out ABHashtable; key_Param : access Java_Object'Class) return Boolean;
   procedure containsKey (This : in out ABHashtable; key_Param : access Java_Object'Class);
   function get (This : in out ABHashtable; key_Param : access Java_Object'Class) return Java_Object_Access;
   procedure get (This : in out ABHashtable; key_Param : access Java_Object'Class);
   procedure clear (This : in out ABHashtable);
   function clone (This : in out ABHashtable) return Java_Object_Access;
   function toString (This : in out ABHashtable) return Unbounded_String;
   function equals (This : in out ABHashtable; obj_Param : access Java_Object'Class) return Boolean;
   procedure equals (This : in out ABHashtable; obj_Param : access Java_Object'Class);
   function hashCode (This : in out ABHashtable) return Integer;
   function contains (This : in out ABHashtable; Value : Unbounded_String) return Boolean;
   procedure contains (This : in out ABHashtable; Value : Unbounded_String);
   function containsValue (This : in out ABHashtable; Value : Unbounded_String) return Boolean;
   procedure containsValue (This : in out ABHashtable; Value : Unbounded_String);
   function containsKey (This : in out ABHashtable; Value : Unbounded_String) return Boolean;
   procedure containsKey (This : in out ABHashtable; Value : Unbounded_String);
   function get (This : in out ABHashtable; Value : Unbounded_String) return Java_Object_Access;
   procedure get (This : in out ABHashtable; Value : Unbounded_String);
   function equals (This : in out ABHashtable; Value : Unbounded_String) return Boolean;
   procedure equals (This : in out ABHashtable; Value : Unbounded_String);

end org.allbinary.util.ABHashtable_Package;


