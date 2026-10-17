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
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package; use org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;

package org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package is

   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;

   type HighScoresCanvasNoInputProcessorFactory is tagged;
   type HighScoresCanvasNoInputProcessorFactory_Access is access all HighScoresCanvasNoInputProcessorFactory'Class;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array is array (Natural range <>) of HighScoresCanvasNoInputProcessorFactory_Access;
   type HighScoresCanvasNoInputProcessorFactory_Access_Array_Access is access all HighScoresCanvasNoInputProcessorFactory_Access_Array;

   type HighScoresCanvasNoInputProcessorFactory is new HighScoresCanvasInputProcessorFactoryInterface with null record;

   procedure Initialize (This : in out HighScoresCanvasNoInputProcessorFactory'Class);
   function Create return HighScoresCanvasNoInputProcessorFactory_Access;
   function getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas'Class) return HighScoresCanvasInputProcessor_Access;
   procedure getInstance (This : in out HighScoresCanvasNoInputProcessorFactory; highScoresCanvas_Param : access HighScoresCanvas'Class);

end org.allbinary.game.score.HighScoresCanvasNoInputProcessorFactory_Package;


