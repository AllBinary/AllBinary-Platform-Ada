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

package org.allbinary.game.layer.special.Special1GameInputInterfaceProcessor_Package is

   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;

   type Special1GameInputInterfaceProcessor is tagged;
   type Special1GameInputInterfaceProcessor_Access is access all Special1GameInputInterfaceProcessor'Class;
   type Special1GameInputInterfaceProcessor_Access_Array is array (Natural range <>) of Special1GameInputInterfaceProcessor_Access;
   type Special1GameInputInterfaceProcessor_Access_Array_Access is access all Special1GameInputInterfaceProcessor_Access_Array;

   type Special1GameInputInterfaceProcessor is new SpecialGameInputInterfaceProcessor with null record;

   procedure Initialize (This : in out Special1GameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access);
   function Create (collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) return Special1GameInputInterfaceProcessor_Access;
   procedure processEvent (This : in out Special1GameInputInterfaceProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);

end org.allbinary.game.layer.special.Special1GameInputInterfaceProcessor_Package;


