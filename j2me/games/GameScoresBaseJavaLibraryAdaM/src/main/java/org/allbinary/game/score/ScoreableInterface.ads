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

package org.allbinary.game.score.ScoreableInterface_Package is


   type ScoreableInterface is interface;
   type ScoreableInterface_Access is access all ScoreableInterface'Class;
   type ScoreableInterface_Access_Array is array (Natural range <>) of ScoreableInterface_Access;
   type ScoreableInterface_Access_Array_Access is access all ScoreableInterface_Access_Array;
   type ScoreableInterface_Access_Array_Access_Array is array (Natural range <>) of ScoreableInterface_Access_Array_Access;
   type ScoreableInterface_Access_Array_Access_Array_Access is access all ScoreableInterface_Access_Array_Access_Array;
   function getPoints (This : in out ScoreableInterface) return Integer is abstract;
   procedure addPoints (This : in out ScoreableInterface; points : Integer) is abstract;
   procedure removePoints (This : in out ScoreableInterface; points : Integer) is abstract;

end org.allbinary.game.score.ScoreableInterface_Package;


