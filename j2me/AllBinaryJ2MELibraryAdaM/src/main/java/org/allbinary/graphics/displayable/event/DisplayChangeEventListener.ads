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
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;

package org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type DisplayChangeEventListener is interface and EventListenerInterface;
   type DisplayChangeEventListener_Access is access all DisplayChangeEventListener'Class;
   type DisplayChangeEventListener_Access_Array is array (Natural range <>) of DisplayChangeEventListener_Access;
   type DisplayChangeEventListener_Access_Array_Access is access all DisplayChangeEventListener_Access_Array;
   procedure onDisplayChangeEvent (This : in out DisplayChangeEventListener; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is abstract;

end org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;


