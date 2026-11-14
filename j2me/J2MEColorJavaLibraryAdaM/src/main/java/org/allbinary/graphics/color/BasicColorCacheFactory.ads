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
limited with org.allbinary.graphics.color.BasicColorCacheFactory_Package;
package org.allbinary.graphics.color.BasicColorCacheFactory_Package_References is
   type BasicColorCacheFactory_Access is access all org.allbinary.graphics.color.BasicColorCacheFactory_Package.BasicColorCacheFactory'Class;
   type BasicColorCacheFactory_Access_Array is array (Natural range <>) of BasicColorCacheFactory_Access;
   type BasicColorCacheFactory_Access_Array_Access is access all BasicColorCacheFactory_Access_Array;
   type BasicColorCacheFactory_Access_Array_Access_Array is array (Natural range <>) of BasicColorCacheFactory_Access_Array_Access;
   type BasicColorCacheFactory_Access_Array_Access_Array_Access is access all BasicColorCacheFactory_Access_Array_Access_Array;
   type BasicColorCacheFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorCacheFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorCacheFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorCacheFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorCacheFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorCacheFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicColorCacheFactory_Access_Array_Object'Class then BasicColorCacheFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicColorCacheFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicColorCacheFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicColorCacheFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicColorCacheFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicColorCacheFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicColorCacheFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicColorCacheFactory_Access_Array_Access_Array_Object'Class then BasicColorCacheFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.BasicColorCacheFactory_Package_References;

with org.allbinary.graphics.color.BasicColorCacheFactory_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.BasicColorCacheFactory_Package is

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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicColorCacheFactory_Access is org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.BasicColorCacheFactory_Access;
   function "=" (Left, Right : BasicColorCacheFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References."=";
   subtype BasicColorCacheFactory_Access_Array is org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.BasicColorCacheFactory_Access_Array;
   function "=" (Left, Right : BasicColorCacheFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References."=";
   subtype BasicColorCacheFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.BasicColorCacheFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References."=";
   function Java_Box (Value : BasicColorCacheFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.Java_Box;
   function Java_Unbox_BasicColorCacheFactory_Access_Array (Value : access Java_Object'Class) return BasicColorCacheFactory_Access_Array_Access renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.Java_Unbox_BasicColorCacheFactory_Access_Array;
   subtype BasicColorCacheFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.BasicColorCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References."=";
   subtype BasicColorCacheFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.BasicColorCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References."=";
   function Java_Box (Value : BasicColorCacheFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.Java_Box;
   function Java_Unbox_BasicColorCacheFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicColorCacheFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.BasicColorCacheFactory_Package_References.Java_Unbox_BasicColorCacheFactory_Access_Array_Access_Array;

   type BasicColorCacheFactory is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   instance : BasicColorCacheFactory_Access;

   procedure Initialize (This : in out BasicColorCacheFactory'Class);
   function Create return BasicColorCacheFactory_Access;
   function getInstance return BasicColorCacheFactory_Access;
   procedure add (This : in out BasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class);
   function getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer) return BasicColor_Access;
   procedure getAndOrCreate (This : in out BasicColorCacheFactory; integer_Id : Integer);

end org.allbinary.graphics.color.BasicColorCacheFactory_Package;


