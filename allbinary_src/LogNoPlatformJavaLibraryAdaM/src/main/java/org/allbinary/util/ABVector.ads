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
limited with org.allbinary.util.ABVector_Package;
package org.allbinary.util.ABVector_Package_References is
   type ABVector_Access is access all org.allbinary.util.ABVector_Package.ABVector'Class;
   type ABVector_Access_Array is array (Natural range <>) of ABVector_Access;
   type ABVector_Access_Array_Access is access all ABVector_Access_Array;
   type ABVector_Access_Array_Access_Array is array (Natural range <>) of ABVector_Access_Array_Access;
   type ABVector_Access_Array_Access_Array_Access is access all ABVector_Access_Array_Access_Array;
   type ABVector_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABVector_Access_Array_Access;
   end record;
   function Java_Box (Value : ABVector_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABVector_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABVector_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABVector_Access_Array_Access is (if Value /= null and then Value.all in ABVector_Access_Array_Object'Class then ABVector_Access_Array_Object'Class (Value.all).Value else null);
   type ABVector_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABVector_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABVector_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABVector_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABVector_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABVector_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABVector_Access_Array_Access_Array_Object'Class then ABVector_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.ABVector_Package_References;

with org.allbinary.util.ABVector_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ABVector_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access;
   function "=" (Left, Right : ABVector_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array;
   function "=" (Left, Right : ABVector_Access_Array) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access;
   function "=" (Left, Right : ABVector_Access_Array_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   function Java_Box (Value : ABVector_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABVector_Package_References.Java_Box;
   function Java_Unbox_ABVector_Access_Array (Value : access Java_Object'Class) return ABVector_Access_Array_Access renames org.allbinary.util.ABVector_Package_References.Java_Unbox_ABVector_Access_Array;
   subtype ABVector_Access_Array_Access_Array is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array;
   function "=" (Left, Right : ABVector_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   subtype ABVector_Access_Array_Access_Array_Access is org.allbinary.util.ABVector_Package_References.ABVector_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABVector_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABVector_Package_References."=";
   function Java_Box (Value : ABVector_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.ABVector_Package_References.Java_Box;
   function Java_Unbox_ABVector_Access_Array_Access_Array (Value : access Java_Object'Class) return ABVector_Access_Array_Access_Array_Access renames org.allbinary.util.ABVector_Package_References.Java_Unbox_ABVector_Access_Array_Access_Array;

   type ABVector is new Vector with null record;

   procedure Initialize (This : in out ABVector'Class);
   function Create return ABVector_Access;

end org.allbinary.util.ABVector_Package;


