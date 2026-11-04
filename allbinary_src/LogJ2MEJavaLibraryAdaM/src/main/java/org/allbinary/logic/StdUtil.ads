-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.StdUtil_Package;
package org.allbinary.logic.StdUtil_Package_References is
   type StdUtil_Access is access all org.allbinary.logic.StdUtil_Package.StdUtil'Class;
   type StdUtil_Access_Array is array (Natural range <>) of StdUtil_Access;
   type StdUtil_Access_Array_Access is access all StdUtil_Access_Array;
   type StdUtil_Access_Array_Access_Array is array (Natural range <>) of StdUtil_Access_Array_Access;
   type StdUtil_Access_Array_Access_Array_Access is access all StdUtil_Access_Array_Access_Array;
end org.allbinary.logic.StdUtil_Package_References;

with org.allbinary.logic.StdUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABStack_Package_References;
limited with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ABVector_Package_References;

package org.allbinary.logic.StdUtil_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package ABStack_Package renames Standard.org.allbinary.util.ABStack_Package;
   package ABVector_Package renames Standard.org.allbinary.util.ABVector_Package;
   package Reference_Types is
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   use type ABStack_Access;
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   use type ABStack_Access_Array;
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   use type ABStack_Access_Array_Access;
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   use type ABStack_Access_Array_Access_Array;
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   use type ABStack_Access_Array_Access_Array_Access;
   subtype ABVector_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access;
   use type ABVector_Access;
   subtype ABVector_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array;
   use type ABVector_Access_Array;
   subtype ABVector_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access;
   use type ABVector_Access_Array_Access;
   subtype ABVector_Access_Array_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array;
   use type ABVector_Access_Array_Access_Array;
   subtype ABVector_Access_Array_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array_Access;
   use type ABVector_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StdUtil_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access;
   function "=" (Left, Right : StdUtil_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array;
   function "=" (Left, Right : StdUtil_Access_Array) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access;
   function "=" (Left, Right : StdUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StdUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";
   subtype StdUtil_Access_Array_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StdUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.StdUtil_Package_References."=";

   type StdUtil is new Java_Object with record
      EMPTY_VECTOR : ABVector_Access;
      NULL_TABLE : ABHashtable_Access;
   end record;
   instance : StdUtil_Access;

   procedure Initialize (This : in out StdUtil'Class);
   function Create return StdUtil_Access;
   function getInstance return StdUtil_Access;
   function createStack (This : in out StdUtil) return ABStack_Access;
   function createVector (This : in out StdUtil) return ABVector_Access;
   function createHashtable (This : in out StdUtil) return ABHashtable_Access;

end org.allbinary.logic.StdUtil_Package;


