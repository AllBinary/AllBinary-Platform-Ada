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

limited with org.allbinary.game.layer.LayerPlacementInterface_Package;
package org.allbinary.game.layer.LayerPlacementInterface_Package_References is
   type LayerPlacementInterface_Access is access all org.allbinary.game.layer.LayerPlacementInterface_Package.LayerPlacementInterface'Class;
   type LayerPlacementInterface_Access_Array is array (Natural range <>) of LayerPlacementInterface_Access;
   type LayerPlacementInterface_Access_Array_Access is access all LayerPlacementInterface_Access_Array;
   type LayerPlacementInterface_Access_Array_Access_Array is array (Natural range <>) of LayerPlacementInterface_Access_Array_Access;
   type LayerPlacementInterface_Access_Array_Access_Array_Access is access all LayerPlacementInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.LayerPlacementInterface_Package_References;

with org.allbinary.game.layer.LayerPlacementInterface_Package_References;
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
limited with org.allbinary.game.layer.LayerPlacementType_Package;
with org.allbinary.game.layer.LayerPlacementType_Package_References;

package org.allbinary.game.layer.LayerPlacementInterface_Package is

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
   subtype LayerPlacementType_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access;
   use type LayerPlacementType_Access;
   subtype LayerPlacementType_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array;
   use type LayerPlacementType_Access_Array;
   subtype LayerPlacementType_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access;
   subtype LayerPlacementType_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array;
   use type LayerPlacementType_Access_Array_Access_Array;
   subtype LayerPlacementType_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type LayerPlacementInterface is interface;
   subtype LayerPlacementInterface_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access;
   function "=" (Left, Right : LayerPlacementInterface_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterface_Package_References."=";
   subtype LayerPlacementInterface_Access_Array is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array;
   function "=" (Left, Right : LayerPlacementInterface_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementInterface_Package_References."=";
   subtype LayerPlacementInterface_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterface_Package_References."=";
   subtype LayerPlacementInterface_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPlacementInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacementInterface_Package_References."=";
   subtype LayerPlacementInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPlacementInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacementInterface_Package_References."=";
   function Java_Object_Access_From_LayerPlacementInterface (Value : LayerPlacementInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getWidth (This : in out LayerPlacementInterface) return Integer is abstract;
   function getHeight (This : in out LayerPlacementInterface) return Integer is abstract;
   function getLayerType (This : in out LayerPlacementInterface) return LayerPlacementType_Access is abstract;
   function getInstance (This : in out LayerPlacementInterface) return ABHashtable_Access is abstract;

end org.allbinary.game.layer.LayerPlacementInterface_Package;


