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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CountedPickedUpLayerInterfaceFactoryPool is tagged;
   type CountedPickedUpLayerInterfaceFactoryPool_Access is access all CountedPickedUpLayerInterfaceFactoryPool'Class;
   type CountedPickedUpLayerInterfaceFactoryPool_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactoryPool_Access;
   type CountedPickedUpLayerInterfaceFactoryPool_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactoryPool_Access_Array;

   type CountedPickedUpLayerInterfaceFactoryPool is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : CountedPickedUpLayerInterfaceFactoryPool_Access;

   procedure Initialize (This : in out CountedPickedUpLayerInterfaceFactoryPool'Class);
   function Create return CountedPickedUpLayerInterfaceFactoryPool_Access;
   function getList (This : in out CountedPickedUpLayerInterfaceFactoryPool) return BasicArrayList_Access;
   function getInstance return CountedPickedUpLayerInterfaceFactoryPool_Access;
   procedure init;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool_Package;


