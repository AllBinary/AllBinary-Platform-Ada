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
limited with org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package;
package org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References is
   type SmallBasicColorCacheFactory_Access is access all org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package.SmallBasicColorCacheFactory'Class;
   type SmallBasicColorCacheFactory_Access_Array is array (Natural range <>) of SmallBasicColorCacheFactory_Access;
   type SmallBasicColorCacheFactory_Access_Array_Access is access all SmallBasicColorCacheFactory_Access_Array;
   type SmallBasicColorCacheFactory_Access_Array_Access_Array is array (Natural range <>) of SmallBasicColorCacheFactory_Access_Array_Access;
   type SmallBasicColorCacheFactory_Access_Array_Access_Array_Access is access all SmallBasicColorCacheFactory_Access_Array_Access_Array;
   type SmallBasicColorCacheFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SmallBasicColorCacheFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : SmallBasicColorCacheFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SmallBasicColorCacheFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SmallBasicColorCacheFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SmallBasicColorCacheFactory_Access_Array_Access is (if Value /= null and then Value.all in SmallBasicColorCacheFactory_Access_Array_Object'Class then SmallBasicColorCacheFactory_Access_Array_Object'Class (Value.all).Value else null);
   type SmallBasicColorCacheFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SmallBasicColorCacheFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SmallBasicColorCacheFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SmallBasicColorCacheFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SmallBasicColorCacheFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SmallBasicColorCacheFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SmallBasicColorCacheFactory_Access_Array_Access_Array_Object'Class then SmallBasicColorCacheFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References;

with org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package is

   package Reference_Types is
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


   subtype SmallBasicColorCacheFactory_Access is org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.SmallBasicColorCacheFactory_Access;
   function "=" (Left, Right : SmallBasicColorCacheFactory_Access) return Boolean renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References."=";
   subtype SmallBasicColorCacheFactory_Access_Array is org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.SmallBasicColorCacheFactory_Access_Array;
   function "=" (Left, Right : SmallBasicColorCacheFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References."=";
   subtype SmallBasicColorCacheFactory_Access_Array_Access is org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.SmallBasicColorCacheFactory_Access_Array_Access;
   function "=" (Left, Right : SmallBasicColorCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References."=";
   function Java_Box (Value : SmallBasicColorCacheFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.Java_Box;
   function Java_Unbox_SmallBasicColorCacheFactory_Access_Array (Value : access Java_Object'Class) return SmallBasicColorCacheFactory_Access_Array_Access renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.Java_Unbox_SmallBasicColorCacheFactory_Access_Array;
   subtype SmallBasicColorCacheFactory_Access_Array_Access_Array is org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.SmallBasicColorCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SmallBasicColorCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References."=";
   subtype SmallBasicColorCacheFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.SmallBasicColorCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SmallBasicColorCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References."=";
   function Java_Box (Value : SmallBasicColorCacheFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.Java_Box;
   function Java_Unbox_SmallBasicColorCacheFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return SmallBasicColorCacheFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package_References.Java_Unbox_SmallBasicColorCacheFactory_Access_Array_Access_Array;

   type SmallBasicColorCacheFactory is new Java_Object with record
      SIZE : Integer;
      INDEX_TO_COLOR : Integer_Array_Access;
      BASIC_COLOR_ARRAY : BasicColor_Access_Array_Access;
      colorIndex : Integer;
   end record;
   instance : SmallBasicColorCacheFactory_Access;

   procedure Initialize (This : in out SmallBasicColorCacheFactory'Class);
   function Create return SmallBasicColorCacheFactory_Access;
   function getInstance return SmallBasicColorCacheFactory_Access;
   procedure add (This : in out SmallBasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class);
   function getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer) return BasicColor_Access;
   procedure getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer);

end org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package;


