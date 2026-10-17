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
with org.allbinary.game.layer.special.SpecialGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;

package org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package is

   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;

   type SpecialAnalogUpGameInputProcessor is tagged;
   type SpecialAnalogUpGameInputProcessor_Access is access all SpecialAnalogUpGameInputProcessor'Class;
   type SpecialAnalogUpGameInputProcessor_Access_Array is array (Natural range <>) of SpecialAnalogUpGameInputProcessor_Access;
   type SpecialAnalogUpGameInputProcessor_Access_Array_Access is access all SpecialAnalogUpGameInputProcessor_Access_Array;

   type SpecialAnalogUpGameInputProcessor is new SpecialGameInputProcessor with null record;

   procedure Initialize (This : in out SpecialAnalogUpGameInputProcessor'Class; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access);
   function Create (collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) return SpecialAnalogUpGameInputProcessor_Access;
   procedure processAnalog (This : in out SpecialAnalogUpGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access; yAnalogValue : Integer);

end org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package;


