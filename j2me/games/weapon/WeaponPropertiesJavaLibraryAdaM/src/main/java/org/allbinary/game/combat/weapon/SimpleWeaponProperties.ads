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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package is


   type SimpleWeaponProperties is tagged;
   type SimpleWeaponProperties_Access is access all SimpleWeaponProperties'Class;
   type SimpleWeaponProperties_Access_Array is array (Natural range <>) of SimpleWeaponProperties_Access;
   type SimpleWeaponProperties_Access_Array_Access is access all SimpleWeaponProperties_Access_Array;

   type SimpleWeaponProperties is new Java_Object with record
      damage : Integer;
      dissipation : Short_Integer;
      range_Id : Integer;
   end record;

   procedure Initialize (This : in out SimpleWeaponProperties'Class);
   function Create return SimpleWeaponProperties_Access;
   procedure set (This : in out SimpleWeaponProperties; simpleWeaponProperties_Param : access SimpleWeaponProperties'Class);
   procedure setDamage (This : in out SimpleWeaponProperties; damage : Integer);
   function getDamage (This : in out SimpleWeaponProperties) return Integer;
   procedure setDissipation (This : in out SimpleWeaponProperties; dissipation : Short_Integer);
   function getDissipation (This : in out SimpleWeaponProperties) return Short_Integer;
   function getRange (This : in out SimpleWeaponProperties) return Integer;
   procedure setRange (This : in out SimpleWeaponProperties; range_Id : Integer);

end org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;


