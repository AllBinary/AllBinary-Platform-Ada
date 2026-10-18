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
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;

package org.allbinary.game.input.event.GameKeyEventListenerInterface_Package is


   type GameKeyEventListenerInterface is interface and DownGameKeyEventListenerInterface and UpGameKeyEventListenerInterface and PressGameKeyEventListenerInterface;
   type GameKeyEventListenerInterface_Access is access all GameKeyEventListenerInterface'Class;
   type GameKeyEventListenerInterface_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access;
   type GameKeyEventListenerInterface_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array;
   type GameKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access_Array_Access;
   type GameKeyEventListenerInterface_Access_Array_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array_Access_Array;

end org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;


