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


package body org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out Points30kPickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      This.pool := PointsLayerCircularStaticPool_Package.Create (PointsLayerFactory_Package.Create ((GameConfigurationUtil_Package.getInstance.getCompetitionValue) * (30000)), 1);
   end Initialize_Fields;


   --  throws Exception
   procedure init is
   begin
        Points30kPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface := Points30kPickedUpLayerInterfaceFactory_Package.Create;
   end init;

   procedure Initialize (This : in out Points30kPickedUpLayerInterfaceFactory'Class) is
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, PickedUpLayerTypeFactory_Package.getInstance.POINTS, IconLayerFactory_Package.getInstance (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (PointsResources_Package.getInstance.RESOURCE_3).getInstance (0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (PointsResources_Package.getInstance.RESOURCE_3).getInstance (0));
        Initialize_Fields (This);
   end Initialize;

   function Create return Points30kPickedUpLayerInterfaceFactory_Access is
      This : constant Points30kPickedUpLayerInterfaceFactory_Access := new Points30kPickedUpLayerInterfaceFactory;
   begin
      Points30kPickedUpLayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotal (This : in out Points30kPickedUpLayerInterfaceFactory) return Integer is
   begin
        return 1;
   end getTotal;

   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return Points30kPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface;
   end getInstance;

   --  throws Exception
   procedure process (This : in out Points30kPickedUpLayerInterfaceFactory; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;

end org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package;


