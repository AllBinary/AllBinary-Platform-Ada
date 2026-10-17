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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
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

package org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package IconLayerFactory_Package renames Standard.org.allbinary.game.layer.pickup.IconLayerFactory_Package;
   package PickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickedUpLayerTypeFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
   package PickupProcessorInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type Points20kPickedUpLayerInterfaceFactory is tagged;
   type Points20kPickedUpLayerInterfaceFactory_Access is access all Points20kPickedUpLayerInterfaceFactory'Class;
   type Points20kPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of Points20kPickedUpLayerInterfaceFactory_Access;
   type Points20kPickedUpLayerInterfaceFactory_Access_Array_Access is access all Points20kPickedUpLayerInterfaceFactory_Access_Array;

   type Points20kPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and PickupProcessorInterface with record
      pool : PointsLayerCircularStaticPool_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out Points20kPickedUpLayerInterfaceFactory'Class);
   function Create return Points20kPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getTotal (This : in out Points20kPickedUpLayerInterfaceFactory) return Integer;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure process (This : in out Points20kPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.points.Points20kPickedUpLayerInterfaceFactory_Package;


