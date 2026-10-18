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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.view.event.ViewPositionEventHandler_Package; use org.allbinary.view.event.ViewPositionEventHandler_Package;
with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;

package org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package ViewPositionEventHandler_Package renames Standard.org.allbinary.view.event.ViewPositionEventHandler_Package;

   type RaceTrackPickupLayer is tagged;
   type RaceTrackPickupLayer_Access is access all RaceTrackPickupLayer'Class;
   type RaceTrackPickupLayer_Access_Array is array (Natural range <>) of RaceTrackPickupLayer_Access;
   type RaceTrackPickupLayer_Access_Array_Access is access all RaceTrackPickupLayer_Access_Array;
   type RaceTrackPickupLayer_Access_Array_Access_Array is array (Natural range <>) of RaceTrackPickupLayer_Access_Array_Access;
   type RaceTrackPickupLayer_Access_Array_Access_Array_Access is access all RaceTrackPickupLayer_Access_Array_Access_Array;

   type RaceTrackPickupLayer is new PickupLayer with record
      viewPositionEventHandler : ViewPositionEventHandler_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out RaceTrackPickupLayer'Class);
   function Create return RaceTrackPickupLayer_Access;
   procedure setTiledLayer (This : in out RaceTrackPickupLayer; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class);
   procedure setDestroyed (This : in out RaceTrackPickupLayer; destroyed : Boolean);

end org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;


