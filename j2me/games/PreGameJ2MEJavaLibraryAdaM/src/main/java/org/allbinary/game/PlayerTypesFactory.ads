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

package org.allbinary.game.PlayerTypesFactory_Package is


   type PlayerTypesFactory is tagged;
   type PlayerTypesFactory_Access is access all PlayerTypesFactory'Class;
   type PlayerTypesFactory_Access_Array is array (Natural range <>) of PlayerTypesFactory_Access;
   type PlayerTypesFactory_Access_Array_Access is access all PlayerTypesFactory_Access_Array;

   type PlayerTypesFactory is new Java_Object with record
      PLAYER_TYPE_ONE : PlayerType_Access;
      PLAYER_TYPE_TWO : PlayerType_Access;
      PLAYER_TYPE_THREE : PlayerType_Access;
   end record;
   SINGLETON : PlayerTypesFactory_Access;

   procedure Initialize (This : in out PlayerTypesFactory'Class);
   function Create return PlayerTypesFactory_Access;
   function getInstance return PlayerTypesFactory_Access;
   procedure getInstance;

end org.allbinary.game.PlayerTypesFactory_Package;


