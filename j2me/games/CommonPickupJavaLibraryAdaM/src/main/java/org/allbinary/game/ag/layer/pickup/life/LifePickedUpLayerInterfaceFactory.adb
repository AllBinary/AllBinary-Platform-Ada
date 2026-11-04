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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package; use org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package; use org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeResources_Package; use org.allbinary.game.ag.layer.pickup.life.LifeResources_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayerFactory_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeResources_Package;

package body org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
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
   subtype LifeLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   procedure Initialize_Fields (This : in out LifePickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      This.pool := LifeLayerCircularStaticPool_Package.Create (LifeLayerFactory_Package.Create, 1);
   end Initialize_Fields;


   --  throws Exception
   procedure init is
   begin
        LifePickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface := LifePickedUpLayerInterfaceFactory_Package.Create;
   end init;

   procedure Initialize (This : in out LifePickedUpLayerInterfaceFactory'Class) is
   begin
        PickedUpLayerInterfaceFactory_Package.Initialize (This, PickedUpLayerTypeFactory_Package.getInstance.LIFE, IconLayerFactory_Package.getInstance (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (LifeResources_Package.getInstance.RESOURCE).getInstance (0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (LifeResources_Package.getInstance.RESOURCE).getInstance (0));
        Initialize_Fields (This);
   end Initialize;

   function Create return LifePickedUpLayerInterfaceFactory_Access is
      This : constant LifePickedUpLayerInterfaceFactory_Access := new LifePickedUpLayerInterfaceFactory;
   begin
      LifePickedUpLayerInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotal (This : in out LifePickedUpLayerInterfaceFactory) return Integer is
   begin
        return 1;
   end getTotal;

   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return PickedUpLayerInterfaceFactoryInterface_Access (LifePickedUpLayerInterfaceFactory_Package.pickedUpLayerInterfaceFactoryInterface);
   end getInstance;

   --  throws Exception
   procedure process (This : in out LifePickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.pool.visit (sourceLayerInterface);
   end process;

begin
   null;
   pickedUpLayerInterfaceFactoryInterface := PickedUpLayerInterfaceFactoryInterface_Access (CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY);

end org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package;


