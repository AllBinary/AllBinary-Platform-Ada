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



package body org.allbinary.game.combat.damage.ExplosionResources_Package is

   procedure Initialize_Fields (This : in out ExplosionResources'Class) is
   begin
      null;
      This.EXPLOSION_90_RESOURCE := To_Unbounded_String ("/explosion_sprite_90_by_90.png");
      This.EXPLOSION_60_RESOURCE := To_Unbounded_String ("/explosion_sprite_60_by_60.png");
      This.HALF_EXPLOSION_RESOURCE := To_Unbounded_String ("/explosion_sprite_30_by_30.png");
      This.THIRD_EXPLOSION_RESOURCE := To_Unbounded_String ("/explosion_sprite_15_by_15.png");
   end Initialize_Fields;


   function getInstance return ExplosionResources_Access is
   begin
        return ExplosionResources_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ExplosionResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ExplosionResources_Access is
      This : constant ExplosionResources_Access := new ExplosionResources;
   begin
      ExplosionResources_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := ExplosionResources_Package.Create;

end org.allbinary.game.combat.damage.ExplosionResources_Package;


