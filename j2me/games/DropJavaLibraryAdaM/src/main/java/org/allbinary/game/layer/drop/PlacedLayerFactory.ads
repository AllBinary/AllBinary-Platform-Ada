--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.game.layer.drop.PlacedLayerFactory_Package is

   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type PlacedLayerFactory is tagged;
   type PlacedLayerFactory_Access is access all PlacedLayerFactory'Class;
   type PlacedLayerFactory_Access_Array is array (Natural range <>) of PlacedLayerFactory_Access;
   type PlacedLayerFactory_Access_Array_Access is access all PlacedLayerFactory_Access_Array;

   type PlacedLayerFactory is new Java_Object with record
      list : BasicArrayList_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   instance : PlacedLayerFactory_Access;

   procedure Initialize (This : in out PlacedLayerFactory'Class);
   function Create return PlacedLayerFactory_Access;
   procedure clear (This : in out PlacedLayerFactory);
   function getInstance return PlacedLayerFactory_Access;
   function getSize (This : in out PlacedLayerFactory) return Integer;
   function getRandomInstance (This : in out PlacedLayerFactory) return AllBinaryLayerFactoryInterface_Access;
   procedure add (This : in out PlacedLayerFactory; layerInterfaceFactoryInterface_Param : access AllBinaryLayerFactoryInterface'Class);

end org.allbinary.game.layer.drop.PlacedLayerFactory_Package;


