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


with org.allbinary.game.ag.layer.pickup.health.HealLayer_Package; use org.allbinary.game.ag.layer.pickup.health.HealLayer_Package;

package body org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package is

   procedure Initialize_Fields (This : in out HealLayerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HealLayerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HealLayerFactory_Access is
      This : constant HealLayerFactory_Access := new HealLayerFactory;
   begin
      HealLayerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out HealLayerFactory) return AllBinaryLayer_Access is
   begin
        return AllBinaryLayer_Access (HealLayer_Package.Create);
   end getInstance;

end org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package;


