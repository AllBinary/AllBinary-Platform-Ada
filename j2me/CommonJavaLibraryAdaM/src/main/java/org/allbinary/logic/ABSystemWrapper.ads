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

package org.allbinary.logic.ABSystemWrapper_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABSystemWrapper is tagged;
   type ABSystemWrapper_Access is access all ABSystemWrapper'Class;
   type ABSystemWrapper_Access_Array is array (Natural range <>) of ABSystemWrapper_Access;
   type ABSystemWrapper_Access_Array_Access is access all ABSystemWrapper_Access_Array;

   type ABSystemWrapper is new Java_Object with null record;
   instance : ABSystemWrapper_Access;

   procedure Initialize (This : in out ABSystemWrapper'Class);
   function Create return ABSystemWrapper_Access;
   function getInstance return ABSystemWrapper_Access;
   procedure getInstance;
   procedure arraycopy (This : in out ABSystemWrapper; src : Java_Object_Access; srcPos : Integer; dest : Java_Object_Access; destPos : Integer; length : Integer);
   function currentTimeMillis (This : in out ABSystemWrapper) return Long_Long_Integer;
   procedure currentTimeMillis (This : in out ABSystemWrapper);

end org.allbinary.logic.ABSystemWrapper_Package;


