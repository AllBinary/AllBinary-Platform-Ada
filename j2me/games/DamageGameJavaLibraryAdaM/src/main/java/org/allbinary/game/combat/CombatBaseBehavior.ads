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
with org.allbinary.game.combat.damage.DamageableBaseBehavior_Package; use org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;
with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package; use org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;

package org.allbinary.game.combat.CombatBaseBehavior_Package is

   package DamageableBaseBehavior_Package renames Standard.org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;
   package DestroyableBaseBehavior_Package renames Standard.org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;

   type CombatBaseBehavior is tagged;
   type CombatBaseBehavior_Access is access all CombatBaseBehavior'Class;
   type CombatBaseBehavior_Access_Array is array (Natural range <>) of CombatBaseBehavior_Access;
   type CombatBaseBehavior_Access_Array_Access is access all CombatBaseBehavior_Access_Array;
   type CombatBaseBehavior_Access_Array_Access_Array is array (Natural range <>) of CombatBaseBehavior_Access_Array_Access;
   type CombatBaseBehavior_Access_Array_Access_Array_Access is access all CombatBaseBehavior_Access_Array_Access_Array;

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


