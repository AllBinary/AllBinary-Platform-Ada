--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.game.midlet.GameMidletStateFactory_Package is

   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type GameMidletStateFactory is tagged;
   type GameMidletStateFactory_Access is access all GameMidletStateFactory'Class;
   type GameMidletStateFactory_Access_Array is array (Natural range <>) of GameMidletStateFactory_Access;
   type GameMidletStateFactory_Access_Array_Access is access all GameMidletStateFactory_Access_Array;

   type GameMidletStateFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      currentGameState : GameState_Access;
   end record;
   INSTANCE : GameMidletStateFactory_Access;

   procedure Initialize (This : in out GameMidletStateFactory'Class);
   function Create return GameMidletStateFactory_Access;
   function getInstance return GameMidletStateFactory_Access;
   procedure getInstance;
   function getCurrentGameState (This : in out GameMidletStateFactory) return GameState_Access;
   procedure getCurrentGameState (This : in out GameMidletStateFactory);
   procedure setCurrentGameState (This : in out GameMidletStateFactory; currentGameState : GameState_Access);

end org.allbinary.game.midlet.GameMidletStateFactory_Package;


