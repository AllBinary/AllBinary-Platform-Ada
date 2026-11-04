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

limited with org.allbinary.game.input.NullPlayerGameInputComposite_Package;
package org.allbinary.game.input.NullPlayerGameInputComposite_Package_References is
   type NullPlayerGameInputComposite_Access is access all org.allbinary.game.input.NullPlayerGameInputComposite_Package.NullPlayerGameInputComposite'Class;
   type NullPlayerGameInputComposite_Access_Array is array (Natural range <>) of NullPlayerGameInputComposite_Access;
   type NullPlayerGameInputComposite_Access_Array_Access is access all NullPlayerGameInputComposite_Access_Array;
   type NullPlayerGameInputComposite_Access_Array_Access_Array is array (Natural range <>) of NullPlayerGameInputComposite_Access_Array_Access;
   type NullPlayerGameInputComposite_Access_Array_Access_Array_Access is access all NullPlayerGameInputComposite_Access_Array_Access_Array;
end org.allbinary.game.input.NullPlayerGameInputComposite_Package_References;

with org.allbinary.game.input.NullPlayerGameInputComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;

package org.allbinary.game.input.NullPlayerGameInputComposite_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullPlayerGameInputComposite_Access is org.allbinary.game.input.NullPlayerGameInputComposite_Package_References.NullPlayerGameInputComposite_Access;
   function "=" (Left, Right : NullPlayerGameInputComposite_Access) return Boolean renames org.allbinary.game.input.NullPlayerGameInputComposite_Package_References."=";
   subtype NullPlayerGameInputComposite_Access_Array is org.allbinary.game.input.NullPlayerGameInputComposite_Package_References.NullPlayerGameInputComposite_Access_Array;
   function "=" (Left, Right : NullPlayerGameInputComposite_Access_Array) return Boolean renames org.allbinary.game.input.NullPlayerGameInputComposite_Package_References."=";
   subtype NullPlayerGameInputComposite_Access_Array_Access is org.allbinary.game.input.NullPlayerGameInputComposite_Package_References.NullPlayerGameInputComposite_Access_Array_Access;
   function "=" (Left, Right : NullPlayerGameInputComposite_Access_Array_Access) return Boolean renames org.allbinary.game.input.NullPlayerGameInputComposite_Package_References."=";
   subtype NullPlayerGameInputComposite_Access_Array_Access_Array is org.allbinary.game.input.NullPlayerGameInputComposite_Package_References.NullPlayerGameInputComposite_Access_Array_Access_Array;
   function "=" (Left, Right : NullPlayerGameInputComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.NullPlayerGameInputComposite_Package_References."=";
   subtype NullPlayerGameInputComposite_Access_Array_Access_Array_Access is org.allbinary.game.input.NullPlayerGameInputComposite_Package_References.NullPlayerGameInputComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullPlayerGameInputComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.NullPlayerGameInputComposite_Package_References."=";

   type NullPlayerGameInputComposite is new Java_Object and PlayerGameInputCompositeInterface with null record;
   NULL_PLAYER_GAME_INPUT_COMPOSITE : NullPlayerGameInputComposite_Access;

   procedure Initialize (This : in out NullPlayerGameInputComposite'Class);
   function Create return NullPlayerGameInputComposite_Access;
   function getName (This : in out NullPlayerGameInputComposite) return Unbounded_String;
   procedure processInput (This : in out NullPlayerGameInputComposite; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out NullPlayerGameInputComposite);
   function getPlayerGameInput (This : in out NullPlayerGameInputComposite) return PlayerGameInput_Access;

end org.allbinary.game.input.NullPlayerGameInputComposite_Package;


