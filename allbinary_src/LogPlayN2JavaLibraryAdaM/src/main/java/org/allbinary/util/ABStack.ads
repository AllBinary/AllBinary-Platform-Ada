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
--  with java.util.Stack_Package; use java.util.Stack_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.ABStack_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABStack is tagged;
   type ABStack_Access is access all ABStack'Class;
   type ABStack_Access_Array is array (Natural range <>) of ABStack_Access;
   type ABStack_Access_Array_Access is access all ABStack_Access_Array;

   type ABStack is new Stack with null record;

   procedure Initialize (This : in out ABStack'Class);
   function Create return ABStack_Access;
   function push (This : in out ABStack; item : Java_Object_Access) return Java_Object_Access;
   procedure push (This : in out ABStack; item : Java_Object_Access);
   function pop (This : in out ABStack) return Java_Object_Access;
   procedure pop (This : in out ABStack);
   function peek (This : in out ABStack) return Java_Object_Access;
   procedure peek (This : in out ABStack);
   function empty (This : in out ABStack) return Boolean;
   procedure empty (This : in out ABStack);
   function search (This : in out ABStack; obj : Java_Object_Access) return Integer;
   procedure search (This : in out ABStack; obj : Java_Object_Access);
   function removeElement (This : in out ABStack; obj : Java_Object_Access) return Boolean;
   procedure removeElement (This : in out ABStack; obj : Java_Object_Access);

end org.allbinary.util.ABStack_Package;


