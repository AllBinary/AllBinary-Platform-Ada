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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresResultsListener_Package; use org.allbinary.game.score.HighScoresResultsListener_Package;
with org.allbinary.game.score.HighScoresHelperBaseInterface_Package; use org.allbinary.game.score.HighScoresHelperBaseInterface_Package;

package org.allbinary.game.score.HighScoresBase_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type HighScoresBase is tagged;
   type HighScoresBase_Access is access all HighScoresBase'Class;
   type HighScoresBase_Access_Array is array (Natural range <>) of HighScoresBase_Access;
   type HighScoresBase_Access_Array_Access is access all HighScoresBase_Access_Array;

   type HighScoresBase is new HighScoresFactoryInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out HighScoresBase'Class);
   function Create return HighScoresBase_Access;
   procedure fetchHighScores (This : in out HighScoresBase; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class);
   procedure fetchHighScoresPreload (This : in out HighScoresBase; gameInfo_Param : access GameInfo_Package.GameInfo'Class; highScoresResultsListener_Param : access HighScoresResultsListener_Package.HighScoresResultsListener'Class; preload : Boolean);
   function createHighScoresHelper (This : in out HighScoresBase) return HighScoresHelperBaseInterface_Access;

end org.allbinary.game.score.HighScoresBase_Package;


