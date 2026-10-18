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

package org.allbinary.game.score.remote.RemoteHighScoresData_Package is


   type RemoteHighScoresData is tagged;
   type RemoteHighScoresData_Access is access all RemoteHighScoresData'Class;
   type RemoteHighScoresData_Access_Array is array (Natural range <>) of RemoteHighScoresData_Access;
   type RemoteHighScoresData_Access_Array_Access is access all RemoteHighScoresData_Access_Array;
   type RemoteHighScoresData_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresData_Access_Array_Access;
   type RemoteHighScoresData_Access_Array_Access_Array_Access is access all RemoteHighScoresData_Access_Array_Access_Array;

   type RemoteHighScoresData is new Java_Object with record
      HIGH_SCORES : Unbounded_String;
      CUSTOMER_USER_NAME : Unbounded_String;
      DISPLAY_NAME : Unbounded_String;
      SCORE : Unbounded_String;
      GAME_INFO : Unbounded_String;
      GAME_CONFIGURATION : Unbounded_String;
   end record;
   SINGLETON : RemoteHighScoresData_Access;

   procedure Initialize (This : in out RemoteHighScoresData'Class);
   function Create return RemoteHighScoresData_Access;
   function getInstance return RemoteHighScoresData_Access;

end org.allbinary.game.score.remote.RemoteHighScoresData_Package;


