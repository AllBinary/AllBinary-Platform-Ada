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

limited with org.allbinary.game.configuration.GameConfigurationSingleton_Package;
package org.allbinary.game.configuration.GameConfigurationSingleton_Package_References is
   type GameConfigurationSingleton_Access is access all org.allbinary.game.configuration.GameConfigurationSingleton_Package.GameConfigurationSingleton'Class;
   type GameConfigurationSingleton_Access_Array is array (Natural range <>) of GameConfigurationSingleton_Access;
   type GameConfigurationSingleton_Access_Array_Access is access all GameConfigurationSingleton_Access_Array;
   type GameConfigurationSingleton_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationSingleton_Access_Array_Access;
   type GameConfigurationSingleton_Access_Array_Access_Array_Access is access all GameConfigurationSingleton_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameConfigurationSingleton_Package_References;

with org.allbinary.game.configuration.GameConfigurationSingleton_Package_References;
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
limited with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;

package org.allbinary.game.configuration.GameConfigurationSingleton_Package is

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
   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   use type GameConfiguration_Access;
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   use type GameConfiguration_Access_Array;
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access;
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   use type GameConfiguration_Access_Array_Access_Array;
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   use type GameConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameConfigurationSingleton_Access is org.allbinary.game.configuration.GameConfigurationSingleton_Package_References.GameConfigurationSingleton_Access;
   function "=" (Left, Right : GameConfigurationSingleton_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationSingleton_Package_References."=";
   subtype GameConfigurationSingleton_Access_Array is org.allbinary.game.configuration.GameConfigurationSingleton_Package_References.GameConfigurationSingleton_Access_Array;
   function "=" (Left, Right : GameConfigurationSingleton_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationSingleton_Package_References."=";
   subtype GameConfigurationSingleton_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationSingleton_Package_References.GameConfigurationSingleton_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationSingleton_Package_References."=";
   subtype GameConfigurationSingleton_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationSingleton_Package_References.GameConfigurationSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationSingleton_Package_References."=";
   subtype GameConfigurationSingleton_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationSingleton_Package_References.GameConfigurationSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationSingleton_Package_References."=";

   type GameConfigurationSingleton is new Java_Object with record
      list : BasicArrayList_Access;
      hashtable : ABHashtable_Access;
   end record;
   SINGLETON : GameConfigurationSingleton_Access;

   procedure Initialize (This : in out GameConfigurationSingleton'Class);
   function Create return GameConfigurationSingleton_Access;
   function getInstance return GameConfigurationSingleton_Access;
   function getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String) return GameConfiguration_Access;
   procedure getInstanceByName (This : in out GameConfigurationSingleton; name : Unbounded_String);
   function getOptionsBasicArrayList (This : in out GameConfigurationSingleton) return BasicArrayList_Access;
   procedure add (This : in out GameConfigurationSingleton; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class);
   function getHashtable (This : in out GameConfigurationSingleton) return ABHashtable_Access;

end org.allbinary.game.configuration.GameConfigurationSingleton_Package;


