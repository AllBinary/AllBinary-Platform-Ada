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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package; use org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.Special4GameInputInterfaceProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type Special4GameInputInterfaceProcessor is tagged;
   type Special4GameInputInterfaceProcessor_Access is access all Special4GameInputInterfaceProcessor'Class;
   type Special4GameInputInterfaceProcessor_Access_Array is array (Natural range <>) of Special4GameInputInterfaceProcessor_Access;
   type Special4GameInputInterfaceProcessor_Access_Array_Access is access all Special4GameInputInterfaceProcessor_Access_Array;
   type Special4GameInputInterfaceProcessor_Access_Array_Access_Array is array (Natural range <>) of Special4GameInputInterfaceProcessor_Access_Array_Access;
   type Special4GameInputInterfaceProcessor_Access_Array_Access_Array_Access is access all Special4GameInputInterfaceProcessor_Access_Array_Access_Array;

   type Special4GameInputInterfaceProcessor is new SpecialGameInputInterfaceProcessor with null record;

   procedure Initialize (This : in out Special4GameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class);
   function Create (collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class) return Special4GameInputInterfaceProcessor_Access;
   procedure processEvent (This : in out Special4GameInputInterfaceProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.layer.special.Special4GameInputInterfaceProcessor_Package;


