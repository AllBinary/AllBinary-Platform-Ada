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

with AllBinary_Java;
limited with org.allbinary.game.state.GameStateFactory_Package;
package org.allbinary.game.state.GameStateFactory_Package_References is
   type GameStateFactory_Access is access all org.allbinary.game.state.GameStateFactory_Package.GameStateFactory'Class;
   type GameStateFactory_Access_Array is array (Natural range <>) of GameStateFactory_Access;
   type GameStateFactory_Access_Array_Access is access all GameStateFactory_Access_Array;
   type GameStateFactory_Access_Array_Access_Array is array (Natural range <>) of GameStateFactory_Access_Array_Access;
   type GameStateFactory_Access_Array_Access_Array_Access is access all GameStateFactory_Access_Array_Access_Array;
   type GameStateFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameStateFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameStateFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameStateFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameStateFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameStateFactory_Access_Array_Access is (if Value /= null and then Value.all in GameStateFactory_Access_Array_Object'Class then GameStateFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameStateFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameStateFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameStateFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameStateFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameStateFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameStateFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameStateFactory_Access_Array_Access_Array_Object'Class then GameStateFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.state.GameStateFactory_Package_References;

with org.allbinary.game.state.GameStateFactory_Package_References;
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

package org.allbinary.game.state.GameStateFactory_Package is

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


   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   function "=" (Left, Right : GameStateFactory_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   function Java_Box (Value : GameStateFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.state.GameStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameStateFactory_Access_Array (Value : access Java_Object'Class) return GameStateFactory_Access_Array_Access renames org.allbinary.game.state.GameStateFactory_Package_References.Java_Unbox_GameStateFactory_Access_Array;
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   function Java_Box (Value : GameStateFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.state.GameStateFactory_Package_References.Java_Box;
   function Java_Unbox_GameStateFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameStateFactory_Access_Array_Access_Array_Access renames org.allbinary.game.state.GameStateFactory_Package_References.Java_Unbox_GameStateFactory_Access_Array_Access_Array;

   type GameStateFactory is new Java_Object with record
      index : Integer;
      NO_GAME_STATE : GameState_Access;
      PLAYING_GAME_STATE : GameState_Access;
      SHOW_END_RESULT_GAME_STATE : GameState_Access;
      SHOW_HIGH_SCORE_GAME_STATE : GameState_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameStateFactory'Class);
   function Create return GameStateFactory_Access;
   function getInstance return GameStateFactory_Access;
   function createGameState (This : in out GameStateFactory; name : Unbounded_String) return GameState_Access;
   procedure createGameState (This : in out GameStateFactory; name : Unbounded_String);

end org.allbinary.game.state.GameStateFactory_Package;


