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
limited with org.allbinary.resources.KeyValueFactory_Package;
package org.allbinary.resources.KeyValueFactory_Package_References is
   type KeyValueFactory_Access is access all org.allbinary.resources.KeyValueFactory_Package.KeyValueFactory'Class;
   type KeyValueFactory_Access_Array is array (Natural range <>) of KeyValueFactory_Access;
   type KeyValueFactory_Access_Array_Access is access all KeyValueFactory_Access_Array;
   type KeyValueFactory_Access_Array_Access_Array is array (Natural range <>) of KeyValueFactory_Access_Array_Access;
   type KeyValueFactory_Access_Array_Access_Array_Access is access all KeyValueFactory_Access_Array_Access_Array;
   type KeyValueFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValueFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValueFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValueFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValueFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValueFactory_Access_Array_Access is (if Value /= null and then Value.all in KeyValueFactory_Access_Array_Object'Class then KeyValueFactory_Access_Array_Object'Class (Value.all).Value else null);
   type KeyValueFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyValueFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyValueFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyValueFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyValueFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyValueFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyValueFactory_Access_Array_Access_Array_Object'Class then KeyValueFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.resources.KeyValueFactory_Package_References;

with org.allbinary.resources.KeyValueFactory_Package_References;
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

package org.allbinary.resources.KeyValueFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype KeyValueFactory_Access is org.allbinary.resources.KeyValueFactory_Package_References.KeyValueFactory_Access;
   function "=" (Left, Right : KeyValueFactory_Access) return Boolean renames org.allbinary.resources.KeyValueFactory_Package_References."=";
   subtype KeyValueFactory_Access_Array is org.allbinary.resources.KeyValueFactory_Package_References.KeyValueFactory_Access_Array;
   function "=" (Left, Right : KeyValueFactory_Access_Array) return Boolean renames org.allbinary.resources.KeyValueFactory_Package_References."=";
   subtype KeyValueFactory_Access_Array_Access is org.allbinary.resources.KeyValueFactory_Package_References.KeyValueFactory_Access_Array_Access;
   function "=" (Left, Right : KeyValueFactory_Access_Array_Access) return Boolean renames org.allbinary.resources.KeyValueFactory_Package_References."=";
   function Java_Box (Value : KeyValueFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.resources.KeyValueFactory_Package_References.Java_Box;
   function Java_Unbox_KeyValueFactory_Access_Array (Value : access Java_Object'Class) return KeyValueFactory_Access_Array_Access renames org.allbinary.resources.KeyValueFactory_Package_References.Java_Unbox_KeyValueFactory_Access_Array;
   subtype KeyValueFactory_Access_Array_Access_Array is org.allbinary.resources.KeyValueFactory_Package_References.KeyValueFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeyValueFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.resources.KeyValueFactory_Package_References."=";
   subtype KeyValueFactory_Access_Array_Access_Array_Access is org.allbinary.resources.KeyValueFactory_Package_References.KeyValueFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyValueFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.resources.KeyValueFactory_Package_References."=";
   function Java_Box (Value : KeyValueFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.resources.KeyValueFactory_Package_References.Java_Box;
   function Java_Unbox_KeyValueFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyValueFactory_Access_Array_Access_Array_Access renames org.allbinary.resources.KeyValueFactory_Package_References.Java_Unbox_KeyValueFactory_Access_Array_Access_Array;

   type KeyValueFactory is new Java_Object with record
      MAP : ABHashtable_Access;
   end record;
   instance : KeyValueFactory_Access;

   procedure Initialize (This : in out KeyValueFactory'Class);
   function Create return KeyValueFactory_Access;
   function getInstance return KeyValueFactory_Access;
   function get (This : in out KeyValueFactory; key : Unbounded_String) return Unbounded_String;
   procedure get (This : in out KeyValueFactory; key : Unbounded_String);

end org.allbinary.resources.KeyValueFactory_Package;


