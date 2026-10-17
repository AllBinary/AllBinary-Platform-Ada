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
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.HighScoresHelper_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type HighScoresHelper is tagged;
   type HighScoresHelper_Access is access all HighScoresHelper'Class;
   type HighScoresHelper_Access_Array is array (Natural range <>) of HighScoresHelper_Access;
   type HighScoresHelper_Access_Array_Access is access all HighScoresHelper_Access_Array;

   type HighScoresHelper is new HighScoresHelperBase with record
      circularIndexUtil : CircularIndexUtil_Access;
      lastIndex : Integer;
   end record;

   procedure Initialize (This : in out HighScoresHelper'Class);
   function Create return HighScoresHelper_Access;
   procedure setHighScoresArray (This : in out HighScoresHelper; highScoresArrayP : HighScores_Access_Array_Access);
   function getNextHighScores (This : in out HighScoresHelper) return HighScores_Access;
   function isAnyHighScores (This : in out HighScoresHelper) return Boolean;

end org.allbinary.game.score.HighScoresHelper_Package;


