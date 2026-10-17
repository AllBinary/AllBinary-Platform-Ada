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

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;

   type ABHashMap is tagged;
   type ABHashMap_Access is access all ABHashMap'Class;
   type ABHashMap_Access_Array is array (Natural range <>) of ABHashMap_Access;
   type ABHashMap_Access_Array_Access is access all ABHashMap_Access_Array;

   type ABHashMap is new HashMap with null record;

   procedure Initialize (This : in out ABHashMap'Class);
   function Create return ABHashMap_Access;
   function size (This : in out ABHashMap) return Integer;
   function isEmpty (This : in out ABHashMap) return Boolean;
   function get (This : in out ABHashMap; key_Param : access Java_Object'Class) return Java_Object_Access;
   procedure get (This : in out ABHashMap; key_Param : access Java_Object'Class);
   function containsKey (This : in out ABHashMap; key_Param : access Java_Object'Class) return Boolean;
   procedure containsKey (This : in out ABHashMap; key_Param : access Java_Object'Class);
   function put (This : in out ABHashMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class) return Java_Object_Access;
   procedure put (This : in out ABHashMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class);
   procedure putAll (This : in out ABHashMap; map_Param : access Map_Package.Map'Class);
   function remove (This : in out ABHashMap; key_Param : access Java_Object'Class) return Java_Object_Access;
   procedure remove (This : in out ABHashMap; key_Param : access Java_Object'Class);
   procedure clear (This : in out ABHashMap);
   function containsValue (This : in out ABHashMap; value_Param : access Java_Object'Class) return Boolean;
   procedure containsValue (This : in out ABHashMap; value_Param : access Java_Object'Class);
   function keySet (This : in out ABHashMap) return Set_Access;
   function entrySet (This : in out ABHashMap) return Set_Access;
   function getOrDefault (This : in out ABHashMap; key_Param : access Java_Object'Class; defaultValue_Param : access Java_Object'Class) return Java_Object_Access;
   procedure getOrDefault (This : in out ABHashMap; key_Param : access Java_Object'Class; defaultValue_Param : access Java_Object'Class);
   function putIfAbsent (This : in out ABHashMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class) return Java_Object_Access;
   procedure putIfAbsent (This : in out ABHashMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class);
   function clone (This : in out ABHashMap) return Java_Object_Access;

end org.allbinary.util.ABHashMap_Package;


