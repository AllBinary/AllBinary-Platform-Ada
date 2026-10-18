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
with org.allbinary.game.input.GameInputInterface_Package; use org.allbinary.game.input.GameInputInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.PlayerGameInputCompositeInterface_Package is


   type PlayerGameInputCompositeInterface is interface and GameInputInterface;
   type PlayerGameInputCompositeInterface_Access is access all PlayerGameInputCompositeInterface'Class;
   type PlayerGameInputCompositeInterface_Access_Array is array (Natural range <>) of PlayerGameInputCompositeInterface_Access;
   type PlayerGameInputCompositeInterface_Access_Array_Access is access all PlayerGameInputCompositeInterface_Access_Array;
   type PlayerGameInputCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of PlayerGameInputCompositeInterface_Access_Array_Access;
   type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is access all PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function getPlayerGameInput (This : in out PlayerGameInputCompositeInterface) return PlayerGameInput_Access is abstract;

end org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;


