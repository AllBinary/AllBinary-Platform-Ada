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

limited with org.allbinary.game.layer.drop.DropLayerFactory_Package;
package org.allbinary.game.layer.drop.DropLayerFactory_Package_References is
   type DropLayerFactory_Access is access all org.allbinary.game.layer.drop.DropLayerFactory_Package.DropLayerFactory'Class;
   type DropLayerFactory_Access_Array is array (Natural range <>) of DropLayerFactory_Access;
   type DropLayerFactory_Access_Array_Access is access all DropLayerFactory_Access_Array;
   type DropLayerFactory_Access_Array_Access_Array is array (Natural range <>) of DropLayerFactory_Access_Array_Access;
   type DropLayerFactory_Access_Array_Access_Array_Access is access all DropLayerFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.drop.DropLayerFactory_Package_References;

with org.allbinary.game.layer.drop.DropLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;

package org.allbinary.game.layer.drop.DropLayerFactory_Package is

   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Reference_Types is
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DropLayerFactory_Access is org.allbinary.game.layer.drop.DropLayerFactory_Package_References.DropLayerFactory_Access;
   function "=" (Left, Right : DropLayerFactory_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerFactory_Package_References."=";
   subtype DropLayerFactory_Access_Array is org.allbinary.game.layer.drop.DropLayerFactory_Package_References.DropLayerFactory_Access_Array;
   function "=" (Left, Right : DropLayerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.drop.DropLayerFactory_Package_References."=";
   subtype DropLayerFactory_Access_Array_Access is org.allbinary.game.layer.drop.DropLayerFactory_Package_References.DropLayerFactory_Access_Array_Access;
   function "=" (Left, Right : DropLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerFactory_Package_References."=";
   subtype DropLayerFactory_Access_Array_Access_Array is org.allbinary.game.layer.drop.DropLayerFactory_Package_References.DropLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DropLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.drop.DropLayerFactory_Package_References."=";
   subtype DropLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.drop.DropLayerFactory_Package_References.DropLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.drop.DropLayerFactory_Package_References."=";

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
   procedure add (This : in out DropLayerFactory; layerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class);
   function getList (This : in out DropLayerFactory) return BasicArrayList_Access;

end org.allbinary.game.layer.drop.DropLayerFactory_Package;


