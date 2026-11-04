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

limited with org.allbinary.game.combat.CombatBaseBehavior_Package;
package org.allbinary.game.combat.CombatBaseBehavior_Package_References is
   type CombatBaseBehavior_Access is access all org.allbinary.game.combat.CombatBaseBehavior_Package.CombatBaseBehavior'Class;
   type CombatBaseBehavior_Access_Array is array (Natural range <>) of CombatBaseBehavior_Access;
   type CombatBaseBehavior_Access_Array_Access is access all CombatBaseBehavior_Access_Array;
   type CombatBaseBehavior_Access_Array_Access_Array is array (Natural range <>) of CombatBaseBehavior_Access_Array_Access;
   type CombatBaseBehavior_Access_Array_Access_Array_Access is access all CombatBaseBehavior_Access_Array_Access_Array;
end org.allbinary.game.combat.CombatBaseBehavior_Package_References;

with org.allbinary.game.combat.CombatBaseBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;
with org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References;
limited with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;
with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References;

package org.allbinary.game.combat.CombatBaseBehavior_Package is

   package DamageableBaseBehavior_Package renames Standard.org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;
   package DestroyableBaseBehavior_Package renames Standard.org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;
   package Reference_Types is
   subtype DamageableBaseBehavior_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access;
   use type DamageableBaseBehavior_Access;
   subtype DamageableBaseBehavior_Access_Array is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array;
   use type DamageableBaseBehavior_Access_Array;
   subtype DamageableBaseBehavior_Access_Array_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access;
   use type DamageableBaseBehavior_Access_Array_Access;
   subtype DamageableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access_Array;
   use type DamageableBaseBehavior_Access_Array_Access_Array;
   subtype DamageableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageableBaseBehavior_Package_References.DamageableBaseBehavior_Access_Array_Access_Array_Access;
   use type DamageableBaseBehavior_Access_Array_Access_Array_Access;
   subtype DestroyableBaseBehavior_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access;
   use type DestroyableBaseBehavior_Access;
   subtype DestroyableBaseBehavior_Access_Array is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array;
   use type DestroyableBaseBehavior_Access_Array;
   subtype DestroyableBaseBehavior_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access;
   use type DestroyableBaseBehavior_Access_Array_Access;
   subtype DestroyableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access_Array;
   use type DestroyableBaseBehavior_Access_Array_Access_Array;
   subtype DestroyableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access_Array_Access;
   use type DestroyableBaseBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CombatBaseBehavior_Access is org.allbinary.game.combat.CombatBaseBehavior_Package_References.CombatBaseBehavior_Access;
   function "=" (Left, Right : CombatBaseBehavior_Access) return Boolean renames org.allbinary.game.combat.CombatBaseBehavior_Package_References."=";
   subtype CombatBaseBehavior_Access_Array is org.allbinary.game.combat.CombatBaseBehavior_Package_References.CombatBaseBehavior_Access_Array;
   function "=" (Left, Right : CombatBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.combat.CombatBaseBehavior_Package_References."=";
   subtype CombatBaseBehavior_Access_Array_Access is org.allbinary.game.combat.CombatBaseBehavior_Package_References.CombatBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CombatBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.combat.CombatBaseBehavior_Package_References."=";
   subtype CombatBaseBehavior_Access_Array_Access_Array is org.allbinary.game.combat.CombatBaseBehavior_Package_References.CombatBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CombatBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.CombatBaseBehavior_Package_References."=";
   subtype CombatBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.CombatBaseBehavior_Package_References.CombatBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CombatBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.CombatBaseBehavior_Package_References."=";

   type CombatBaseBehavior is new Java_Object with record
      damageableBaseBehavior : DamageableBaseBehavior_Access;
      destroyableBaseBehavior : DestroyableBaseBehavior_Access;
      readyForExplosion : Boolean;
   end record;
   NULL_COMBAT_BEHAVIOR : CombatBaseBehavior_Access;

   procedure Initialize (This : in out CombatBaseBehavior'Class; damageableBaseBehavior_Param : access DamageableBaseBehavior_Package.DamageableBaseBehavior'Class; destroyableBaseBehavior_Param : access DestroyableBaseBehavior_Package.DestroyableBaseBehavior'Class);
   function Create (damageableBaseBehavior_Param : access DamageableBaseBehavior_Package.DamageableBaseBehavior'Class; destroyableBaseBehavior_Param : access DestroyableBaseBehavior_Package.DestroyableBaseBehavior'Class) return CombatBaseBehavior_Access;
   function getDamageableBaseBehavior (This : in out CombatBaseBehavior) return DamageableBaseBehavior_Access;
   function getDestroyableBaseBehavior (This : in out CombatBaseBehavior) return DestroyableBaseBehavior_Access;
   function isReadyForExplosion (This : in out CombatBaseBehavior) return Boolean;
   procedure setReadyForExplosion (This : in out CombatBaseBehavior; readyForExplosion : Boolean);

end org.allbinary.game.combat.CombatBaseBehavior_Package;


