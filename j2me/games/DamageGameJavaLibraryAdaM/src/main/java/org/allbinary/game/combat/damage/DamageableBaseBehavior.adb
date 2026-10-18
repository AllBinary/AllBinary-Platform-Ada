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



package body org.allbinary.game.combat.damage.DamageableBaseBehavior_Package is

   procedure Initialize_Fields (This : in out DamageableBaseBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DamageableBaseBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DamageableBaseBehavior_Access is
      This : constant DamageableBaseBehavior_Access := new DamageableBaseBehavior;
   begin
      DamageableBaseBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DamageableBaseBehavior_Access is
   begin
        return DamageableBaseBehavior_Package.instance;
   end getInstance;

   function getName (This : in out DamageableBaseBehavior) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   --  throws Exception
   procedure damage (This : in out DamageableBaseBehavior; damage : Integer; damageType : Integer) is
   begin
        null;
   end damage;

   --  throws Exception
   function getDamage (This : in out DamageableBaseBehavior; damageType : Integer) return Integer is
   begin
        return 6000;
   end getDamage;

   procedure getDamage (This : in out DamageableBaseBehavior; damageType : Integer) is
      Java_Result : constant Integer := DamageableBaseBehavior'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   instance := DamageableBaseBehavior_Package.Create;

end org.allbinary.game.combat.damage.DamageableBaseBehavior_Package;


