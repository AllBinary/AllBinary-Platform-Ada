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
with org.allbinary.game.score.HighScore_Package; use org.allbinary.game.score.HighScore_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package is

   package HighScore_Package renames Standard.org.allbinary.game.score.HighScore_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type RemoteHighScoresSubmissionProcessorInterface is interface;
   type RemoteHighScoresSubmissionProcessorInterface_Access is access all RemoteHighScoresSubmissionProcessorInterface'Class;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorInterface_Access;
   type RemoteHighScoresSubmissionProcessorInterface_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorInterface_Access_Array;
   procedure process (This : in out RemoteHighScoresSubmissionProcessorInterface; remoteHighScores : RemoteHighScores_Access; abeClientInformation : AbeClientInformationInterface_Access; highScore : HighScore_Access) is abstract;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorInterface_Package;


