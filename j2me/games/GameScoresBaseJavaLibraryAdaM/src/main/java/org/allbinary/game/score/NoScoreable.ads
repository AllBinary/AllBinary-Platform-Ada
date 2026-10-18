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
with org.allbinary.game.score.Scoreable_Package; use org.allbinary.game.score.Scoreable_Package;

package org.allbinary.game.score.NoScoreable_Package is


   type NoScoreable is tagged;
   type NoScoreable_Access is access all NoScoreable'Class;
   type NoScoreable_Access_Array is array (Natural range <>) of NoScoreable_Access;
   type NoScoreable_Access_Array_Access is access all NoScoreable_Access_Array;
   type NoScoreable_Access_Array_Access_Array is array (Natural range <>) of NoScoreable_Access_Array_Access;
   type NoScoreable_Access_Array_Access_Array_Access is access all NoScoreable_Access_Array_Access_Array;

   type NoScoreable is new Scoreable with null record;
   SINGLETON : NoScoreable_Access;

   procedure Initialize (This : in out NoScoreable'Class);
   function Create return NoScoreable_Access;
   function getInstance return NoScoreable_Access;
   procedure addPoints (This : in out NoScoreable; points : Integer);
   procedure removePoints (This : in out NoScoreable; points : Integer);

end org.allbinary.game.score.NoScoreable_Package;


