-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.layer.special.SpecialGameInput_Package; use org.allbinary.game.layer.special.SpecialGameInput_Package;

package org.allbinary.game.layer.special.SpecialGameInputFactory_Package is


   type SpecialGameInputFactory is tagged;
   type SpecialGameInputFactory_Access is access all SpecialGameInputFactory'Class;
   type SpecialGameInputFactory_Access_Array is array (Natural range <>) of SpecialGameInputFactory_Access;
   type SpecialGameInputFactory_Access_Array_Access is access all SpecialGameInputFactory_Access_Array;

   type SpecialGameInputFactory is new Java_Object with null record;
   NO_SPECIAL_GAME_INPUT : SpecialGameInput_Access;

   procedure Initialize (This : in out SpecialGameInputFactory'Class);
   function Create return SpecialGameInputFactory_Access;

end org.allbinary.game.layer.special.SpecialGameInputFactory_Package;


