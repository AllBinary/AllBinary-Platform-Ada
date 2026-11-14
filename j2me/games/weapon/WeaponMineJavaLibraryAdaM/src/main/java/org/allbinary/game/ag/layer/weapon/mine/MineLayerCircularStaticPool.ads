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
limited with org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package;
package org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References is
   type MineLayerCircularStaticPool_Access is access all org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package.MineLayerCircularStaticPool'Class;
   type MineLayerCircularStaticPool_Access_Array is array (Natural range <>) of MineLayerCircularStaticPool_Access;
   type MineLayerCircularStaticPool_Access_Array_Access is access all MineLayerCircularStaticPool_Access_Array;
   type MineLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of MineLayerCircularStaticPool_Access_Array_Access;
   type MineLayerCircularStaticPool_Access_Array_Access_Array_Access is access all MineLayerCircularStaticPool_Access_Array_Access_Array;
   type MineLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : MineLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in MineLayerCircularStaticPool_Access_Array_Object'Class then MineLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type MineLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MineLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MineLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MineLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MineLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MineLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MineLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then MineLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References;

with org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References;
limited with org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package_References;

package org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package is

   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;
   package Reference_Types is
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
   subtype ViewPositionFactoryInterface_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access;
   use type ViewPositionFactoryInterface_Access;
   subtype ViewPositionFactoryInterface_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array;
   use type ViewPositionFactoryInterface_Access_Array;
   subtype ViewPositionFactoryInterface_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access;
   use type ViewPositionFactoryInterface_Access_Array_Access;
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array;
   use type ViewPositionFactoryInterface_Access_Array_Access_Array;
   subtype ViewPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionFactoryInterface_Package_References.ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   use type ViewPositionFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MineLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.MineLayerCircularStaticPool_Access;
   function "=" (Left, Right : MineLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References."=";
   subtype MineLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.MineLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : MineLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References."=";
   subtype MineLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.MineLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : MineLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : MineLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_MineLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return MineLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.Java_Unbox_MineLayerCircularStaticPool_Access_Array;
   subtype MineLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.MineLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : MineLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References."=";
   subtype MineLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.MineLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MineLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : MineLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_MineLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return MineLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package_References.Java_Unbox_MineLayerCircularStaticPool_Access_Array_Access_Array;

   type MineLayerCircularStaticPool is new Java_Object with null record;
   WEAPON_LAYER_CIRCULAR_STATIC_POOL : WeaponLayerCircularPool_Access;

   procedure Initialize (This : in out MineLayerCircularStaticPool'Class);
   function Create return MineLayerCircularStaticPool_Access;
   procedure init (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface_Package.ViewPositionFactoryInterface'Class);
   function getInstance return WeaponLayerCircularPool_Access;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package;


