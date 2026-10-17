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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
--  with java.util.Hashtable_Package; use java.util.Hashtable_Package;
--  with java.util.Map_Package; use java.util.Map_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.ABHashtable_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABHashtable is tagged;
   type ABHashtable_Access is access all ABHashtable'Class;
   type ABHashtable_Access_Array is array (Natural range <>) of ABHashtable_Access;
   type ABHashtable_Access_Array_Access is access all ABHashtable_Access_Array;

   type ABHashtable is new Hashtable with null record;

   procedure Initialize (This : in out ABHashtable'Class);
   function Create return ABHashtable_Access;
   function size (This : in out ABHashtable) return Integer;
   procedure size (This : in out ABHashtable);
   function isEmpty (This : in out ABHashtable) return Boolean;
   procedure isEmpty (This : in out ABHashtable);
   function elements (This : in out ABHashtable) return Enumeration_Access;
   procedure elements (This : in out ABHashtable);
   function contains (This : in out ABHashtable; value : Java_Object_Access) return Boolean;
   procedure contains (This : in out ABHashtable; value : Java_Object_Access);
   function containsValue (This : in out ABHashtable; value : Java_Object_Access) return Boolean;
   procedure containsValue (This : in out ABHashtable; value : Java_Object_Access);
   function containsKey (This : in out ABHashtable; key : Java_Object_Access) return Boolean;
   procedure containsKey (This : in out ABHashtable; key : Java_Object_Access);
   function get (This : in out ABHashtable; key : Java_Object_Access) return Java_Object_Access;
   procedure get (This : in out ABHashtable; key : Java_Object_Access);
   procedure clear (This : in out ABHashtable);
   function clone (This : in out ABHashtable) return Java_Object_Access;
   procedure clone (This : in out ABHashtable);
   function toString (This : in out ABHashtable) return Unbounded_String;
   procedure toString (This : in out ABHashtable);
   function equals (This : in out ABHashtable; obj : Java_Object_Access) return Boolean;
   procedure equals (This : in out ABHashtable; obj : Java_Object_Access);
   function hashCode (This : in out ABHashtable) return Integer;
   procedure hashCode (This : in out ABHashtable);

end org.allbinary.util.ABHashtable_Package;


