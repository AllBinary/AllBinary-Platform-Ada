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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.NoPlayerGameInput_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type NoPlayerGameInput is tagged;
   type NoPlayerGameInput_Access is access all NoPlayerGameInput'Class;
   type NoPlayerGameInput_Access_Array is array (Natural range <>) of NoPlayerGameInput_Access;
   type NoPlayerGameInput_Access_Array_Access is access all NoPlayerGameInput_Access_Array;

   type NoPlayerGameInput is new PlayerGameInput with null record;
   SINGLETON : NoPlayerGameInput_Access;

   procedure Initialize (This : in out NoPlayerGameInput'Class);
   function Create return NoPlayerGameInput_Access;
   function getInstance return NoPlayerGameInput_Access;
   procedure onDownGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure onUpGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent : GameKeyEvent_Access);

end org.allbinary.game.input.NoPlayerGameInput_Package;


