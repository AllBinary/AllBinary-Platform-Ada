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
limited with org.allbinary.util.ABStack_Package;
package org.allbinary.util.ABStack_Package_References is
   type ABStack_Access is access all org.allbinary.util.ABStack_Package.ABStack'Class;
   type ABStack_Access_Array is array (Natural range <>) of ABStack_Access;
   type ABStack_Access_Array_Access is access all ABStack_Access_Array;
   type ABStack_Access_Array_Access_Array is array (Natural range <>) of ABStack_Access_Array_Access;
   type ABStack_Access_Array_Access_Array_Access is access all ABStack_Access_Array_Access_Array;
   type ABStack_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABStack_Access_Array_Access;
   end record;
   function Java_Box (Value : ABStack_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABStack_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABStack_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABStack_Access_Array_Access is (if Value /= null and then Value.all in ABStack_Access_Array_Object'Class then ABStack_Access_Array_Object'Class (Value.all).Value else null);
   type ABStack_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABStack_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABStack_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABStack_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABStack_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABStack_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABStack_Access_Array_Access_Array_Object'Class then ABStack_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.ABStack_Package_References;

with org.allbinary.util.ABStack_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Stack_Package; use java.util.Stack_Package;

package org.allbinary.util.ABStack_Package is

   package Stack_Package renames Standard.java.util.Stack_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   function "=" (Left, Right : ABStack_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   function Java_Box (Value : ABStack_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABStack_Package_References.Java_Box;
   function Java_Unbox_ABStack_Access_Array (Value : access Java_Object'Class) return ABStack_Access_Array_Access renames org.allbinary.util.ABStack_Package_References.Java_Unbox_ABStack_Access_Array;
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   function Java_Box (Value : ABStack_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABStack_Package_References.Java_Box;
   function Java_Unbox_ABStack_Access_Array_Access_Array (Value : access Java_Object'Class) return ABStack_Access_Array_Access_Array_Access renames org.allbinary.util.ABStack_Package_References.Java_Unbox_ABStack_Access_Array_Access_Array;

   type ABStack is new Stack with null record;

   procedure Initialize (This : in out ABStack'Class);
   function Create return ABStack_Access;

end org.allbinary.util.ABStack_Package;


