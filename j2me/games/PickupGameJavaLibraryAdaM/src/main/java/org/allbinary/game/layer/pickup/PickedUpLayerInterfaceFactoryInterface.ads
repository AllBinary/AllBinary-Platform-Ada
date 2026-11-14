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
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References is
   type PickedUpLayerInterfaceFactoryInterface_Access is access all org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryInterface_Access;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is access all PickedUpLayerInterfaceFactoryInterface_Access_Array;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterfaceFactoryInterface_Access_Array_Object'Class then PickedUpLayerInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;

with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;

package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype PickedUpLayerType_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access;
   use type PickedUpLayerType_Access;
   subtype PickedUpLayerType_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array;
   use type PickedUpLayerType_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access;
   subtype PickedUpLayerType_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array;
   use type PickedUpLayerType_Access_Array_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PickedUpLayerInterfaceFactoryInterface is interface;
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.Java_Unbox_PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PickedUpLayerInterfaceFactoryInterface (Value : PickedUpLayerInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryInterface) return PickedUpLayerType_Access is abstract;
   function getIconLayer (This : in out PickedUpLayerInterfaceFactoryInterface) return AllBinaryLayer_Access is abstract;
   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryInterface) return Animation_Access is abstract;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;


