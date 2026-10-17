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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.GameKey_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type GameKey is tagged;
   type GameKey_Access is access all GameKey'Class;
   type GameKey_Access_Array is array (Natural range <>) of GameKey_Access;
   type GameKey_Access_Array_Access is access all GameKey_Access_Array;

   type GameKey is new Input with null record;
   NULL_GAME_KEY : GameKey_Access;

   procedure Initialize (This : in out GameKey'Class; key : Integer; name : Unbounded_String);
   function Create (key : Integer; name : Unbounded_String) return GameKey_Access;
   function toString (This : in out GameKey) return Unbounded_String;
   procedure toString (This : in out GameKey);

end org.allbinary.game.input.GameKey_Package;


