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

with AllBinary_Java;
limited with org.allbinary.util.ABPriorityQueue_Package;
package org.allbinary.util.ABPriorityQueue_Package_References is
   type ABPriorityQueue_Access is access all org.allbinary.util.ABPriorityQueue_Package.ABPriorityQueue'Class;
   type ABPriorityQueue_Access_Array is array (Natural range <>) of ABPriorityQueue_Access;
   type ABPriorityQueue_Access_Array_Access is access all ABPriorityQueue_Access_Array;
   type ABPriorityQueue_Access_Array_Access_Array is array (Natural range <>) of ABPriorityQueue_Access_Array_Access;
   type ABPriorityQueue_Access_Array_Access_Array_Access is access all ABPriorityQueue_Access_Array_Access_Array;
   type ABPriorityQueue_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABPriorityQueue_Access_Array_Access;
   end record;
   function Java_Box (Value : ABPriorityQueue_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABPriorityQueue_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABPriorityQueue_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABPriorityQueue_Access_Array_Access is (if Value /= null and then Value.all in ABPriorityQueue_Access_Array_Object'Class then ABPriorityQueue_Access_Array_Object'Class (Value.all).Value else null);
   type ABPriorityQueue_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABPriorityQueue_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABPriorityQueue_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABPriorityQueue_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABPriorityQueue_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABPriorityQueue_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABPriorityQueue_Access_Array_Access_Array_Object'Class then ABPriorityQueue_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.ABPriorityQueue_Package_References;

with org.allbinary.util.ABPriorityQueue_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.PriorityQueue_Package; use java.util.PriorityQueue_Package;

package org.allbinary.util.ABPriorityQueue_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABPriorityQueue_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access;
   function "=" (Left, Right : ABPriorityQueue_Access) return Boolean renames org.allbinary.util.ABPriorityQueue_Package_References."=";
   subtype ABPriorityQueue_Access_Array is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array;
   function "=" (Left, Right : ABPriorityQueue_Access_Array) return Boolean renames org.allbinary.util.ABPriorityQueue_Package_References."=";
   subtype ABPriorityQueue_Access_Array_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access;
   function "=" (Left, Right : ABPriorityQueue_Access_Array_Access) return Boolean renames org.allbinary.util.ABPriorityQueue_Package_References."=";
   function Java_Box (Value : ABPriorityQueue_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABPriorityQueue_Package_References.Java_Box;
   function Java_Unbox_ABPriorityQueue_Access_Array (Value : access Java_Object'Class) return ABPriorityQueue_Access_Array_Access renames org.allbinary.util.ABPriorityQueue_Package_References.Java_Unbox_ABPriorityQueue_Access_Array;
   subtype ABPriorityQueue_Access_Array_Access_Array is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access_Array;
   function "=" (Left, Right : ABPriorityQueue_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABPriorityQueue_Package_References."=";
   subtype ABPriorityQueue_Access_Array_Access_Array_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABPriorityQueue_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABPriorityQueue_Package_References."=";
   function Java_Box (Value : ABPriorityQueue_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABPriorityQueue_Package_References.Java_Box;
   function Java_Unbox_ABPriorityQueue_Access_Array_Access_Array (Value : access Java_Object'Class) return ABPriorityQueue_Access_Array_Access_Array_Access renames org.allbinary.util.ABPriorityQueue_Package_References.Java_Unbox_ABPriorityQueue_Access_Array_Access_Array;

   type ABPriorityQueue is new Java_Object with null record;

   procedure Initialize (This : in out ABPriorityQueue'Class);
   function Create return ABPriorityQueue_Access;

end org.allbinary.util.ABPriorityQueue_Package;


