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
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.displayable.canvas.EndGameInfo_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type EndGameInfo is tagged;
   type EndGameInfo_Access is access all EndGameInfo'Class;
   type EndGameInfo_Access_Array is array (Natural range <>) of EndGameInfo_Access;
   type EndGameInfo_Access_Array_Access is access all EndGameInfo_Access_Array;

   type EndGameInfo is new Java_Object with record
      NORMAL_GAME_OVER_WIN : Unbounded_String;
      TEASER_DEMO_GAME_END_LAST_LEVEL : Unbounded_String;
      TEASER_DEMO_GAME_END : Unbounded_String;
      gameOverStr : Unbounded_String;
      winStr : Unbounded_String;
   end record;

   procedure Initialize (This : in out EndGameInfo'Class);
   function Create return EndGameInfo_Access;
   procedure update (This : in out EndGameInfo; gameInfo_Param : access GameInfo'Class; myCanvas_Param : access MyCanvas'Class);
   function getGameOverStr (This : in out EndGameInfo) return Unbounded_String;
   procedure setGameOverStr (This : in out EndGameInfo; gameOverStr : Unbounded_String);
   function getWinStr (This : in out EndGameInfo) return Unbounded_String;
   procedure setWinStr (This : in out EndGameInfo; winStr : Unbounded_String);

end org.allbinary.game.displayable.canvas.EndGameInfo_Package;


