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
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

package org.allbinary.game.layer.special.Special2GameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type Special2GameInputProcessor is tagged;
   type Special2GameInputProcessor_Access is access all Special2GameInputProcessor'Class;
   type Special2GameInputProcessor_Access_Array is array (Natural range <>) of Special2GameInputProcessor_Access;
   type Special2GameInputProcessor_Access_Array_Access is access all Special2GameInputProcessor_Access_Array;

   type Special2GameInputProcessor is new SpecialGameInputProcessor with null record;

   procedure Initialize (This : in out Special2GameInputProcessor'Class; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access);
   function Create (collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) return Special2GameInputProcessor_Access;
   procedure processEvent (This : in out Special2GameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);

end org.allbinary.game.layer.special.Special2GameInputProcessor_Package;


