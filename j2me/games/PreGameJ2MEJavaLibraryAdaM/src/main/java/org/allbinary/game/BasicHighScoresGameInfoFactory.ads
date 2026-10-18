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

package org.allbinary.game.BasicHighScoresGameInfoFactory_Package is


   type BasicHighScoresGameInfoFactory is tagged;
   type BasicHighScoresGameInfoFactory_Access is access all BasicHighScoresGameInfoFactory'Class;
   type BasicHighScoresGameInfoFactory_Access_Array is array (Natural range <>) of BasicHighScoresGameInfoFactory_Access;
   type BasicHighScoresGameInfoFactory_Access_Array_Access is access all BasicHighScoresGameInfoFactory_Access_Array;
   type BasicHighScoresGameInfoFactory_Access_Array_Access_Array is array (Natural range <>) of BasicHighScoresGameInfoFactory_Access_Array_Access;
   type BasicHighScoresGameInfoFactory_Access_Array_Access_Array_Access is access all BasicHighScoresGameInfoFactory_Access_Array_Access_Array;

   type BasicHighScoresGameInfoFactory is new Java_Object with record
      MULTI_PLAYER_SERVER : GameInfo_Access;
      SINGLE_PLAYER_SERVER : GameInfo_Access;
   end record;
   SINGLETON : BasicHighScoresGameInfoFactory_Access;

   procedure Initialize (This : in out BasicHighScoresGameInfoFactory'Class);
   function Create return BasicHighScoresGameInfoFactory_Access;
   function getInstance return BasicHighScoresGameInfoFactory_Access;

end org.allbinary.game.BasicHighScoresGameInfoFactory_Package;


