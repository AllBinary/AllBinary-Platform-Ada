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
--  with java.util.Vector_Package; use java.util.Vector_Package;
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;

package org.allbinary.util.ABVector_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;

   type ABVector is tagged;
   type ABVector_Access is access all ABVector'Class;
   type ABVector_Access_Array is array (Natural range <>) of ABVector_Access;
   type ABVector_Access_Array_Access is access all ABVector_Access_Array;

   type ABVector is new Vector with null record;

   procedure Initialize (This : in out ABVector'Class);
   function Create return ABVector_Access;
   procedure ensureCapacity (This : in out ABVector; minCapacity : Integer);
   function capacity (This : in out ABVector) return Integer;
   procedure capacity (This : in out ABVector);
   function size (This : in out ABVector) return Integer;
   procedure size (This : in out ABVector);
   function isEmpty (This : in out ABVector) return Boolean;
   procedure isEmpty (This : in out ABVector);
   function contains (This : in out ABVector; obj : Java_Object_Access) return Boolean;
   procedure contains (This : in out ABVector; obj : Java_Object_Access);
   function indexOf (This : in out ABVector; obj : Java_Object_Access) return Integer;
   procedure indexOf (This : in out ABVector; obj : Java_Object_Access);
   function lastIndexOf (This : in out ABVector; obj : Java_Object_Access) return Integer;
   procedure lastIndexOf (This : in out ABVector; obj : Java_Object_Access);
   function elementAt (This : in out ABVector; index : Integer) return Java_Object_Access;
   procedure elementAt (This : in out ABVector; index : Integer);
   function firstElement (This : in out ABVector) return Java_Object_Access;
   procedure firstElement (This : in out ABVector);
   function lastElement (This : in out ABVector) return Java_Object_Access;
   procedure lastElement (This : in out ABVector);
   procedure setElementAt (This : in out ABVector; obj : Java_Object_Access; index : Integer);
   procedure removeElementAt (This : in out ABVector; index : Integer);
   procedure addElement (This : in out ABVector; obj : Java_Object_Access);
   procedure insertElementAt (This : in out ABVector; obj : Java_Object_Access; index : Integer);
   function removeElement (This : in out ABVector; obj : Java_Object_Access) return Boolean;
   procedure removeElement (This : in out ABVector; obj : Java_Object_Access);
   procedure removeAllElements (This : in out ABVector);
   function clone (This : in out ABVector) return Java_Object_Access;
   procedure clone (This : in out ABVector);
   function toArray (This : in out ABVector) return Java_Object_Access_Array_Access;
   procedure toArray (This : in out ABVector);
   function set (This : in out ABVector; index : Integer; element : Java_Object_Access) return Java_Object_Access;
   procedure set (This : in out ABVector; index : Integer; element : Java_Object_Access);
   function add (This : in out ABVector; element : Java_Object_Access) return Boolean;
   procedure add (This : in out ABVector; element : Java_Object_Access);
   function remove (This : in out ABVector; obj : Java_Object_Access) return Boolean;
   procedure remove (This : in out ABVector; obj : Java_Object_Access);
   procedure add (This : in out ABVector; index : Integer; element : Java_Object_Access);
   function remove (This : in out ABVector; index : Integer) return Java_Object_Access;
   procedure remove (This : in out ABVector; index : Integer);
   procedure clear (This : in out ABVector);
   function equals (This : in out ABVector; obj : Java_Object_Access) return Boolean;
   procedure equals (This : in out ABVector; obj : Java_Object_Access);
   function hashCode (This : in out ABVector) return Integer;
   procedure hashCode (This : in out ABVector);
   function toString (This : in out ABVector) return Unbounded_String;
   procedure toString (This : in out ABVector);
   procedure removeRange (This : in out ABVector; fromIndex : Integer; toIndex : Integer);

end org.allbinary.util.ABVector_Package;


