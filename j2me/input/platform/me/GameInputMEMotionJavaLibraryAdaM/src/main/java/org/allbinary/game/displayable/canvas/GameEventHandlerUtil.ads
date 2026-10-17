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
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;

package org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package is

   package DownGameKeyEventHandler_Package renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package;

   type GameEventHandlerUtil is tagged;
   type GameEventHandlerUtil_Access is access all GameEventHandlerUtil'Class;
   type GameEventHandlerUtil_Access_Array is array (Natural range <>) of GameEventHandlerUtil_Access;
   type GameEventHandlerUtil_Access_Array_Access is access all GameEventHandlerUtil_Access_Array;

   type GameEventHandlerUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameEventHandlerUtil'Class);
   function Create return GameEventHandlerUtil_Access;
   procedure removeAllListeners;

end org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;


