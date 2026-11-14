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
limited with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;
package org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References is
   type SimpleWeaponProperties_Access is access all org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package.SimpleWeaponProperties'Class;
   type SimpleWeaponProperties_Access_Array is array (Natural range <>) of SimpleWeaponProperties_Access;
   type SimpleWeaponProperties_Access_Array_Access is access all SimpleWeaponProperties_Access_Array;
   type SimpleWeaponProperties_Access_Array_Access_Array is array (Natural range <>) of SimpleWeaponProperties_Access_Array_Access;
   type SimpleWeaponProperties_Access_Array_Access_Array_Access is access all SimpleWeaponProperties_Access_Array_Access_Array;
   type SimpleWeaponProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleWeaponProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleWeaponProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleWeaponProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleWeaponProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleWeaponProperties_Access_Array_Access is (if Value /= null and then Value.all in SimpleWeaponProperties_Access_Array_Object'Class then SimpleWeaponProperties_Access_Array_Object'Class (Value.all).Value else null);
   type SimpleWeaponProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleWeaponProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleWeaponProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleWeaponProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleWeaponProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleWeaponProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimpleWeaponProperties_Access_Array_Access_Array_Object'Class then SimpleWeaponProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References;

with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SimpleWeaponProperties_Access is org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.SimpleWeaponProperties_Access;
   function "=" (Left, Right : SimpleWeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References."=";
   subtype SimpleWeaponProperties_Access_Array is org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.SimpleWeaponProperties_Access_Array;
   function "=" (Left, Right : SimpleWeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References."=";
   subtype SimpleWeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.SimpleWeaponProperties_Access_Array_Access;
   function "=" (Left, Right : SimpleWeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References."=";
   function Java_Box (Value : SimpleWeaponProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.Java_Box;
   function Java_Unbox_SimpleWeaponProperties_Access_Array (Value : access Java_Object'Class) return SimpleWeaponProperties_Access_Array_Access renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.Java_Unbox_SimpleWeaponProperties_Access_Array;
   subtype SimpleWeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.SimpleWeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleWeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References."=";
   subtype SimpleWeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.SimpleWeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleWeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References."=";
   function Java_Box (Value : SimpleWeaponProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.Java_Box;
   function Java_Unbox_SimpleWeaponProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return SimpleWeaponProperties_Access_Array_Access_Array_Access renames org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package_References.Java_Unbox_SimpleWeaponProperties_Access_Array_Access_Array;

   type SimpleWeaponProperties is new Java_Object with record
      damage : Integer;
      dissipation : Short_Integer;
      range_Id : Integer;
   end record;

   procedure Initialize (This : in out SimpleWeaponProperties'Class);
   function Create return SimpleWeaponProperties_Access;
   procedure set (This : in out SimpleWeaponProperties; simpleWeaponProperties_Var_Param : access SimpleWeaponProperties_Package.SimpleWeaponProperties'Class);
   procedure setDamage (This : in out SimpleWeaponProperties; damage : Integer);
   function getDamage (This : in out SimpleWeaponProperties) return Integer;
   procedure setDissipation (This : in out SimpleWeaponProperties; dissipation : Short_Integer);
   function getDissipation (This : in out SimpleWeaponProperties) return Short_Integer;
   function getRange (This : in out SimpleWeaponProperties) return Integer;
   procedure setRange (This : in out SimpleWeaponProperties; range_Id : Integer);

end org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;


