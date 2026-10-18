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
with org.allbinary.layer.BasicLayerProcessor_Package; use org.allbinary.layer.BasicLayerProcessor_Package;

package org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicLayerProcessor_Package renames Standard.org.allbinary.layer.BasicLayerProcessor_Package;

   type DestroyedLayerProcessor is tagged;
   type DestroyedLayerProcessor_Access is access all DestroyedLayerProcessor'Class;
   type DestroyedLayerProcessor_Access_Array is array (Natural range <>) of DestroyedLayerProcessor_Access;
   type DestroyedLayerProcessor_Access_Array_Access is access all DestroyedLayerProcessor_Access_Array;
   type DestroyedLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of DestroyedLayerProcessor_Access_Array_Access;
   type DestroyedLayerProcessor_Access_Array_Access_Array_Access is access all DestroyedLayerProcessor_Access_Array_Access_Array;

   type DestroyedLayerProcessor is new BasicLayerProcessor with null record;
   DESTROYED_LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out DestroyedLayerProcessor'Class);
   function Create return DestroyedLayerProcessor_Access;
   procedure init;
   function getInstance return BasicLayerProcessor_Access;
   procedure process (This : in out DestroyedLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;


