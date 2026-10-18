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



package body org.allbinary.game.ag.layer.pickup.health.HealthResources_Package is

   procedure Initialize_Fields (This : in out HealthResources'Class) is
   begin
      null;
      This.RESOURCE := To_Unbounded_String ("health_drop_20_by_20.png");
   end Initialize_Fields;


   procedure Initialize (This : in out HealthResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HealthResources_Access is
      This : constant HealthResources_Access := new HealthResources;
   begin
      HealthResources_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return HealthResources_Access is
   begin
        return HealthResources_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := HealthResources_Package.Create;

end org.allbinary.game.ag.layer.pickup.health.HealthResources_Package;


