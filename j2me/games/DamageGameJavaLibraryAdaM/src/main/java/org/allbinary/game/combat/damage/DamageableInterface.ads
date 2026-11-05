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

limited with org.allbinary.game.combat.damage.DamageableInterface_Package;
package org.allbinary.game.combat.damage.DamageableInterface_Package_References is
   type DamageableInterface_Access is access all org.allbinary.game.combat.damage.DamageableInterface_Package.DamageableInterface'Class;
   type DamageableInterface_Access_Array is array (Natural range <>) of DamageableInterface_Access;
   type DamageableInterface_Access_Array_Access is access all DamageableInterface_Access_Array;
   type DamageableInterface_Access_Array_Access_Array is array (Natural range <>) of DamageableInterface_Access_Array_Access;
   type DamageableInterface_Access_Array_Access_Array_Access is access all DamageableInterface_Access_Array_Access_Array;
end org.allbinary.game.combat.damage.DamageableInterface_Package_References;

with org.allbinary.game.combat.damage.DamageableInterface_Package_References;
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

   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DamageableInterface is interface and NamedInterface;
   subtype DamageableInterface_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access;
   function "=" (Left, Right : DamageableInterface_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array;
   function "=" (Left, Right : DamageableInterface_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   subtype DamageableInterface_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageableInterface_Package_References.DamageableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageableInterface_Package_References."=";
   function Java_Object_Access_From_DamageableInterface (Value : DamageableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure damage (This : in out DamageableInterface; damage : Integer; damageType : Integer) is abstract;
   function getDamage (This : in out DamageableInterface; damageType : Integer) return Integer is abstract;
   procedure getDamage (This : in out DamageableInterface; damageType : Integer) is abstract;

end org.allbinary.game.combat.damage.DamageableInterface_Package;


