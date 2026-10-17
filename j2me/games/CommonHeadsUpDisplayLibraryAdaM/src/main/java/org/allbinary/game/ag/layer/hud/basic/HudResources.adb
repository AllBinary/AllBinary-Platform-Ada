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


package body org.allbinary.game.ag.layer.hud.basic.HudResources_Package is

   procedure Initialize_Fields (This : in out HudResources'Class) is
   begin
      null;
      This.RESOURCE_LIFE := To_Unbounded_String ("/hud_life_10_by_10.png");
      This.RESOURCE_HEALTH := To_Unbounded_String ("/hud_health_10_by_10.png");
   end Initialize_Fields;


   function getInstance return HudResources_Access is
   begin
        return HudResources_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HudResources'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HudResources_Access is
      This : constant HudResources_Access := new HudResources;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant HudResources_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HudResources_Package.Create;

end org.allbinary.game.ag.layer.hud.basic.HudResources_Package;


