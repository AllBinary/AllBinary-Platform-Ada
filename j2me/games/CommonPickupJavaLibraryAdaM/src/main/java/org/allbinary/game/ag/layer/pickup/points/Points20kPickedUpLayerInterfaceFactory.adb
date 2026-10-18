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
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.IconLayerFactory_Package; use org.allbinary.game.layer.pickup.IconLayerFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsResources_Package; use org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;

package body org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package IconLayerFactory_Package renames Standard.org.allbinary.game.layer.pickup.IconLayerFactory_Package;
   package PickedUpLayerTypeFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
   procedure Initialize_Fields (This : in out Points20kPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      This.pool := PointsLayerCircularStaticPool_Package.Create (PointsLayerFactory_Package.Create ((GameConfigurationUtil_Package.getInstance.getCompetitionValue) * (20000)), 1);
   end Initialize_Fields;


   --  throws Exception
   procedure init is
   begin
        Points20kPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface := Points20kPickedUpLayerInterfaceFactory_Package.Create;
   end init;

   procedure Initialize (This : in out Points20kPickedUpLayerInterfaceFactory'Class) is
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, PickedUpLayerTypeFactory_Package.getInstance.POINTS, IconLayerFactory_Package.getInstance (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (PointsResources_Package.getInstance.RESOURCE_2).getInstance (0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (PointsResources_Package.getInstance.RESOURCE_2).getInstance (0));
        Initialize_Fields (This);
   end Initialize;

   function Create return Points20kPickedUpLayerInterfaceFactory_Access is
      This : constant Points20kPickedUpLayerInterfaceFactory_Access := new Points20kPickedUpLayerInterfaceFactory;
   begin
      Points20kPickedUpLayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotal (This : in out Points20kPickedUpLayerInterfaceFactory) return Integer is
   begin
        return 1;
   end getTotal;

   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return Points20kPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface;
   end getInstance;

   --  throws Exception
   procedure process (This : in out Points20kPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;

end org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package;


