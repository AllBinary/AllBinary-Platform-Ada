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
   type ABVector_Access_Array_Access_Array is array (Natural range <>) of ABVector_Access_Array_Access;
   type ABVector_Access_Array_Access_Array_Access is access all ABVector_Access_Array_Access_Array;

   type ABVector is new Vector with null record;

   procedure Initialize (This : in out ABVector'Class);
   function Create return ABVector_Access;
   procedure ensureCapacity (This : in out ABVector; minCapacity : Integer);
   function capacity (This : in out ABVector) return Integer;
   function size (This : in out ABVector) return Integer;
   function isEmpty (This : in out ABVector) return Boolean;
   function contains (This : in out ABVector; obj_Param : access Java_Object'Class) return Boolean;
   procedure contains (This : in out ABVector; obj_Param : access Java_Object'Class);
   function indexOf (This : in out ABVector; obj_Param : access Java_Object'Class) return Integer;
   procedure indexOf (This : in out ABVector; obj_Param : access Java_Object'Class);
   function lastIndexOf (This : in out ABVector; obj_Param : access Java_Object'Class) return Integer;
   procedure lastIndexOf (This : in out ABVector; obj_Param : access Java_Object'Class);
   function elementAt (This : in out ABVector; index : Integer) return Java_Object_Access;
   procedure elementAt (This : in out ABVector; index : Integer);
   function firstElement (This : in out ABVector) return Java_Object_Access;
   function lastElement (This : in out ABVector) return Java_Object_Access;
   procedure setElementAt (This : in out ABVector; obj_Param : access Java_Object'Class; index : Integer);
   procedure removeElementAt (This : in out ABVector; index : Integer);
   procedure addElement (This : in out ABVector; obj_Param : access Java_Object'Class);
   procedure insertElementAt (This : in out ABVector; obj_Param : access Java_Object'Class; index : Integer);
   function removeElement (This : in out ABVector; obj_Param : access Java_Object'Class) return Boolean;
   procedure removeElement (This : in out ABVector; obj_Param : access Java_Object'Class);
   procedure removeAllElements (This : in out ABVector);
   function clone (This : in out ABVector) return Java_Object_Access;
   function toArray (This : in out ABVector) return Java_Object_Access_Array_Access;
   function set (This : in out ABVector; index : Integer; element_Param : access Java_Object'Class) return Java_Object_Access;
   procedure set (This : in out ABVector; index : Integer; element_Param : access Java_Object'Class);
   function add (This : in out ABVector; element_Param : access Java_Object'Class) return Boolean;
   procedure add (This : in out ABVector; element_Param : access Java_Object'Class);
   function remove (This : in out ABVector; obj_Param : access Java_Object'Class) return Boolean;
   procedure remove (This : in out ABVector; obj_Param : access Java_Object'Class);
   procedure add (This : in out ABVector; index : Integer; element_Param : access Java_Object'Class);
   function remove (This : in out ABVector; index : Integer) return Java_Object_Access;
   procedure remove (This : in out ABVector; index : Integer);
   procedure clear (This : in out ABVector);
   function equals (This : in out ABVector; obj_Param : access Java_Object'Class) return Boolean;
   procedure equals (This : in out ABVector; obj_Param : access Java_Object'Class);
   function hashCode (This : in out ABVector) return Integer;
   function toString (This : in out ABVector) return Unbounded_String;
   procedure removeRange (This : in out ABVector; fromIndex : Integer; toIndex : Integer);
   function contains (This : in out ABVector; Value : Unbounded_String) return Boolean;
   procedure contains (This : in out ABVector; Value : Unbounded_String);
   function indexOf (This : in out ABVector; Value : Unbounded_String) return Integer;
   procedure indexOf (This : in out ABVector; Value : Unbounded_String);
   function lastIndexOf (This : in out ABVector; Value : Unbounded_String) return Integer;
   procedure lastIndexOf (This : in out ABVector; Value : Unbounded_String);
   function removeElement (This : in out ABVector; Value : Unbounded_String) return Boolean;
   procedure removeElement (This : in out ABVector; Value : Unbounded_String);
   function remove (This : in out ABVector; Value : Unbounded_String) return Boolean;
   procedure remove (This : in out ABVector; Value : Unbounded_String);
   function equals (This : in out ABVector; Value : Unbounded_String) return Boolean;
   procedure equals (This : in out ABVector; Value : Unbounded_String);

end org.allbinary.util.ABVector_Package;


