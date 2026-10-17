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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.score.HighScoresBase_Package; use org.allbinary.game.score.HighScoresBase_Package;

package org.allbinary.game.score.NoHighScoresFactory_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type NoHighScoresFactory is tagged;
   type NoHighScoresFactory_Access is access all NoHighScoresFactory'Class;
   type NoHighScoresFactory_Access_Array is array (Natural range <>) of NoHighScoresFactory_Access;
   type NoHighScoresFactory_Access_Array_Access is access all NoHighScoresFactory_Access_Array;

   type NoHighScoresFactory is new HighScoresBase with record
      logUtil : LogUtil_Access;
      NO_HIGH_SCORES : HighScores_Access_Array_Access;
   end record;
   instance : NoHighScoresFactory_Access;

   procedure Initialize (This : in out NoHighScoresFactory'Class);
   function Create return NoHighScoresFactory_Access;
   function getInstance return NoHighScoresFactory_Access;
   procedure getInstance;
   procedure fetchHighScores (This : in out NoHighScoresFactory; gameInfo : GameInfo_Access; highScoresResultsListener : HighScoresResultsListener_Access);
   function createHighScoresHelper (This : in out NoHighScoresFactory) return HighScoresHelperBaseInterface_Access;
   procedure createHighScoresHelper (This : in out NoHighScoresFactory);

end org.allbinary.game.score.NoHighScoresFactory_Package;


