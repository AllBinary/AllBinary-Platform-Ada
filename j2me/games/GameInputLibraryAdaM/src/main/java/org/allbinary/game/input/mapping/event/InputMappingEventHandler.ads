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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.input.mapping.event.InputMappingEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type InputMappingEventHandler is tagged;
   type InputMappingEventHandler_Access is access all InputMappingEventHandler'Class;
   type InputMappingEventHandler_Access_Array is array (Natural range <>) of InputMappingEventHandler_Access;
   type InputMappingEventHandler_Access_Array_Access is access all InputMappingEventHandler_Access_Array;

   type InputMappingEventHandler is new BasicEventHandler with null record;
   gameKeyEventHandler : InputMappingEventHandler_Access;

   procedure Initialize (This : in out InputMappingEventHandler'Class);
   function Create return InputMappingEventHandler_Access;
   function getInstance return InputMappingEventHandler_Access;
   procedure getInstance;
   procedure process (This : in out InputMappingEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.input.mapping.event.InputMappingEventHandler_Package;


