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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

package org.allbinary.game.layer.pickup.RaceTrackPickupLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type RaceTrackPickupLayerFactory is tagged;
   type RaceTrackPickupLayerFactory_Access is access all RaceTrackPickupLayerFactory'Class;
   type RaceTrackPickupLayerFactory_Access_Array is array (Natural range <>) of RaceTrackPickupLayerFactory_Access;
   type RaceTrackPickupLayerFactory_Access_Array_Access is access all RaceTrackPickupLayerFactory_Access_Array;
   type RaceTrackPickupLayerFactory_Access_Array_Access_Array is array (Natural range <>) of RaceTrackPickupLayerFactory_Access_Array_Access;
   type RaceTrackPickupLayerFactory_Access_Array_Access_Array_Access is access all RaceTrackPickupLayerFactory_Access_Array_Access_Array;

   type RaceTrackPickupLayerFactory is new Java_Object and AllBinaryLayerFactoryInterface with null record;

   procedure Initialize (This : in out RaceTrackPickupLayerFactory'Class);
   function Create return RaceTrackPickupLayerFactory_Access;
   function getInstance (This : in out RaceTrackPickupLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.layer.pickup.RaceTrackPickupLayerFactory_Package;


