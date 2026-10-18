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


with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.IconLayerFactory_Package; use org.allbinary.game.layer.pickup.IconLayerFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package; use org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.health.HealthResources_Package; use org.allbinary.game.ag.layer.pickup.health.HealthResources_Package;

package body org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package IconLayerFactory_Package renames Standard.org.allbinary.game.layer.pickup.IconLayerFactory_Package;
   package PickedUpLayerTypeFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
   procedure Initialize_Fields (This : in out HealPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      This.pool := HealLayerCircularStaticPool_Package.Create (HealLayerFactory_Package.Create, 1);
   end Initialize_Fields;


   --  throws Exception
   procedure init is
   begin
        HealPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface := HealPickedUpLayerInterfaceFactory_Package.Create;
   end init;

   procedure Initialize (This : in out HealPickedUpLayerInterfaceFactory'Class) is
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, PickedUpLayerTypeFactory_Package.getInstance.HEAL, IconLayerFactory_Package.getInstance (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (HealthResources_Package.getInstance.RESOURCE).getInstance (0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (HealthResources_Package.getInstance.RESOURCE).getInstance (0));
        Initialize_Fields (This);
   end Initialize;

   function Create return HealPickedUpLayerInterfaceFactory_Access is
      This : constant HealPickedUpLayerInterfaceFactory_Access := new HealPickedUpLayerInterfaceFactory;
   begin
      HealPickedUpLayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotal (This : in out HealPickedUpLayerInterfaceFactory) return Integer is
   begin
        return 1;
   end getTotal;

   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return HealPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface;
   end getInstance;

   --  throws Exception
   procedure process (This : in out HealPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;

end org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package;


