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
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package; use org.allbinary.game.input.ScrollMapPlayerGameInput_Package;

package org.allbinary.game.input.ScrollMapGameInputProcessor_Package is


   type ScrollMapGameInputProcessor is tagged;
   type ScrollMapGameInputProcessor_Access is access all ScrollMapGameInputProcessor'Class;
   type ScrollMapGameInputProcessor_Access_Array is array (Natural range <>) of ScrollMapGameInputProcessor_Access;
   type ScrollMapGameInputProcessor_Access_Array_Access is access all ScrollMapGameInputProcessor_Access_Array;

   type ScrollMapGameInputProcessor is new GameInputProcessor with record
      scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out ScrollMapGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class);
   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) return ScrollMapGameInputProcessor_Access;

end org.allbinary.game.input.ScrollMapGameInputProcessor_Package;


