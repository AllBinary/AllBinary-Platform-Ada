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

limited with org.allbinary.util.ABHashMap_Package;
package org.allbinary.util.ABHashMap_Package_References is
   type ABHashMap_Access is access all org.allbinary.util.ABHashMap_Package.ABHashMap'Class;
   type ABHashMap_Access_Array is array (Natural range <>) of ABHashMap_Access;
   type ABHashMap_Access_Array_Access is access all ABHashMap_Access_Array;
   type ABHashMap_Access_Array_Access_Array is array (Natural range <>) of ABHashMap_Access_Array_Access;
   type ABHashMap_Access_Array_Access_Array_Access is access all ABHashMap_Access_Array_Access_Array;
end org.allbinary.util.ABHashMap_Package_References;

with org.allbinary.util.ABHashMap_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.util.ABHashMap_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABHashMap_Access is org.allbinary.util.ABHashMap_Package_References.ABHashMap_Access;
   function "=" (Left, Right : ABHashMap_Access) return Boolean renames org.allbinary.util.ABHashMap_Package_References."=";
   subtype ABHashMap_Access_Array is org.allbinary.util.ABHashMap_Package_References.ABHashMap_Access_Array;
   function "=" (Left, Right : ABHashMap_Access_Array) return Boolean renames org.allbinary.util.ABHashMap_Package_References."=";
   subtype ABHashMap_Access_Array_Access is org.allbinary.util.ABHashMap_Package_References.ABHashMap_Access_Array_Access;
   function "=" (Left, Right : ABHashMap_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashMap_Package_References."=";
   subtype ABHashMap_Access_Array_Access_Array is org.allbinary.util.ABHashMap_Package_References.ABHashMap_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashMap_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashMap_Package_References."=";
   subtype ABHashMap_Access_Array_Access_Array_Access is org.allbinary.util.ABHashMap_Package_References.ABHashMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashMap_Package_References."=";

   type ABHashMap is new HashMap with null record;

   procedure Initialize (This : in out ABHashMap'Class);
   function Create return ABHashMap_Access;

end org.allbinary.util.ABHashMap_Package;


