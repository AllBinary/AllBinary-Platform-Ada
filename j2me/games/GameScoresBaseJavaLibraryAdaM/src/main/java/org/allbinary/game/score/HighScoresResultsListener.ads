-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.HighScoresResultsListener_Package is


   type HighScoresResultsListener is interface;
   type HighScoresResultsListener_Access is access all HighScoresResultsListener'Class;
   type HighScoresResultsListener_Access_Array is array (Natural range <>) of HighScoresResultsListener_Access;
   type HighScoresResultsListener_Access_Array_Access is access all HighScoresResultsListener_Access_Array;
   procedure setHighScoresArray (This : in out HighScoresResultsListener; highScoresArrayP : HighScores_Access_Array_Access) is abstract;

end org.allbinary.game.score.HighScoresResultsListener_Package;


