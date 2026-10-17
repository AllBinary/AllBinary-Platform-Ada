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


package body org.allbinary.game.ag.layer.pickup.life.LifeResources_Package is

   procedure Initialize_Fields (This : in out LifeResources'Class) is
   begin
      null;
      This.RESOURCE := To_Unbounded_String ("life_drop_20_by_20.png");
   end Initialize_Fields;


   procedure Initialize (This : in out LifeResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LifeResources_Access is
      This : constant LifeResources_Access := new LifeResources;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return LifeResources_Access is
   begin
        return LifeResources_Package.SINGLETON;
   end getInstance;

   procedure getInstance is
      Java_Result : constant LifeResources_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := LifeResources_Package.Create;

end org.allbinary.game.ag.layer.pickup.life.LifeResources_Package;


