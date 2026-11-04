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

limited with org.allbinary.game.state.GameStateCompositeInterface_Package;
package org.allbinary.game.state.GameStateCompositeInterface_Package_References is
   type GameStateCompositeInterface_Access is access all org.allbinary.game.state.GameStateCompositeInterface_Package.GameStateCompositeInterface'Class;
   type GameStateCompositeInterface_Access_Array is array (Natural range <>) of GameStateCompositeInterface_Access;
   type GameStateCompositeInterface_Access_Array_Access is access all GameStateCompositeInterface_Access_Array;
   type GameStateCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GameStateCompositeInterface_Access_Array_Access;
   type GameStateCompositeInterface_Access_Array_Access_Array_Access is access all GameStateCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.state.GameStateCompositeInterface_Package_References;

with org.allbinary.game.state.GameStateCompositeInterface_Package_References;
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

package org.allbinary.game.state.GameStateCompositeInterface_Package is

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


   type GameStateCompositeInterface is interface;
   subtype GameStateCompositeInterface_Access is org.allbinary.game.state.GameStateCompositeInterface_Package_References.GameStateCompositeInterface_Access;
   function "=" (Left, Right : GameStateCompositeInterface_Access) return Boolean renames org.allbinary.game.state.GameStateCompositeInterface_Package_References."=";
   subtype GameStateCompositeInterface_Access_Array is org.allbinary.game.state.GameStateCompositeInterface_Package_References.GameStateCompositeInterface_Access_Array;
   function "=" (Left, Right : GameStateCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.state.GameStateCompositeInterface_Package_References."=";
   subtype GameStateCompositeInterface_Access_Array_Access is org.allbinary.game.state.GameStateCompositeInterface_Package_References.GameStateCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : GameStateCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateCompositeInterface_Package_References."=";
   subtype GameStateCompositeInterface_Access_Array_Access_Array is org.allbinary.game.state.GameStateCompositeInterface_Package_References.GameStateCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameStateCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameStateCompositeInterface_Package_References."=";
   subtype GameStateCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateCompositeInterface_Package_References.GameStateCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStateCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateCompositeInterface_Package_References."=";
   function Java_Object_Access_From_GameStateCompositeInterface (Value : GameStateCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setGameState (This : in out GameStateCompositeInterface; gameState_Param : access GameState_Package.GameState'Class) is abstract;
   function getGameState (This : in out GameStateCompositeInterface) return GameState_Access is abstract;

end org.allbinary.game.state.GameStateCompositeInterface_Package;


