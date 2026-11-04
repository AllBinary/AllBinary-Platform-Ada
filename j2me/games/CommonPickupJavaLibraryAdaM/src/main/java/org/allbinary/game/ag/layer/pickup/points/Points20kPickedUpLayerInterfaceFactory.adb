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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsResources_Package; use org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;

package body org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package IconLayerFactory_Package renames Standard.org.allbinary.game.layer.pickup.IconLayerFactory_Package;
   package PickedUpLayerTypeFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype PointsLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access;
   function "=" (Left, Right : PointsLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References."=";
   subtype PointsLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : PointsLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References."=";
   subtype PointsLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : PointsLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References."=";
   subtype PointsLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : PointsLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References."=";
   subtype PointsLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References."=";
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
        return PickedUpLayerInterfaceFactoryInterface_Access (Points20kPickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface);
   end getInstance;

   --  throws Exception
   procedure process (This : in out Points20kPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := PickedUpLayerInterfaceFactoryInterface_Access (CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY);

end org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package;


