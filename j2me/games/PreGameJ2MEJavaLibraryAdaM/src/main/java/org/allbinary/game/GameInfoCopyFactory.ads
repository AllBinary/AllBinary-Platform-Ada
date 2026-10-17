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

package org.allbinary.game.GameInfoCopyFactory_Package is


   type GameInfoCopyFactory is tagged;
   type GameInfoCopyFactory_Access is access all GameInfoCopyFactory'Class;
   type GameInfoCopyFactory_Access_Array is array (Natural range <>) of GameInfoCopyFactory_Access;
   type GameInfoCopyFactory_Access_Array_Access is access all GameInfoCopyFactory_Access_Array;

   type GameInfoCopyFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInfoCopyFactory'Class);
   function Create return GameInfoCopyFactory_Access;
   function getInstanceMaxLevel (gameInfo_Param : access GameInfo'Class; maxLevel : Integer) return GameInfo_Access;
   procedure getInstanceMaxLevel (gameInfo_Param : access GameInfo'Class; maxLevel : Integer);
   function getInstance (gameInfo_Param : access GameInfo'Class) return GameInfo_Access;
   procedure getInstance (gameInfo_Param : access GameInfo'Class);

end org.allbinary.game.GameInfoCopyFactory_Package;


