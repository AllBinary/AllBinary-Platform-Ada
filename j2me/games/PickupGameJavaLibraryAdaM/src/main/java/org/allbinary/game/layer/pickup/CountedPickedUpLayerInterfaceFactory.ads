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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package NullAnimationFactory_Package renames org.allbinary.animation.NullAnimationFactory_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type CountedPickedUpLayerInterfaceFactory is tagged;
   type CountedPickedUpLayerInterfaceFactory_Access is access all CountedPickedUpLayerInterfaceFactory'Class;
   type CountedPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactory_Access;
   type CountedPickedUpLayerInterfaceFactory_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactory_Access_Array;

   type CountedPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and CountedPickedUpLayerInterfaceFactoryInterface with record
      id : Integer;
   end record;
   NULL_COUNTED_PICKUP_LAYER_FACTORY : CountedPickedUpLayerInterfaceFactory_Access;

   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactory'Class; pickeUpLayerType : PickedUpLayerType_Access; iconLayer : IconLayer_Access; animationInterface : Animation_Access);
   function Create (pickeUpLayerType : PickedUpLayerType_Access; iconLayer : IconLayer_Access; animationInterface : Animation_Access) return CountedPickedUpLayerInterfaceFactory_Access;
   function getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNextInstance (This : in out CountedPickedUpLayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer);
   function getTotal (This : in out CountedPickedUpLayerInterfaceFactory) return Integer;
   procedure getTotal (This : in out CountedPickedUpLayerInterfaceFactory);
   function getId (This : in out CountedPickedUpLayerInterfaceFactory) return Integer;
   procedure getId (This : in out CountedPickedUpLayerInterfaceFactory);

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;


