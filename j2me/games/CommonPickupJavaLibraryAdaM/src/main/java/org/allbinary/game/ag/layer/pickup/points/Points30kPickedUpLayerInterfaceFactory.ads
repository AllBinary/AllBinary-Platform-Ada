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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;

package org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package is

   package PickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupProcessorInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type Points30kPickedUpLayerInterfaceFactory is tagged;
   type Points30kPickedUpLayerInterfaceFactory_Access is access all Points30kPickedUpLayerInterfaceFactory'Class;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of Points30kPickedUpLayerInterfaceFactory_Access;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access is access all Points30kPickedUpLayerInterfaceFactory_Access_Array;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of Points30kPickedUpLayerInterfaceFactory_Access_Array_Access;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type Points30kPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and PickupProcessorInterface with record
      pool : PointsLayerCircularStaticPool_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out Points30kPickedUpLayerInterfaceFactory'Class);
   function Create return Points30kPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getTotal (This : in out Points30kPickedUpLayerInterfaceFactory) return Integer;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure process (This : in out Points30kPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package;


