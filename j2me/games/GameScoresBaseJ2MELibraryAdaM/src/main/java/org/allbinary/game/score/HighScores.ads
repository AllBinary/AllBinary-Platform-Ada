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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.score.HighScoresInterface_Package; use org.allbinary.game.score.HighScoresInterface_Package;
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;

package org.allbinary.game.score.HighScores_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type HighScores is tagged;
   type HighScores_Access is access all HighScores'Class;
   type HighScores_Access_Array is array (Natural range <>) of HighScores_Access;
   type HighScores_Access_Array_Access is access all HighScores_Access_Array;

   type HighScores is new HighScoresInterface with record
      orderedHighScoresList : BasicArrayList_Access;
      name : Unbounded_String;
      heading : Unbounded_String;
      columnOneHeading : Unbounded_String;
      columnTwoHeading : Unbounded_String;
   end record;

   procedure Initialize (This : in out HighScores'Class; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String);
   function Create (name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String) return HighScores_Access;
   procedure setList (This : in out HighScores; orderedHighScoresList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getList (This : in out HighScores) return BasicArrayList_Access;
   function getName (This : in out HighScores) return Unbounded_String;
   function getTotal (This : in out HighScores) return Integer;
   procedure addHighScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   function getHeading (This : in out HighScores) return Unbounded_String;
   function getColumnOneHeading (This : in out HighScores) return Unbounded_String;
   function getColumnTwoHeading (This : in out HighScores) return Unbounded_String;
   function isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class) return Boolean;
   procedure isBestScore (This : in out HighScores; newHighScore_Param : access HighScore_Package.HighScore'Class);
   function toString (This : in out HighScores) return Unbounded_String;

end org.allbinary.game.score.HighScores_Package;


