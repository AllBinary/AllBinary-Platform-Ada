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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.input.GameKeyMappingFactory_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;

   type GameKeyMappingFactory is tagged;
   type GameKeyMappingFactory_Access is access all GameKeyMappingFactory'Class;
   type GameKeyMappingFactory_Access_Array is array (Natural range <>) of GameKeyMappingFactory_Access;
   type GameKeyMappingFactory_Access_Array_Access is access all GameKeyMappingFactory_Access_Array;

   type GameKeyMappingFactory is new Java_Object with record
      intKeyToGameKey : GameKey_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyMappingFactory'Class);
   function Create return GameKeyMappingFactory_Access;
   function getInstance return GameKeyMappingFactory_Access;
   procedure getInstance;
   function getGameKey (This : in out GameKeyMappingFactory; key : Integer) return GameKey_Access;
   procedure getGameKey (This : in out GameKeyMappingFactory; key : Integer);
   procedure setGameKey (This : in out GameKeyMappingFactory; gameKey : GameKey_Access);

end org.allbinary.game.input.GameKeyMappingFactory_Package;


