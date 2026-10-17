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
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;

package org.allbinary.game.score.HighScoresFactoryInterface_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;

   type HighScoresFactoryInterface is interface;
   type HighScoresFactoryInterface_Access is access all HighScoresFactoryInterface'Class;
   type HighScoresFactoryInterface_Access_Array is array (Natural range <>) of HighScoresFactoryInterface_Access;
   type HighScoresFactoryInterface_Access_Array_Access is access all HighScoresFactoryInterface_Access_Array;
   procedure fetchHighScores (This : in out HighScoresFactoryInterface; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access) is abstract;
   procedure fetchHighScoresPreload (This : in out HighScoresFactoryInterface; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access; preload : Boolean) is abstract;
   function createHighScoresHelper (This : in out HighScoresFactoryInterface) return HighScoresHelperBaseInterface_Access is abstract;

end org.allbinary.game.score.HighScoresFactoryInterface_Package;


