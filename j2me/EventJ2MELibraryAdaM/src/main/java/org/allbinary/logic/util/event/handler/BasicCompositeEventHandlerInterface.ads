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

package org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package is


   type BasicCompositeEventHandlerInterface is interface;
   type BasicCompositeEventHandlerInterface_Access is access all BasicCompositeEventHandlerInterface'Class;
   type BasicCompositeEventHandlerInterface_Access_Array is array (Natural range <>) of BasicCompositeEventHandlerInterface_Access;
   type BasicCompositeEventHandlerInterface_Access_Array_Access is access all BasicCompositeEventHandlerInterface_Access_Array;
   function getEventHandler (This : in out BasicCompositeEventHandlerInterface) return BasicEventHandlerInterface_Access is abstract;
   procedure setEventHandler (This : in out BasicCompositeEventHandlerInterface; basicEventHandlerInterface : BasicEventHandlerInterface_Access) is abstract;

end org.allbinary.logic.util.event.handler.BasicCompositeEventHandlerInterface_Package;


