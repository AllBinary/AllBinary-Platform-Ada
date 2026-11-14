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
limited with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
package org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References is
   type GameFeatureChoiceGroups_Access is access all org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package.GameFeatureChoiceGroups'Class;
   type GameFeatureChoiceGroups_Access_Array is array (Natural range <>) of GameFeatureChoiceGroups_Access;
   type GameFeatureChoiceGroups_Access_Array_Access is access all GameFeatureChoiceGroups_Access_Array;
   type GameFeatureChoiceGroups_Access_Array_Access_Array is array (Natural range <>) of GameFeatureChoiceGroups_Access_Array_Access;
   type GameFeatureChoiceGroups_Access_Array_Access_Array_Access is access all GameFeatureChoiceGroups_Access_Array_Access_Array;
   type GameFeatureChoiceGroups_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureChoiceGroups_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureChoiceGroups_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureChoiceGroups_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureChoiceGroups_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureChoiceGroups_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureChoiceGroups_Access_Array_Object'Class then GameFeatureChoiceGroups_Access_Array_Object'Class (Value.all).Value else null);
   type GameFeatureChoiceGroups_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameFeatureChoiceGroups_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameFeatureChoiceGroups_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameFeatureChoiceGroups_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameFeatureChoiceGroups_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameFeatureChoiceGroups_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameFeatureChoiceGroups_Access_Array_Access_Array_Object'Class then GameFeatureChoiceGroups_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype GameFeatureChoiceGroups_Access is org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.GameFeatureChoiceGroups_Access;
   function "=" (Left, Right : GameFeatureChoiceGroups_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References."=";
   subtype GameFeatureChoiceGroups_Access_Array is org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.GameFeatureChoiceGroups_Access_Array;
   function "=" (Left, Right : GameFeatureChoiceGroups_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References."=";
   subtype GameFeatureChoiceGroups_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.GameFeatureChoiceGroups_Access_Array_Access;
   function "=" (Left, Right : GameFeatureChoiceGroups_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References."=";
   function Java_Box (Value : GameFeatureChoiceGroups_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.Java_Box;
   function Java_Unbox_GameFeatureChoiceGroups_Access_Array (Value : access Java_Object'Class) return GameFeatureChoiceGroups_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.Java_Unbox_GameFeatureChoiceGroups_Access_Array;
   subtype GameFeatureChoiceGroups_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.GameFeatureChoiceGroups_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureChoiceGroups_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References."=";
   subtype GameFeatureChoiceGroups_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.GameFeatureChoiceGroups_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureChoiceGroups_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References."=";
   function Java_Box (Value : GameFeatureChoiceGroups_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.Java_Box;
   function Java_Unbox_GameFeatureChoiceGroups_Access_Array_Access_Array (Value : access Java_Object'Class) return GameFeatureChoiceGroups_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package_References.Java_Unbox_GameFeatureChoiceGroups_Access_Array_Access_Array;

   type GameFeatureChoiceGroups is new Java_Object with record
      hashtable : ABHashtable_Access;
   end record;
   gameFeatureChoiceGroupsExclusive : GameFeatureChoiceGroups_Access;
   gameFeatureChoiceGroupsMultiple : GameFeatureChoiceGroups_Access;

   procedure Initialize (This : in out GameFeatureChoiceGroups'Class);
   function Create return GameFeatureChoiceGroups_Access;
   function getExclusiveInstance return GameFeatureChoiceGroups_Access;
   function getMultipleInstance return GameFeatureChoiceGroups_Access;
   function get (This : in out GameFeatureChoiceGroups) return ABHashtable_Access;
   procedure add (This : in out GameFeatureChoiceGroups; name : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;


