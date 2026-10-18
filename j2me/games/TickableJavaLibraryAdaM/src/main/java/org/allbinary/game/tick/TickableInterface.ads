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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.tick.TickableInterface_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;

   type TickableInterface is interface and NamedInterface;
   type TickableInterface_Access is access all TickableInterface'Class;
   type TickableInterface_Access_Array is array (Natural range <>) of TickableInterface_Access;
   type TickableInterface_Access_Array_Access is access all TickableInterface_Access_Array;
   type TickableInterface_Access_Array_Access_Array is array (Natural range <>) of TickableInterface_Access_Array_Access;
   type TickableInterface_Access_Array_Access_Array_Access is access all TickableInterface_Access_Array_Access_Array;
   procedure processTick (This : in out TickableInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;

end org.allbinary.game.tick.TickableInterface_Package;


