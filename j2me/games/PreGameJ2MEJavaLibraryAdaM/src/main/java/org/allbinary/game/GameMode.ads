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

package org.allbinary.game.GameMode_Package is


   type GameMode is tagged;
   type GameMode_Access is access all GameMode'Class;
   type GameMode_Access_Array is array (Natural range <>) of GameMode_Access;
   type GameMode_Access_Array_Access is access all GameMode_Access_Array;
   type GameMode_Access_Array_Access_Array is array (Natural range <>) of GameMode_Access_Array_Access;
   type GameMode_Access_Array_Access_Array_Access is access all GameMode_Access_Array_Access_Array;

   type GameMode is new Java_Object with record
      name : Unbounded_String;
   end record;
   NONE : GameMode_Access;
   SERVER : GameMode_Access;
   CLIENT : GameMode_Access;

   procedure Initialize (This : in out GameMode'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GameMode_Access;
   procedure setName (This : in out GameMode; name : Unbounded_String);
   function getName (This : in out GameMode) return Unbounded_String;
   function toString (This : in out GameMode) return Unbounded_String;

end org.allbinary.game.GameMode_Package;


