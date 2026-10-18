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
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;

package org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type DownGameKeyEventListenerInterface is interface and EventListenerInterface;
   type DownGameKeyEventListenerInterface_Access is access all DownGameKeyEventListenerInterface'Class;
   type DownGameKeyEventListenerInterface_Access_Array is array (Natural range <>) of DownGameKeyEventListenerInterface_Access;
   type DownGameKeyEventListenerInterface_Access_Array_Access is access all DownGameKeyEventListenerInterface_Access_Array;
   type DownGameKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of DownGameKeyEventListenerInterface_Access_Array_Access;
   type DownGameKeyEventListenerInterface_Access_Array_Access_Array_Access is access all DownGameKeyEventListenerInterface_Access_Array_Access_Array;
   procedure onDownGameKeyEvent (This : in out DownGameKeyEventListenerInterface; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;

end org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;


