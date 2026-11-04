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

limited with org.allbinary.util.ABHashSet_Package;
package org.allbinary.util.ABHashSet_Package_References is
   type ABHashSet_Access is access all org.allbinary.util.ABHashSet_Package.ABHashSet'Class;
   type ABHashSet_Access_Array is array (Natural range <>) of ABHashSet_Access;
   type ABHashSet_Access_Array_Access is access all ABHashSet_Access_Array;
   type ABHashSet_Access_Array_Access_Array is array (Natural range <>) of ABHashSet_Access_Array_Access;
   type ABHashSet_Access_Array_Access_Array_Access is access all ABHashSet_Access_Array_Access_Array;
end org.allbinary.util.ABHashSet_Package_References;

with org.allbinary.util.ABHashSet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashSet_Package; use java.util.HashSet_Package;

package org.allbinary.util.ABHashSet_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABHashSet_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access;
   function "=" (Left, Right : ABHashSet_Access) return Boolean renames org.allbinary.util.ABHashSet_Package_References."=";
   subtype ABHashSet_Access_Array is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array;
   function "=" (Left, Right : ABHashSet_Access_Array) return Boolean renames org.allbinary.util.ABHashSet_Package_References."=";
   subtype ABHashSet_Access_Array_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access;
   function "=" (Left, Right : ABHashSet_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashSet_Package_References."=";
   subtype ABHashSet_Access_Array_Access_Array is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashSet_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashSet_Package_References."=";
   subtype ABHashSet_Access_Array_Access_Array_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashSet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashSet_Package_References."=";

   type ABHashSet is new Java_Object with null record;

   procedure Initialize (This : in out ABHashSet'Class);
   function Create return ABHashSet_Access;

end org.allbinary.util.ABHashSet_Package;


