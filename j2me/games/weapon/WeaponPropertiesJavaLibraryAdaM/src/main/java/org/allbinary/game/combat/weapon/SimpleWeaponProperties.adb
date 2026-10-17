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


package body org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package is

   procedure Initialize_Fields (This : in out SimpleWeaponProperties'Class) is
   begin
      null;
      This.damage := 0;
      This.dissipation := 0;
      This.range_Id := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out SimpleWeaponProperties'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SimpleWeaponProperties_Access is
      This : constant SimpleWeaponProperties_Access := new SimpleWeaponProperties;
   begin
      SimpleWeaponProperties_Package.Initialize (This.all);
      return This;
   end Create;


   procedure set (This : in out SimpleWeaponProperties; simpleWeaponProperties_Param : access SimpleWeaponProperties_Package.SimpleWeaponProperties'Class) is
      simpleWeaponProperties : constant SimpleWeaponProperties_Access := SimpleWeaponProperties_Access (simpleWeaponProperties_Param);
   begin
        This.setDamage (simpleWeaponProperties.getDamage);
        This.setDissipation (simpleWeaponProperties.getDissipation);
        This.setRange (simpleWeaponProperties.getRange);
   end set;

   procedure setDamage (This : in out SimpleWeaponProperties; damage : Integer) is
   begin
        This.damage := damage;
   end setDamage;

   function getDamage (This : in out SimpleWeaponProperties) return Integer is
   begin
        return This.damage;
   end getDamage;

   procedure setDissipation (This : in out SimpleWeaponProperties; dissipation : Short_Integer) is
   begin
        This.dissipation := dissipation;
   end setDissipation;

   function getDissipation (This : in out SimpleWeaponProperties) return Short_Integer is
   begin
        return This.dissipation;
   end getDissipation;

   function getRange (This : in out SimpleWeaponProperties) return Integer is
   begin
        return This.range_Id;
   end getRange;

   procedure setRange (This : in out SimpleWeaponProperties; range_Id : Integer) is
   begin
        This.range_Id := range_Id;
   end setRange;

end org.allbinary.game.combat.weapon.SimpleWeaponProperties_Package;


