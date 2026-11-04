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

limited with org.allbinary.util.ABHashtable_Package;
package org.allbinary.util.ABHashtable_Package_References is
   type ABHashtable_Access is access all org.allbinary.util.ABHashtable_Package.ABHashtable'Class;
   type ABHashtable_Access_Array is array (Natural range <>) of ABHashtable_Access;
   type ABHashtable_Access_Array_Access is access all ABHashtable_Access_Array;
   type ABHashtable_Access_Array_Access_Array is array (Natural range <>) of ABHashtable_Access_Array_Access;
   type ABHashtable_Access_Array_Access_Array_Access is access all ABHashtable_Access_Array_Access_Array;
end org.allbinary.util.ABHashtable_Package_References;

with org.allbinary.util.ABHashtable_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";

   type ABHashtable is new Hashtable with null record;

   procedure Initialize (This : in out ABHashtable'Class; initialCapacity : Integer);
   function Create (initialCapacity : Integer) return ABHashtable_Access;
   procedure Initialize (This : in out ABHashtable'Class);
   function Create return ABHashtable_Access;

end org.allbinary.util.ABHashtable_Package;


