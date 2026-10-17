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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.score.NoHighScoresFactory_Package; use org.allbinary.game.score.NoHighScoresFactory_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;

package org.allbinary.game.score.LastFetchHighScoresFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type LastFetchHighScoresFactory is tagged;
   type LastFetchHighScoresFactory_Access is access all LastFetchHighScoresFactory'Class;
   type LastFetchHighScoresFactory_Access_Array is array (Natural range <>) of LastFetchHighScoresFactory_Access;
   type LastFetchHighScoresFactory_Access_Array_Access is access all LastFetchHighScoresFactory_Access_Array;

   type LastFetchHighScoresFactory is new Java_Object with record
      highScoresArray : HighScores_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out LastFetchHighScoresFactory'Class);
   function Create return LastFetchHighScoresFactory_Access;
   function getInstance return LastFetchHighScoresFactory_Access;

end org.allbinary.game.score.LastFetchHighScoresFactory_Package;


