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
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References is
   type PickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package.PickedUpLayerInterfaceFactory'Class;
   type PickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactory_Access;
   type PickedUpLayerInterfaceFactory_Access_Array_Access is access all PickedUpLayerInterfaceFactory_Access_Array;
   type PickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactory_Access_Array_Access;
   type PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all PickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   type PickedUpLayerInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterfaceFactory_Access_Array_Object'Class then PickedUpLayerInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class then PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References;
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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;
limited with org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package_References;

package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package is

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
   subtype IconLayer_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access;
   use type IconLayer_Access;
   subtype IconLayer_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array;
   use type IconLayer_Access_Array;
   subtype IconLayer_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access;
   use type IconLayer_Access_Array_Access;
   subtype IconLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array;
   use type IconLayer_Access_Array_Access_Array;
   subtype IconLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.IconLayer_Package_References.IconLayer_Access_Array_Access_Array_Access;
   use type IconLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PickedUpLayerInterfaceFactory_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.PickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References."=";
   subtype PickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.PickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References."=";
   subtype PickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.PickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterfaceFactory_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array;
   subtype PickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.PickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References."=";
   subtype PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package_References.Java_Unbox_PickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type PickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactoryBase with record
      pickedUpLayerType : PickedUpLayerType_Access;
      iconLayer : IconLayer_Access;
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out PickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class);
   function Create (pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) return PickedUpLayerInterfaceFactory_Access;
   function getIconLayer (This : in out PickedUpLayerInterfaceFactory) return AllBinaryLayer_Access;
   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactory) return Animation_Access;
   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactory) return PickedUpLayerType_Access;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;


