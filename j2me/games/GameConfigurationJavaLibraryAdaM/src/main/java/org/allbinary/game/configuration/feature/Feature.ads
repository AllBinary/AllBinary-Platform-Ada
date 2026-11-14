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
limited with org.allbinary.game.configuration.feature.Feature_Package;
package org.allbinary.game.configuration.feature.Feature_Package_References is
   type Feature_Access is access all org.allbinary.game.configuration.feature.Feature_Package.Feature'Class;
   type Feature_Access_Array is array (Natural range <>) of Feature_Access;
   type Feature_Access_Array_Access is access all Feature_Access_Array;
   type Feature_Access_Array_Access_Array is array (Natural range <>) of Feature_Access_Array_Access;
   type Feature_Access_Array_Access_Array_Access is access all Feature_Access_Array_Access_Array;
   type Feature_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Feature_Access_Array_Access;
   end record;
   function Java_Box (Value : Feature_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Feature_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Feature_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Feature_Access_Array_Access is (if Value /= null and then Value.all in Feature_Access_Array_Object'Class then Feature_Access_Array_Object'Class (Value.all).Value else null);
   type Feature_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Feature_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Feature_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Feature_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Feature_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Feature_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Feature_Access_Array_Access_Array_Object'Class then Feature_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.Feature_Package_References;

with org.allbinary.game.configuration.feature.Feature_Package_References;
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

package org.allbinary.game.configuration.feature.Feature_Package is

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


   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   function "=" (Left, Right : Feature_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   function "=" (Left, Right : Feature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   function Java_Box (Value : Feature_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.Feature_Package_References.Java_Box;
   function Java_Unbox_Feature_Access_Array (Value : access Java_Object'Class) return Feature_Access_Array_Access renames org.allbinary.game.configuration.feature.Feature_Package_References.Java_Unbox_Feature_Access_Array;
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   function "=" (Left, Right : Feature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   function Java_Box (Value : Feature_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.Feature_Package_References.Java_Box;
   function Java_Unbox_Feature_Access_Array_Access_Array (Value : access Java_Object'Class) return Feature_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.Feature_Package_References.Java_Unbox_Feature_Access_Array_Access_Array;

   type Feature is new Java_Object with record
      name : Unbounded_String;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out Feature'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return Feature_Access;
   function getInstance (name : Unbounded_String) return Feature_Access;
   procedure getInstance (name : Unbounded_String);
   procedure add (name : Unbounded_String; gameFeature_Param : access Feature_Package.Feature'Class);
   function toString (This : in out Feature) return Unbounded_String;
   function getName (This : in out Feature) return Unbounded_String;

end org.allbinary.game.configuration.feature.Feature_Package;


