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
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.HighScoresHelper2_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type HighScoresHelper2 is tagged;
   type HighScoresHelper2_Access is access all HighScoresHelper2'Class;
   type HighScoresHelper2_Access_Array is array (Natural range <>) of HighScoresHelper2_Access;
   type HighScoresHelper2_Access_Array_Access is access all HighScoresHelper2_Access_Array;

   type HighScoresHelper2 is new HighScoresHelperBase with record
      circularIndexUtil : CircularIndexUtil_Access;
      selectedHighScores : HighScores_Access;
   end record;

   procedure Initialize (This : in out HighScoresHelper2'Class);
   function Create return HighScoresHelper2_Access;
   procedure setSelectedHighScores (This : in out HighScoresHelper2; selectedHighScores_Param : access HighScores'Class);
   function getSelectedHighScores (This : in out HighScoresHelper2) return HighScores_Access;
   procedure setHighScoresArray (This : in out HighScoresHelper2; highScoresArrayP : HighScores_Access_Array_Access);
   procedure selectHighScores (This : in out HighScoresHelper2);

end org.allbinary.game.score.HighScoresHelper2_Package;


