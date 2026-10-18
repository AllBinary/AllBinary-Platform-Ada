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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.IconLayer_Package; use org.allbinary.game.layer.pickup.IconLayer_Package;

package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PickedUpLayerInterfaceFactory is tagged;
   type PickedUpLayerInterfaceFactory_Access is access all PickedUpLayerInterfaceFactory'Class;
   type PickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactory_Access;
   type PickedUpLayerInterfaceFactory_Access_Array_Access is access all PickedUpLayerInterfaceFactory_Access_Array;
   type PickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactory_Access_Array_Access;
   type PickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all PickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type PickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactoryBase with record
      pickedUpLayerType : PickedUpLayerType_Access;
      iconLayer : IconLayer_Access;
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out PickedUpLayerInterfaceFactory'Class; pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class);
   function Create (pickeUpLayerType_Param : access PickedUpLayerType_Package.PickedUpLayerType'Class; iconLayer_Param : access IconLayer_Package.IconLayer'Class; animationInterface_Param : access Animation_Package.Animation'Class) return PickedUpLayerInterfaceFactory_Access;
   function getIconLayer (This : in out PickedUpLayerInterfaceFactory) return AllBinaryLayer_Access;
   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactory) return Animation_Access;
   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactory) return PickedUpLayerType_Access;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;


