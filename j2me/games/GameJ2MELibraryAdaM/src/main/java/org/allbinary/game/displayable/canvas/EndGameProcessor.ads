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
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.EndGameProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package HighScoresHelperBase_Package renames Standard.org.allbinary.game.score.HighScoresHelperBase_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;

   type EndGameProcessor is tagged;
   type EndGameProcessor_Access is access all EndGameProcessor'Class;
   type EndGameProcessor_Access_Array is array (Natural range <>) of EndGameProcessor_Access;
   type EndGameProcessor_Access_Array_Access is access all EndGameProcessor_Access_Array;

   type EndGameProcessor is new Processor with record
      gameStateFactory : GameStateFactory_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      WAIT : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out EndGameProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas'Class) return EndGameProcessor_Access;
   procedure process (This : in out EndGameProcessor);

end org.allbinary.game.displayable.canvas.EndGameProcessor_Package;


