--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
limited with org.allbinary.util.HashtableUtil_Package;
package org.allbinary.util.HashtableUtil_Package_References is
   type HashtableUtil_Access is access all org.allbinary.util.HashtableUtil_Package.HashtableUtil'Class;
   type HashtableUtil_Access_Array is array (Natural range <>) of HashtableUtil_Access;
   type HashtableUtil_Access_Array_Access is access all HashtableUtil_Access_Array;
   type HashtableUtil_Access_Array_Access_Array is array (Natural range <>) of HashtableUtil_Access_Array_Access;
   type HashtableUtil_Access_Array_Access_Array_Access is access all HashtableUtil_Access_Array_Access_Array;
   type HashtableUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HashtableUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : HashtableUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HashtableUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HashtableUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HashtableUtil_Access_Array_Access is (if Value /= null and then Value.all in HashtableUtil_Access_Array_Object'Class then HashtableUtil_Access_Array_Object'Class (Value.all).Value else null);
   type HashtableUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HashtableUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HashtableUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HashtableUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HashtableUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HashtableUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HashtableUtil_Access_Array_Access_Array_Object'Class then HashtableUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.HashtableUtil_Package_References;

with org.allbinary.util.HashtableUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.util.HashtableUtil_Package is

   package Reference_Types is
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HashtableUtil_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access;
   function "=" (Left, Right : HashtableUtil_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   function Java_Box (Value : HashtableUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.HashtableUtil_Package_References.Java_Box;
   function Java_Unbox_HashtableUtil_Access_Array (Value : access Java_Object'Class) return HashtableUtil_Access_Array_Access renames org.allbinary.util.HashtableUtil_Package_References.Java_Unbox_HashtableUtil_Access_Array;
   subtype HashtableUtil_Access_Array_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   function Java_Box (Value : HashtableUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.HashtableUtil_Package_References.Java_Box;
   function Java_Unbox_HashtableUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return HashtableUtil_Access_Array_Access_Array_Access renames org.allbinary.util.HashtableUtil_Package_References.Java_Unbox_HashtableUtil_Access_Array_Access_Array;

   type HashtableUtil is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
   end record;
   instance : HashtableUtil_Access;

   procedure Initialize (This : in out HashtableUtil'Class);
   function Create return HashtableUtil_Access;
   function getInstance return HashtableUtil_Access;
   procedure putAll (This : in out HashtableUtil; fromHashtable_Param : access ABHashtable_Package.ABHashtable'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function getKeysAsArray (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return Java_Object_Access_Array_Access;
   procedure getKeysAsArray (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function getKeysAsList (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BasicArrayList_Access;
   procedure getKeysAsList (This : in out HashtableUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);

end org.allbinary.util.HashtableUtil_Package;


