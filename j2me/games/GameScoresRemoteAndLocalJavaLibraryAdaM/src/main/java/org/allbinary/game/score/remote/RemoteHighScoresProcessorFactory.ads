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

package org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package is


   type RemoteHighScoresProcessorFactory is tagged;
   type RemoteHighScoresProcessorFactory_Access is access all RemoteHighScoresProcessorFactory'Class;
   type RemoteHighScoresProcessorFactory_Access_Array is array (Natural range <>) of RemoteHighScoresProcessorFactory_Access;
   type RemoteHighScoresProcessorFactory_Access_Array_Access is access all RemoteHighScoresProcessorFactory_Access_Array;

   type RemoteHighScoresProcessorFactory is new Java_Object with null record;
   SINGLETON : RemoteHighScoresProcessorInterface_Access;

   procedure Initialize (This : in out RemoteHighScoresProcessorFactory'Class);
   function Create return RemoteHighScoresProcessorFactory_Access;
   function getInstance return RemoteHighScoresProcessorInterface_Access;
   procedure getInstance;

end org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package;


