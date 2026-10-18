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



package body org.allbinary.game.combat.damage.DamageFloaters_Package is

   procedure Initialize_Fields (This : in out DamageFloaters'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DamageFloaters'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return DamageFloaters_Access is
      This : constant DamageFloaters_Access := new DamageFloaters;
   begin
      DamageFloaters_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DamageFloaters_Access is
   begin
        return DamageFloaters_Package.SINGLETON;
   end getInstance;

   procedure add (This : in out DamageFloaters; damage : Integer) is
   begin
        null;
   end add;

begin
   null;
   SINGLETON := DamageFloaters_Package.Create;

end org.allbinary.game.combat.damage.DamageFloaters_Package;


