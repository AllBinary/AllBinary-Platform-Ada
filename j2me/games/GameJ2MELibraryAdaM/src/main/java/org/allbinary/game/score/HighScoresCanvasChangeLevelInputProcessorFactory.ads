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
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasLevelChangeInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;

package org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package is

   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;

   type HighScoresCanvasChangeLevelInputProcessorFactory is tagged;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access is access all HighScoresCanvasChangeLevelInputProcessorFactory'Class;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array is array (Natural range <>) of HighScoresCanvasChangeLevelInputProcessorFactory_Access;
   type HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array_Access is access all HighScoresCanvasChangeLevelInputProcessorFactory_Access_Array;

   type HighScoresCanvasChangeLevelInputProcessorFactory is new HighScoresCanvasInputProcessorFactoryInterface with null record;

   procedure Initialize (This : in out HighScoresCanvasChangeLevelInputProcessorFactory'Class);
   function Create return HighScoresCanvasChangeLevelInputProcessorFactory_Access;
   function getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas : HighScoresCanvas_Access) return HighScoresCanvasInputProcessor_Access;
   procedure getInstance (This : in out HighScoresCanvasChangeLevelInputProcessorFactory; highScoresCanvas : HighScoresCanvas_Access);

end org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory_Package;


