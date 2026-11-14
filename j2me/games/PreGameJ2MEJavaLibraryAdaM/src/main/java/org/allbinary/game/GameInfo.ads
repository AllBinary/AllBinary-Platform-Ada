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
limited with org.allbinary.game.GameInfo_Package;
package org.allbinary.game.GameInfo_Package_References is
   type GameInfo_Access is access all org.allbinary.game.GameInfo_Package.GameInfo'Class;
   type GameInfo_Access_Array is array (Natural range <>) of GameInfo_Access;
   type GameInfo_Access_Array_Access is access all GameInfo_Access_Array;
   type GameInfo_Access_Array_Access_Array is array (Natural range <>) of GameInfo_Access_Array_Access;
   type GameInfo_Access_Array_Access_Array_Access is access all GameInfo_Access_Array_Access_Array;
   type GameInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInfo_Access_Array_Access is (if Value /= null and then Value.all in GameInfo_Access_Array_Object'Class then GameInfo_Access_Array_Object'Class (Value.all).Value else null);
   type GameInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInfo_Access_Array_Access_Array_Object'Class then GameInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.GameInfo_Package_References;

with org.allbinary.game.GameInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameMode_Package_References;
limited with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameInfoData_Package_References;
limited with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameType_Package_References;
limited with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.PlayerType_Package_References;

package org.allbinary.game.GameInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype GameMode_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access;
   use type GameMode_Access;
   subtype GameMode_Access_Array is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array;
   use type GameMode_Access_Array;
   subtype GameMode_Access_Array_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access;
   use type GameMode_Access_Array_Access;
   subtype GameMode_Access_Array_Access_Array is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access_Array;
   use type GameMode_Access_Array_Access_Array;
   subtype GameMode_Access_Array_Access_Array_Access is org.allbinary.game.GameMode_Package_References.GameMode_Access_Array_Access_Array_Access;
   use type GameMode_Access_Array_Access_Array_Access;
   subtype GameInfoData_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access;
   use type GameInfoData_Access;
   subtype GameInfoData_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array;
   use type GameInfoData_Access_Array;
   subtype GameInfoData_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access;
   use type GameInfoData_Access_Array_Access;
   subtype GameInfoData_Access_Array_Access_Array is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array;
   use type GameInfoData_Access_Array_Access_Array;
   subtype GameInfoData_Access_Array_Access_Array_Access is org.allbinary.game.GameInfoData_Package_References.GameInfoData_Access_Array_Access_Array_Access;
   use type GameInfoData_Access_Array_Access_Array_Access;
   subtype GameType_Access is org.allbinary.game.GameType_Package_References.GameType_Access;
   use type GameType_Access;
   subtype GameType_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array;
   use type GameType_Access_Array;
   subtype GameType_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access;
   use type GameType_Access_Array_Access;
   subtype GameType_Access_Array_Access_Array is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array;
   use type GameType_Access_Array_Access_Array;
   subtype GameType_Access_Array_Access_Array_Access is org.allbinary.game.GameType_Package_References.GameType_Access_Array_Access_Array_Access;
   use type GameType_Access_Array_Access_Array_Access;
   subtype PlayerType_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access;
   use type PlayerType_Access;
   subtype PlayerType_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array;
   use type PlayerType_Access_Array;
   subtype PlayerType_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access;
   use type PlayerType_Access_Array_Access;
   subtype PlayerType_Access_Array_Access_Array is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array;
   use type PlayerType_Access_Array_Access_Array;
   subtype PlayerType_Access_Array_Access_Array_Access is org.allbinary.game.PlayerType_Package_References.PlayerType_Access_Array_Access_Array_Access;
   use type PlayerType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   function Java_Box (Value : GameInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameInfo_Package_References.Java_Box;
   function Java_Unbox_GameInfo_Access_Array (Value : access Java_Object'Class) return GameInfo_Access_Array_Access renames org.allbinary.game.GameInfo_Package_References.Java_Unbox_GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   function Java_Box (Value : GameInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.GameInfo_Package_References.Java_Box;
   function Java_Unbox_GameInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInfo_Access_Array_Access_Array_Access renames org.allbinary.game.GameInfo_Package_References.Java_Unbox_GameInfo_Access_Array_Access_Array;

   type GameInfo is new Java_Object with record
      logUtil : LogUtil_Access;
      gameInfoData : GameInfoData_Access;
      gameType : GameType_Access;
      gameMode : GameMode_Access;
      playerType : PlayerType_Access;
      highestLevel : Integer;
      currentLevel : Integer;
      NEW_LEVEL : Unbounded_String;
      SET_CURRENT_LEVEL : Unbounded_String;
      NEXT_GAME_LEVEL : Unbounded_String;
   end record;
   NONE : GameInfo_Access;
   LEVEL_NAME : Unbounded_String;

   procedure Initialize (This : in out GameInfo'Class; gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer);
   function Create (gameType_Param : access GameType_Package.GameType'Class; gameMode_Param : access GameMode_Package.GameMode'Class; playerType_Param : access PlayerType_Package.PlayerType'Class; highestLevel : Integer; currentLevel : Integer) return GameInfo_Access;
   function getGameType (This : in out GameInfo) return GameType_Access;
   function getGameMode (This : in out GameInfo) return GameMode_Access;
   function getPlayerType (This : in out GameInfo) return PlayerType_Access;
   function getHighestLevel (This : in out GameInfo) return Integer;
   procedure setHighestLevel (This : in out GameInfo; highestLevel : Integer);
   function getCurrentLevel (This : in out GameInfo) return Integer;
   procedure setCurrentLevel (This : in out GameInfo; currentLevel : Integer);
   procedure nextGameLevel (This : in out GameInfo);
   procedure previousGameLevel (This : in out GameInfo);
   function isLastLevel (This : in out GameInfo) return Boolean;
   function toHashtable (This : in out GameInfo) return ABHashtable_Access;
   function toString (This : in out GameInfo) return Unbounded_String;

end org.allbinary.game.GameInfo_Package;


