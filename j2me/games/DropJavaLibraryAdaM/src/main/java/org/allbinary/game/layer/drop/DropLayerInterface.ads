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

limited with org.allbinary.game.layer.drop.DropLayerInterface_Package;
package org.allbinary.game.layer.drop.DropLayerInterface_Package_References is
   type DropLayerInterface_Access is access all org.allbinary.game.layer.drop.DropLayerInterface_Package.DropLayerInterface'Class;
   type DropLayerInterface_Access_Array is array (Natural range <>) of DropLayerInterface_Access;
   type DropLayerInterface_Access_Array_Access is access all DropLayerInterface_Access_Array;
   type DropLayerInterface_Access_Array_Access_Array is array (Natural range <>) of DropLayerInterface_Access_Array_Access;
   type DropLayerInterface_Access_Array_Access_Array_Access is access all DropLayerInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.drop.DropLayerInterface_Package_References;

with org.allbinary.game.layer.drop.DropLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;

package org.allbinary.game.layer.drop.DropLayerInterface_Package is

   package PickedUpLayerInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package Reference_Types is
   subtype PickedUpLayerInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access;
   use type PickedUpLayerInterface_Access;
   subtype PickedUpLayerInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array;
   use type PickedUpLayerInterface_Access_Array;
   subtype PickedUpLayerInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access;
   use type PickedUpLayerInterface_Access_Array_Access;
   subtype PickedUpLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DropLayerInterface is interface and LayerInterface;
   subtype DropLayerInterface_Access is org.allbinary.game.layer.drop.DropLayerInterface_Package_References.DropLayerInterface_Access;
   function "=" (Left, Right : DropLayerInterface_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerInterface_Package_References."=";
   subtype DropLayerInterface_Access_Array is org.allbinary.game.layer.drop.DropLayerInterface_Package_References.DropLayerInterface_Access_Array;
   function "=" (Left, Right : DropLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.drop.DropLayerInterface_Package_References."=";
   subtype DropLayerInterface_Access_Array_Access is org.allbinary.game.layer.drop.DropLayerInterface_Package_References.DropLayerInterface_Access_Array_Access;
   function "=" (Left, Right : DropLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerInterface_Package_References."=";
   subtype DropLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.drop.DropLayerInterface_Package_References.DropLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DropLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.drop.DropLayerInterface_Package_References."=";
   subtype DropLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.drop.DropLayerInterface_Package_References.DropLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerInterface_Package_References."=";
   function Java_Object_Access_From_DropLayerInterface (Value : DropLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDroppedLayer (This : in out DropLayerInterface) return PickedUpLayerInterface_Access is abstract;

end org.allbinary.game.layer.drop.DropLayerInterface_Package;


