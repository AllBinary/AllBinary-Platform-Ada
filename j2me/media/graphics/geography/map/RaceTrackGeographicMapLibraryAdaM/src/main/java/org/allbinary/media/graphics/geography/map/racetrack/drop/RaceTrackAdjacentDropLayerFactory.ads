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
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

   type RaceTrackAdjacentDropLayerFactory is tagged;
   type RaceTrackAdjacentDropLayerFactory_Access is access all RaceTrackAdjacentDropLayerFactory'Class;
   type RaceTrackAdjacentDropLayerFactory_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropLayerFactory_Access;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access is access all RaceTrackAdjacentDropLayerFactory_Access_Array;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropLayerFactory_Access_Array_Access;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access is access all RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array;

   type RaceTrackAdjacentDropLayerFactory is new Java_Object with record
      list : BasicArrayList_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   DROP_LAYER_FACTORY : RaceTrackAdjacentDropLayerFactory_Access;

   procedure Initialize (This : in out RaceTrackAdjacentDropLayerFactory'Class);
   function Create return RaceTrackAdjacentDropLayerFactory_Access;
   procedure clear (This : in out RaceTrackAdjacentDropLayerFactory);
   function getInstance return RaceTrackAdjacentDropLayerFactory_Access;
   function getSize (This : in out RaceTrackAdjacentDropLayerFactory) return Integer;
   function getRandomInstance (This : in out RaceTrackAdjacentDropLayerFactory) return LayerInterfaceFactoryInterface_Access;
   procedure add (This : in out RaceTrackAdjacentDropLayerFactory; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;


