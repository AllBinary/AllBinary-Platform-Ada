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
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;

package org.allbinary.game.tick.NullTickable_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type NullTickable is tagged;
   type NullTickable_Access is access all NullTickable'Class;
   type NullTickable_Access_Array is array (Natural range <>) of NullTickable_Access;
   type NullTickable_Access_Array_Access is access all NullTickable_Access_Array;

   type NullTickable is new TickableInterface with record
      NAME : Unbounded_String;
   end record;
   SINGLETON : NullTickable_Access;

   procedure Initialize (This : in out NullTickable'Class);
   function Create return NullTickable_Access;
   function getInstance return NullTickable_Access;
   procedure processTick (This : in out NullTickable; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getName (This : in out NullTickable) return Unbounded_String;

end org.allbinary.game.tick.NullTickable_Package;


