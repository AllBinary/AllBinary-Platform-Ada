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
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.game.input.mapping.GameInputMapping_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type GameInputMapping is tagged;
   type GameInputMapping_Access is access all GameInputMapping'Class;
   type GameInputMapping_Access_Array is array (Natural range <>) of GameInputMapping_Access;
   type GameInputMapping_Access_Array_Access is access all GameInputMapping_Access_Array;

   type GameInputMapping is new Java_Object with record
      name : Unbounded_String;
      gameKey : GameKey_Access;
   end record;

   procedure Initialize (This : in out GameInputMapping'Class; name : Unbounded_String; gameKey : GameKey_Access);
   function Create (name : Unbounded_String; gameKey : GameKey_Access) return GameInputMapping_Access;
   procedure setGameKey (This : in out GameInputMapping; gameKey : GameKey_Access);
   function getGameKey (This : in out GameInputMapping) return GameKey_Access;
   procedure getGameKey (This : in out GameInputMapping);
   procedure setName (This : in out GameInputMapping; name : Unbounded_String);
   function getName (This : in out GameInputMapping) return Unbounded_String;
   procedure getName (This : in out GameInputMapping);

end org.allbinary.game.input.mapping.GameInputMapping_Package;


