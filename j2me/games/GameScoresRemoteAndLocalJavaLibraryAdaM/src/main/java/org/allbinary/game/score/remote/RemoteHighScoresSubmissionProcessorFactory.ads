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

package org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package is


   type RemoteHighScoresSubmissionProcessorFactory is tagged;
   type RemoteHighScoresSubmissionProcessorFactory_Access is access all RemoteHighScoresSubmissionProcessorFactory'Class;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array is array (Natural range <>) of RemoteHighScoresSubmissionProcessorFactory_Access;
   type RemoteHighScoresSubmissionProcessorFactory_Access_Array_Access is access all RemoteHighScoresSubmissionProcessorFactory_Access_Array;

   type RemoteHighScoresSubmissionProcessorFactory is new Java_Object with null record;
   SINGLETON : RemoteHighScoresSubmissionProcessorInterface_Access;

   procedure Initialize (This : in out RemoteHighScoresSubmissionProcessorFactory'Class);
   function Create return RemoteHighScoresSubmissionProcessorFactory_Access;
   function getInstance return RemoteHighScoresSubmissionProcessorInterface_Access;
   procedure getInstance;

end org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessorFactory_Package;


