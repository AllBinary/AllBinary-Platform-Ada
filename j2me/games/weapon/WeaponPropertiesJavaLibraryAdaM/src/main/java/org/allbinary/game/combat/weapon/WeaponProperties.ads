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

limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
package org.allbinary.game.combat.weapon.WeaponProperties_Package_References is
   type WeaponProperties_Access is access all org.allbinary.game.combat.weapon.WeaponProperties_Package.WeaponProperties'Class;
   type WeaponProperties_Access_Array is array (Natural range <>) of WeaponProperties_Access;
   type WeaponProperties_Access_Array_Access is access all WeaponProperties_Access_Array;
   type WeaponProperties_Access_Array_Access_Array is array (Natural range <>) of WeaponProperties_Access_Array_Access;
   type WeaponProperties_Access_Array_Access_Array_Access is access all WeaponProperties_Access_Array_Access_Array;
end org.allbinary.game.combat.weapon.WeaponProperties_Package_References;

with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package; use org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;

package org.allbinary.game.combat.weapon.WeaponProperties_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Reference_Types is
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   function "=" (Left, Right : WeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";

   type WeaponProperties is new SimpleWeaponProperties with record
      reloadTime : Long_Long_Integer;
      targetingTime : Long_Long_Integer;
      speed : BasicDecimal_Access;
      MAX : Long_Long_Integer;
      ZERO : Short_Integer;
   end record;
   NULL_WEAPON_PROPERTIES : WeaponProperties_Access;
   messageSent : Boolean;
   DAMAGE : Unbounded_String;
   RANGE_Id : Unbounded_String;
   RELOAD : Unbounded_String;

   procedure Initialize (This : in out WeaponProperties'Class; reloadTime : Long_Long_Integer; targetingTime : Long_Long_Integer; speed : Long_Long_Integer; damage : Integer; dissipation : Short_Integer);
   function Create (reloadTime : Long_Long_Integer; targetingTime : Long_Long_Integer; speed : Long_Long_Integer; damage : Integer; dissipation : Short_Integer) return WeaponProperties_Access;
   procedure setReloadTime (This : in out WeaponProperties; reloadTime : Long_Long_Integer);
   function getReloadTime (This : in out WeaponProperties) return Long_Long_Integer;
   procedure setTargetingTime (This : in out WeaponProperties; targetingTime : Long_Long_Integer);
   function getTargetingTime (This : in out WeaponProperties) return Long_Long_Integer;
   function getSpeed (This : in out WeaponProperties) return BasicDecimal_Access;
   procedure setSpeed (This : in out WeaponProperties; speed_Param : access BasicDecimal_Package.BasicDecimal'Class);
   function getDamageI (This : in out WeaponProperties; range_Id : Integer) return Integer;
   procedure getDamageI (This : in out WeaponProperties; range_Id : Integer);
   function toStringArray (This : in out WeaponProperties) return Unbounded_String_Array_Access;
   function toString (This : in out WeaponProperties) return Unbounded_String;

end org.allbinary.game.combat.weapon.WeaponProperties_Package;


