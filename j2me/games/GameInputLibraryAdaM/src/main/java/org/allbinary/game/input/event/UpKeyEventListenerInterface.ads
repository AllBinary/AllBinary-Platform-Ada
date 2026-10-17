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

package org.allbinary.game.input.event.UpKeyEventListenerInterface_Package is

   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;

   type UpKeyEventListenerInterface is interface and EventListenerInterface;
   type UpKeyEventListenerInterface_Access is access all UpKeyEventListenerInterface'Class;
   type UpKeyEventListenerInterface_Access_Array is array (Natural range <>) of UpKeyEventListenerInterface_Access;
   type UpKeyEventListenerInterface_Access_Array_Access is access all UpKeyEventListenerInterface_Access_Array;
   procedure onUpKeyEvent (This : in out UpKeyEventListenerInterface; keyAsInteger : Integer) is abstract;

end org.allbinary.game.input.event.UpKeyEventListenerInterface_Package;


