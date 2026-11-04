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

limited with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References is
   type CountedPickedUpLayerInterfaceFactoryInterface_Access is access all org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package.CountedPickedUpLayerInterfaceFactoryInterface'Class;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactoryInterface_Access;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactoryInterface_Access_Array;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References;

with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package is

   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type CountedPickedUpLayerInterfaceFactoryInterface is interface and PickedUpLayerInterfaceFactoryInterface and LayerInterfaceFactoryInterface;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_CountedPickedUpLayerInterfaceFactoryInterface (Value : CountedPickedUpLayerInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getId (This : in out CountedPickedUpLayerInterfaceFactoryInterface) return Integer is abstract;
   function getTotal (This : in out CountedPickedUpLayerInterfaceFactoryInterface) return Integer is abstract;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;


