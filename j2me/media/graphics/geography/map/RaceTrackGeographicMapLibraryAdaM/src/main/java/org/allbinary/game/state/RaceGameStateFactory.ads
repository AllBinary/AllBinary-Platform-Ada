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

limited with org.allbinary.game.state.RaceGameStateFactory_Package;
package org.allbinary.game.state.RaceGameStateFactory_Package_References is
   type RaceGameStateFactory_Access is access all org.allbinary.game.state.RaceGameStateFactory_Package.RaceGameStateFactory'Class;
   type RaceGameStateFactory_Access_Array is array (Natural range <>) of RaceGameStateFactory_Access;
   type RaceGameStateFactory_Access_Array_Access is access all RaceGameStateFactory_Access_Array;
   type RaceGameStateFactory_Access_Array_Access_Array is array (Natural range <>) of RaceGameStateFactory_Access_Array_Access;
   type RaceGameStateFactory_Access_Array_Access_Array_Access is access all RaceGameStateFactory_Access_Array_Access_Array;
end org.allbinary.game.state.RaceGameStateFactory_Package_References;

with org.allbinary.game.state.RaceGameStateFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;

package org.allbinary.game.state.RaceGameStateFactory_Package is

   package Reference_Types is
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceGameStateFactory_Access is org.allbinary.game.state.RaceGameStateFactory_Package_References.RaceGameStateFactory_Access;
   function "=" (Left, Right : RaceGameStateFactory_Access) return Boolean renames org.allbinary.game.state.RaceGameStateFactory_Package_References."=";
   subtype RaceGameStateFactory_Access_Array is org.allbinary.game.state.RaceGameStateFactory_Package_References.RaceGameStateFactory_Access_Array;
   function "=" (Left, Right : RaceGameStateFactory_Access_Array) return Boolean renames org.allbinary.game.state.RaceGameStateFactory_Package_References."=";
   subtype RaceGameStateFactory_Access_Array_Access is org.allbinary.game.state.RaceGameStateFactory_Package_References.RaceGameStateFactory_Access_Array_Access;
   function "=" (Left, Right : RaceGameStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.state.RaceGameStateFactory_Package_References."=";
   subtype RaceGameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.RaceGameStateFactory_Package_References.RaceGameStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RaceGameStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.RaceGameStateFactory_Package_References."=";
   subtype RaceGameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.RaceGameStateFactory_Package_References.RaceGameStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceGameStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.RaceGameStateFactory_Package_References."=";

   type RaceGameStateFactory is new Java_Object with record
      START_GAME_STATE : GameState_Access;
      YELLOW_LIGHT_GAME_STATE : GameState_Access;
      RED_LIGHT_GAME_STATE : GameState_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out RaceGameStateFactory'Class);
   function Create return RaceGameStateFactory_Access;
   function getInstance return RaceGameStateFactory_Access;

end org.allbinary.game.state.RaceGameStateFactory_Package;


