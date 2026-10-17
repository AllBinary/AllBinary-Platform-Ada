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


package body org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package is

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
      Initialize (This.all);
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
   procedure process (This : in out Points20kPickedUpLayerInterfaceFactory; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

   procedure getTotal (This : in out Points20kPickedUpLayerInterfaceFactory) is
      Java_Result : constant Integer := Points20kPickedUpLayerInterfaceFactory'Class (This).getTotal;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotal;

   procedure getInstance is
      Java_Result : constant PickedUpLayerInterfaceFactoryInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;

end org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package;


