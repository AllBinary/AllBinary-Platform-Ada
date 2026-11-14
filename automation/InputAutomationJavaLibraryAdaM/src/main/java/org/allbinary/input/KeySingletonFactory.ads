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
limited with org.allbinary.input.KeySingletonFactory_Package;
package org.allbinary.input.KeySingletonFactory_Package_References is
   type KeySingletonFactory_Access is access all org.allbinary.input.KeySingletonFactory_Package.KeySingletonFactory'Class;
   type KeySingletonFactory_Access_Array is array (Natural range <>) of KeySingletonFactory_Access;
   type KeySingletonFactory_Access_Array_Access is access all KeySingletonFactory_Access_Array;
   type KeySingletonFactory_Access_Array_Access_Array is array (Natural range <>) of KeySingletonFactory_Access_Array_Access;
   type KeySingletonFactory_Access_Array_Access_Array_Access is access all KeySingletonFactory_Access_Array_Access_Array;
   type KeySingletonFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeySingletonFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : KeySingletonFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeySingletonFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeySingletonFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeySingletonFactory_Access_Array_Access is (if Value /= null and then Value.all in KeySingletonFactory_Access_Array_Object'Class then KeySingletonFactory_Access_Array_Object'Class (Value.all).Value else null);
   type KeySingletonFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeySingletonFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeySingletonFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeySingletonFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeySingletonFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeySingletonFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeySingletonFactory_Access_Array_Access_Array_Object'Class then KeySingletonFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.KeySingletonFactory_Package_References;

with org.allbinary.input.KeySingletonFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.input.KeySingletonFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype KeySingletonFactory_Access is org.allbinary.input.KeySingletonFactory_Package_References.KeySingletonFactory_Access;
   function "=" (Left, Right : KeySingletonFactory_Access) return Boolean renames org.allbinary.input.KeySingletonFactory_Package_References."=";
   subtype KeySingletonFactory_Access_Array is org.allbinary.input.KeySingletonFactory_Package_References.KeySingletonFactory_Access_Array;
   function "=" (Left, Right : KeySingletonFactory_Access_Array) return Boolean renames org.allbinary.input.KeySingletonFactory_Package_References."=";
   subtype KeySingletonFactory_Access_Array_Access is org.allbinary.input.KeySingletonFactory_Package_References.KeySingletonFactory_Access_Array_Access;
   function "=" (Left, Right : KeySingletonFactory_Access_Array_Access) return Boolean renames org.allbinary.input.KeySingletonFactory_Package_References."=";
   function Java_Box (Value : KeySingletonFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.KeySingletonFactory_Package_References.Java_Box;
   function Java_Unbox_KeySingletonFactory_Access_Array (Value : access Java_Object'Class) return KeySingletonFactory_Access_Array_Access renames org.allbinary.input.KeySingletonFactory_Package_References.Java_Unbox_KeySingletonFactory_Access_Array;
   subtype KeySingletonFactory_Access_Array_Access_Array is org.allbinary.input.KeySingletonFactory_Package_References.KeySingletonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeySingletonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.KeySingletonFactory_Package_References."=";
   subtype KeySingletonFactory_Access_Array_Access_Array_Access is org.allbinary.input.KeySingletonFactory_Package_References.KeySingletonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeySingletonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.KeySingletonFactory_Package_References."=";
   function Java_Box (Value : KeySingletonFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.KeySingletonFactory_Package_References.Java_Box;
   function Java_Unbox_KeySingletonFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return KeySingletonFactory_Access_Array_Access_Array_Access renames org.allbinary.input.KeySingletonFactory_Package_References.Java_Unbox_KeySingletonFactory_Access_Array_Access_Array;

   type KeySingletonFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   keyStringHashtable : ABHashtable_Access;
   keyArray : Integer_Array_Access;

   procedure Initialize (This : in out KeySingletonFactory'Class);
   function Create return KeySingletonFactory_Access;
   function getHashtable return ABHashtable_Access;
   function getInstance (index : Integer) return Integer;
   procedure getInstance (index : Integer);
   function getArray return Integer_Array_Access;

end org.allbinary.input.KeySingletonFactory_Package;


