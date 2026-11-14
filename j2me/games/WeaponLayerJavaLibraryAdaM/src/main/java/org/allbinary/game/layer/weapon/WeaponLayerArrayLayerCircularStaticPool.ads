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
limited with org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package;
package org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References is
   type WeaponLayerArrayLayerCircularStaticPool_Access is access all org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package.WeaponLayerArrayLayerCircularStaticPool'Class;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array is array (Natural range <>) of WeaponLayerArrayLayerCircularStaticPool_Access;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access is access all WeaponLayerArrayLayerCircularStaticPool_Access_Array;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access is access all WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WeaponLayerArrayLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in WeaponLayerArrayLayerCircularStaticPool_Access_Array_Object'Class then WeaponLayerArrayLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References;

with org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
limited with org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package_References;

package org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   subtype WeaponLayer_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access;
   use type WeaponLayer_Access;
   subtype WeaponLayer_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array;
   use type WeaponLayer_Access_Array;
   subtype WeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access;
   use type WeaponLayer_Access_Array_Access;
   subtype WeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array;
   use type WeaponLayer_Access_Array_Access_Array;
   subtype WeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array_Access;
   use type WeaponLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeaponLayerArrayLayerCircularStaticPool_Access is org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.WeaponLayerArrayLayerCircularStaticPool_Access;
   function "=" (Left, Right : WeaponLayerArrayLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References."=";
   subtype WeaponLayerArrayLayerCircularStaticPool_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.WeaponLayerArrayLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : WeaponLayerArrayLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References."=";
   subtype WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array;
   subtype WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References."=";
   subtype WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package_References.Java_Unbox_WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array;

   type WeaponLayerArrayLayerCircularStaticPool is new Java_Object with record
      MAX : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      WEAPONLAYER_ARRAY : WeaponLayer_Access_Array_Access_Array_Access;
      TWO_WEAPONLAYER_ARRAY : WeaponLayer_Access_Array_Access_Array_Access;
      THREE_WEAPONLAYER_ARRAY : WeaponLayer_Access_Array_Access_Array_Access;
   end record;
   instance : WeaponLayerArrayLayerCircularStaticPool_Access;

   procedure Initialize (This : in out WeaponLayerArrayLayerCircularStaticPool'Class);
   function Create return WeaponLayerArrayLayerCircularStaticPool_Access;
   function getInstance return WeaponLayerArrayLayerCircularStaticPool_Access;
   procedure init (This : in out WeaponLayerArrayLayerCircularStaticPool);
   function getWeaponLayerArrays (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer) return WeaponLayer_Access_Array_Access_Array_Access;
   procedure getWeaponLayerArrays (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer);
   function getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer) return WeaponLayer_Access_Array_Access;
   procedure getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer);

end org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package;


