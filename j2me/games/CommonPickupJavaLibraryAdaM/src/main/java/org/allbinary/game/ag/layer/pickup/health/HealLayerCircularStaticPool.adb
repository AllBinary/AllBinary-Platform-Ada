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


package body org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out HealLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HealLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer) is
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        AllBinaryLayerCircularPool (This).initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total);
   end Initialize;

   function Create (allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer) return HealLayerCircularStaticPool_Access is
      This : constant HealLayerCircularStaticPool_Access := new HealLayerCircularStaticPool;
   begin
      Initialize (This.all, allbinaryLayerFactoryInterface, total);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out HealLayerCircularStaticPool; sourceLayerInterface : AllBinaryLayer_Access) is
      healLayer : HealLayer_Access;
      healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface_Access;
      healthInterface : HealthInterface_Access;
   begin
        healLayer := HealLayer_Access (This.getNextInstance);
        healthInterfaceCompositeInterface := HealthInterfaceCompositeInterface_Access (sourceLayerInterface);
        healthInterface := healthInterfaceCompositeInterface.getHealthInterface;
        healLayer.visit (healthInterface);
   end visit;

end org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;


