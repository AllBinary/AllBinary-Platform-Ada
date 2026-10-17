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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;

package org.allbinary.game.score.Scoreable_Package is

   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type Scoreable is tagged;
   type Scoreable_Access is access all Scoreable'Class;
   type Scoreable_Access_Array is array (Natural range <>) of Scoreable_Access;
   type Scoreable_Access_Array_Access is access all Scoreable_Access_Array;

   type Scoreable is new ScoreableInterface with record
      points : Integer;
   end record;
   ID : Integer;

   procedure Initialize (This : in out Scoreable'Class; points : Integer);
   function Create (points : Integer) return Scoreable_Access;
   procedure addPoints (This : in out Scoreable; points : Integer);
   procedure removePoints (This : in out Scoreable; points : Integer);
   procedure setPoints (This : in out Scoreable; points : Integer);
   function getPoints (This : in out Scoreable) return Integer;
   procedure getPoints (This : in out Scoreable);

end org.allbinary.game.score.Scoreable_Package;


