-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.NoPlayerGameInput_Package; use org.allbinary.game.input.NoPlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.NullPlayerGameInputComposite_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type NullPlayerGameInputComposite is tagged;
   type NullPlayerGameInputComposite_Access is access all NullPlayerGameInputComposite'Class;
   type NullPlayerGameInputComposite_Access_Array is array (Natural range <>) of NullPlayerGameInputComposite_Access;
   type NullPlayerGameInputComposite_Access_Array_Access is access all NullPlayerGameInputComposite_Access_Array;

   type NullPlayerGameInputComposite is new PlayerGameInputCompositeInterface with null record;
   NULL_PLAYER_GAME_INPUT_COMPOSITE : NullPlayerGameInputComposite_Access;

   procedure Initialize (This : in out NullPlayerGameInputComposite'Class);
   function Create return NullPlayerGameInputComposite_Access;
   function getName (This : in out NullPlayerGameInputComposite) return Unbounded_String;
   procedure processInput (This : in out NullPlayerGameInputComposite; layerManager : AllBinaryLayerManager_Access);
   procedure initInputProcessors (This : in out NullPlayerGameInputComposite);
   function getPlayerGameInput (This : in out NullPlayerGameInputComposite) return PlayerGameInput_Access;

end org.allbinary.game.input.NullPlayerGameInputComposite_Package;


