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

limited with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References is
   type CountedPickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class;
   type CountedPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactory_Access;
   type CountedPickedUpLayerInterfaceFactory_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactory_Access_Array;
   type CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   type CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References;
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
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
limited with org.allbinary.game.layer.pickup.IconLayer_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;

package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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


   subtype CountedPickedUpLayerInterfaceFactory_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References."=";

   type CountedPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and CountedPickedUpLayerInterfaceFactoryInterface with record
      id : Integer;
   end record;
   NULL_COUNTED_PICKUP_LAYER_FACTORY : CountedPickedUpLayerInterfaceFactory_Access;

   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class);
   function Create (pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) return CountedPickedUpLayerInterfaceFactory_Access;
   function getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);
   function getTotal (This : in out CountedPickedUpLayerInterfaceFactory) return Integer;
   function getId (This : in out CountedPickedUpLayerInterfaceFactory) return Integer;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;


