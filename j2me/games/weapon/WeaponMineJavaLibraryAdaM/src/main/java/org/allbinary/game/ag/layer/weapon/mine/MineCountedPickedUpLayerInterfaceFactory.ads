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
limited with org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References is
   type MineCountedPickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package.MineCountedPickedUpLayerInterfaceFactory'Class;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of MineCountedPickedUpLayerInterfaceFactory_Access;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access is access all MineCountedPickedUpLayerInterfaceFactory_Access_Array;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineCountedPickedUpLayerInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in MineCountedPickedUpLayerInterfaceFactory_Access_Array_Object'Class then MineCountedPickedUpLayerInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class then MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
limited with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   use type WeaponProperties_Access;
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   use type WeaponProperties_Access_Array;
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access;
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   use type WeaponProperties_Access_Array_Access_Array;
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access_Array_Access;
   subtype WeaponLayerCircularPool_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access;
   use type WeaponLayerCircularPool_Access;
   subtype WeaponLayerCircularPool_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array;
   use type WeaponLayerCircularPool_Access_Array;
   subtype WeaponLayerCircularPool_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access;
   use type WeaponLayerCircularPool_Access_Array_Access;
   subtype WeaponLayerCircularPool_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array;
   use type WeaponLayerCircularPool_Access_Array_Access_Array;
   subtype WeaponLayerCircularPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array_Access;
   use type WeaponLayerCircularPool_Access_Array_Access_Array_Access;
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
   subtype SmallIntegerSingletonFactory_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access;
   use type SmallIntegerSingletonFactory_Access;
   subtype SmallIntegerSingletonFactory_Access_Array is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array;
   use type SmallIntegerSingletonFactory_Access_Array;
   subtype SmallIntegerSingletonFactory_Access_Array_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access;
   use type SmallIntegerSingletonFactory_Access_Array_Access;
   subtype SmallIntegerSingletonFactory_Access_Array_Access_Array is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access_Array;
   use type SmallIntegerSingletonFactory_Access_Array_Access_Array;
   subtype SmallIntegerSingletonFactory_Access_Array_Access_Array_Access is org.allbinary.logic.math.SmallIntegerSingletonFactory_Package_References.SmallIntegerSingletonFactory_Access_Array_Access_Array_Access;
   use type SmallIntegerSingletonFactory_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype MineCountedPickedUpLayerInterfaceFactory_Access is org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.MineCountedPickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : MineCountedPickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype MineCountedPickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.MineCountedPickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : MineCountedPickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array (Value : access Java_Object'Class) return MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array;
   subtype MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References."=";
   subtype MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package_References.Java_Unbox_MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type MineCountedPickedUpLayerInterfaceFactory is new CountedPickedUpLayerInterfaceFactory with record
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access;
      weaponProperties : WeaponProperties_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out MineCountedPickedUpLayerInterfaceFactory'Class);
   function Create return MineCountedPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   function getTotal (This : in out MineCountedPickedUpLayerInterfaceFactory) return Integer;
   function getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;


