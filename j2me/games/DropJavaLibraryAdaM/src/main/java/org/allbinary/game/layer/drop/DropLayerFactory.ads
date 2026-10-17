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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.game.layer.drop.DropLayerFactory_Package is

   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type DropLayerFactory is tagged;
   type DropLayerFactory_Access is access all DropLayerFactory'Class;
   type DropLayerFactory_Access_Array is array (Natural range <>) of DropLayerFactory_Access;
   type DropLayerFactory_Access_Array_Access is access all DropLayerFactory_Access_Array;

   type DropLayerFactory is new Java_Object with record
      list : BasicArrayList_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   DROP_LAYER_FACTORY : DropLayerFactory_Access;

   procedure Initialize (This : in out DropLayerFactory'Class);
   function Create return DropLayerFactory_Access;
   procedure clear (This : in out DropLayerFactory);
   function getInstance return DropLayerFactory_Access;
   function getSize (This : in out DropLayerFactory) return Integer;
   function getRandomInstance (This : in out DropLayerFactory) return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure add (This : in out DropLayerFactory; layerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface'Class);
   function getList (This : in out DropLayerFactory) return BasicArrayList_Access;

end org.allbinary.game.layer.drop.DropLayerFactory_Package;


