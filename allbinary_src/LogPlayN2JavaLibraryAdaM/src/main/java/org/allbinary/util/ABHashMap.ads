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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Map_Package; use java.util.Map_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.ABHashMap_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABHashMap is tagged;
   type ABHashMap_Access is access all ABHashMap'Class;
   type ABHashMap_Access_Array is array (Natural range <>) of ABHashMap_Access;
   type ABHashMap_Access_Array_Access is access all ABHashMap_Access_Array;

   type ABHashMap is new HashMap with null record;

   procedure Initialize (This : in out ABHashMap'Class);
   function Create return ABHashMap_Access;
   function size (This : in out ABHashMap) return Integer;
   procedure size (This : in out ABHashMap);
   function isEmpty (This : in out ABHashMap) return Boolean;
   procedure isEmpty (This : in out ABHashMap);
   function get (This : in out ABHashMap; key : Java_Object_Access) return Java_Object_Access;
   procedure get (This : in out ABHashMap; key : Java_Object_Access);
   function containsKey (This : in out ABHashMap; key : Java_Object_Access) return Boolean;
   procedure containsKey (This : in out ABHashMap; key : Java_Object_Access);
   function put (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) return Java_Object_Access;
   procedure put (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access);
   procedure putAll (This : in out ABHashMap; map : Map_Access);
   function remove (This : in out ABHashMap; key : Java_Object_Access) return Java_Object_Access;
   procedure remove (This : in out ABHashMap; key : Java_Object_Access);
   procedure clear (This : in out ABHashMap);
   function containsValue (This : in out ABHashMap; value : Java_Object_Access) return Boolean;
   procedure containsValue (This : in out ABHashMap; value : Java_Object_Access);
   function keySet (This : in out ABHashMap) return Set_Access;
   procedure keySet (This : in out ABHashMap);
   function entrySet (This : in out ABHashMap) return Set_Access;
   procedure entrySet (This : in out ABHashMap);
   function getOrDefault (This : in out ABHashMap; key : Java_Object_Access; defaultValue : Java_Object_Access) return Java_Object_Access;
   procedure getOrDefault (This : in out ABHashMap; key : Java_Object_Access; defaultValue : Java_Object_Access);
   function putIfAbsent (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access) return Java_Object_Access;
   procedure putIfAbsent (This : in out ABHashMap; key : Java_Object_Access; value : Java_Object_Access);
   function clone (This : in out ABHashMap) return Java_Object_Access;
   procedure clone (This : in out ABHashMap);

end org.allbinary.util.ABHashMap_Package;


