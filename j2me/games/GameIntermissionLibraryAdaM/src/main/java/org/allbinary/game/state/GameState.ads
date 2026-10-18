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

package org.allbinary.game.state.GameState_Package is


   type GameState is tagged;
   type GameState_Access is access all GameState'Class;
   type GameState_Access_Array is array (Natural range <>) of GameState_Access;
   type GameState_Access_Array_Access is access all GameState_Access_Array;
   type GameState_Access_Array_Access_Array is array (Natural range <>) of GameState_Access_Array_Access;
   type GameState_Access_Array_Access_Array_Access is access all GameState_Access_Array_Access_Array;

   type GameState is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameState'Class; name : Unbounded_String; state : Integer);
   function Create (name : Unbounded_String; state : Integer) return GameState_Access;
   function toString (This : in out GameState) return Unbounded_String;

end org.allbinary.game.state.GameState_Package;


