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


package body org.allbinary.game.combat.CombatBaseBehavior_Package is

   procedure Initialize_Fields (This : in out CombatBaseBehavior'Class) is
   begin
      null;
      
      
      This.readyForExplosion := False;
   end Initialize_Fields;


   procedure Initialize (This : in out CombatBaseBehavior'Class; damageableBaseBehavior_Param : access DamageableBaseBehavior_Package.DamageableBaseBehavior'Class; destroyableBaseBehavior_Param : access DestroyableBaseBehavior_Package.DestroyableBaseBehavior'Class) is
      damageableBaseBehavior : constant DamageableBaseBehavior_Access := DamageableBaseBehavior_Access (damageableBaseBehavior_Param);
      destroyableBaseBehavior : constant DestroyableBaseBehavior_Access := DestroyableBaseBehavior_Access (destroyableBaseBehavior_Param);
   begin
      Initialize_Fields (This);
        This.damageableBaseBehavior := damageableBaseBehavior;
        This.destroyableBaseBehavior := destroyableBaseBehavior;
   end Initialize;

   function Create (damageableBaseBehavior_Param : access DamageableBaseBehavior_Package.DamageableBaseBehavior'Class; destroyableBaseBehavior_Param : access DestroyableBaseBehavior_Package.DestroyableBaseBehavior'Class) return CombatBaseBehavior_Access is
      This : constant CombatBaseBehavior_Access := new CombatBaseBehavior;
   begin
      CombatBaseBehavior_Package.Initialize (This.all, damageableBaseBehavior_Param, destroyableBaseBehavior_Param);
      return This;
   end Create;

   function getDamageableBaseBehavior (This : in out CombatBaseBehavior) return DamageableBaseBehavior_Access is
   begin
        return This.damageableBaseBehavior;
   end getDamageableBaseBehavior;

   function getDestroyableBaseBehavior (This : in out CombatBaseBehavior) return DestroyableBaseBehavior_Access is
   begin
        return This.destroyableBaseBehavior;
   end getDestroyableBaseBehavior;

   function isReadyForExplosion (This : in out CombatBaseBehavior) return Boolean is
   begin
        return This.readyForExplosion;
   end isReadyForExplosion;

   procedure setReadyForExplosion (This : in out CombatBaseBehavior; readyForExplosion : Boolean) is
   begin
        This.readyForExplosion := readyForExplosion;
   end setReadyForExplosion;

begin
   null;
   NULL_COMBAT_BEHAVIOR := CombatBaseBehavior_Package.Create (DamageableBaseBehavior_Package.getInstance, DestroyableBaseBehavior_Package.getInstance);

end org.allbinary.game.combat.CombatBaseBehavior_Package;


