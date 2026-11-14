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
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
package org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References is
   type PickedUpLayerInterface_Access is access all org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package.PickedUpLayerInterface'Class;
   type PickedUpLayerInterface_Access_Array is array (Natural range <>) of PickedUpLayerInterface_Access;
   type PickedUpLayerInterface_Access_Array_Access is access all PickedUpLayerInterface_Access_Array;
   type PickedUpLayerInterface_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterface_Access_Array_Access;
   type PickedUpLayerInterface_Access_Array_Access_Array_Access is access all PickedUpLayerInterface_Access_Array_Access_Array;
   type PickedUpLayerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterface_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterface_Access_Array_Object'Class then PickedUpLayerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PickedUpLayerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterface_Access_Array_Access_Array_Object'Class then PickedUpLayerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;

with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;

package org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package is

   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package Reference_Types is
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PickedUpLayerInterface is interface and LayerInterface;
   subtype PickedUpLayerInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References."=";
   subtype PickedUpLayerInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References."=";
   subtype PickedUpLayerInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterface_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterface_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.Java_Unbox_PickedUpLayerInterface_Access_Array;
   subtype PickedUpLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References."=";
   subtype PickedUpLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.Java_Unbox_PickedUpLayerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PickedUpLayerInterface (Value : PickedUpLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPickedUpLayerInterfaceFactoryInterface (This : in out PickedUpLayerInterface) return PickedUpLayerInterfaceFactoryInterface_Access is abstract;
   procedure setPickedUp (This : in out PickedUpLayerInterface) is abstract;

end org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;


