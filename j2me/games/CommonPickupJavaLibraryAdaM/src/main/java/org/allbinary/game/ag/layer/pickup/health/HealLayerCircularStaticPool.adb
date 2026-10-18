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


with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterfaceCompositeInterface_Package; use org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
with org.allbinary.game.ag.layer.pickup.health.HealLayer_Package; use org.allbinary.game.ag.layer.pickup.health.HealLayer_Package;

package body org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package is

   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package HealthInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
   procedure Initialize_Fields (This : in out HealLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HealLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) is
      allbinaryLayerFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (allbinaryLayerFactoryInterface_Param);
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        AllBinaryLayerCircularPool (This).initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total);
   end Initialize;

   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return HealLayerCircularStaticPool_Access is
      This : constant HealLayerCircularStaticPool_Access := new HealLayerCircularStaticPool;
   begin
      HealLayerCircularStaticPool_Package.Initialize (This.all, allbinaryLayerFactoryInterface_Param, total);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out HealLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      healLayer : HealLayer_Access;
      healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface_Access;
      healthInterface : HealthInterface_Access;
   begin
        healLayer := HealLayer_Access (HealLayerCircularStaticPool'Class (This).getNextInstance);
        healthInterfaceCompositeInterface := HealthInterfaceCompositeInterface_Access (sourceLayerInterface);
        healthInterface := HealthInterface_Access (healthInterfaceCompositeInterface.getHealthInterface);
        healLayer.visit (healthInterface);
   end visit;

end org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;


