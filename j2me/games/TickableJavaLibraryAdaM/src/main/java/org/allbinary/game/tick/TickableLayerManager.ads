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
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManagerNoDebug_Package; use org.allbinary.layer.LayerManagerNoDebug_Package;

package org.allbinary.game.tick.TickableLayerManager_Package is

   package LayerManager_Package renames org.allbinary.layer.LayerManager_Package;
   package LayerManagerNoDebug_Package renames org.allbinary.layer.LayerManagerNoDebug_Package;

   type TickableLayerManager is tagged;
   type TickableLayerManager_Access is access all TickableLayerManager'Class;
   type TickableLayerManager_Access_Array is array (Natural range <>) of TickableLayerManager_Access;
   type TickableLayerManager_Access_Array_Access is access all TickableLayerManager_Access_Array;

   type TickableLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out TickableLayerManager'Class);
   function Create return TickableLayerManager_Access;

end org.allbinary.game.tick.TickableLayerManager_Package;


