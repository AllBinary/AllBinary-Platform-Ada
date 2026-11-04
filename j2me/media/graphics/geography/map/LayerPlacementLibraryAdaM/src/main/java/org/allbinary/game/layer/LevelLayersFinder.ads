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

limited with org.allbinary.game.layer.LevelLayersFinder_Package;
package org.allbinary.game.layer.LevelLayersFinder_Package_References is
   type LevelLayersFinder_Access is access all org.allbinary.game.layer.LevelLayersFinder_Package.LevelLayersFinder'Class;
   type LevelLayersFinder_Access_Array is array (Natural range <>) of LevelLayersFinder_Access;
   type LevelLayersFinder_Access_Array_Access is access all LevelLayersFinder_Access_Array;
   type LevelLayersFinder_Access_Array_Access_Array is array (Natural range <>) of LevelLayersFinder_Access_Array_Access;
   type LevelLayersFinder_Access_Array_Access_Array_Access is access all LevelLayersFinder_Access_Array_Access_Array;
end org.allbinary.game.layer.LevelLayersFinder_Package_References;

with org.allbinary.game.layer.LevelLayersFinder_Package_References;
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
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;

package org.allbinary.game.layer.LevelLayersFinder_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype LevelLayersFinder_Access is org.allbinary.game.layer.LevelLayersFinder_Package_References.LevelLayersFinder_Access;
   function "=" (Left, Right : LevelLayersFinder_Access) return Boolean renames org.allbinary.game.layer.LevelLayersFinder_Package_References."=";
   subtype LevelLayersFinder_Access_Array is org.allbinary.game.layer.LevelLayersFinder_Package_References.LevelLayersFinder_Access_Array;
   function "=" (Left, Right : LevelLayersFinder_Access_Array) return Boolean renames org.allbinary.game.layer.LevelLayersFinder_Package_References."=";
   subtype LevelLayersFinder_Access_Array_Access is org.allbinary.game.layer.LevelLayersFinder_Package_References.LevelLayersFinder_Access_Array_Access;
   function "=" (Left, Right : LevelLayersFinder_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LevelLayersFinder_Package_References."=";
   subtype LevelLayersFinder_Access_Array_Access_Array is org.allbinary.game.layer.LevelLayersFinder_Package_References.LevelLayersFinder_Access_Array_Access_Array;
   function "=" (Left, Right : LevelLayersFinder_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LevelLayersFinder_Package_References."=";
   subtype LevelLayersFinder_Access_Array_Access_Array_Access is org.allbinary.game.layer.LevelLayersFinder_Package_References.LevelLayersFinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LevelLayersFinder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LevelLayersFinder_Package_References."=";

   type LevelLayersFinder is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
   end record;
   instance : LevelLayersFinder_Access;

   procedure Initialize (This : in out LevelLayersFinder'Class);
   function Create return LevelLayersFinder_Access;
   function getInstance return LevelLayersFinder_Access;
   function get (This : in out LevelLayersFinder; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return BasicArrayList_Access;
   procedure get (This : in out LevelLayersFinder; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);

end org.allbinary.game.layer.LevelLayersFinder_Package;


