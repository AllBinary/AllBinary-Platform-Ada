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
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.combat.damage.DamageableInterface_Package is

   package NamedInterface_Package renames org.allbinary.layer.NamedInterface_Package;

   type DamageableInterface is interface and NamedInterface;
   type DamageableInterface_Access is access all DamageableInterface'Class;
   type DamageableInterface_Access_Array is array (Natural range <>) of DamageableInterface_Access;
   type DamageableInterface_Access_Array_Access is access all DamageableInterface_Access_Array;
   procedure damage (This : in out DamageableInterface; damage : Integer; damageType : Integer) is abstract;
   function getDamage (This : in out DamageableInterface; damageType : Integer) return Integer is abstract;

end org.allbinary.game.combat.damage.DamageableInterface_Package;


