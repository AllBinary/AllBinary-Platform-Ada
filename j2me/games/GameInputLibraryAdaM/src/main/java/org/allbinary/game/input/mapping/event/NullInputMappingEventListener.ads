-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package; use org.allbinary.game.input.mapping.event.InputMappingEvent_Package;

package org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type NullInputMappingEventListener is tagged;
   type NullInputMappingEventListener_Access is access all NullInputMappingEventListener'Class;
   type NullInputMappingEventListener_Access_Array is array (Natural range <>) of NullInputMappingEventListener_Access;
   type NullInputMappingEventListener_Access_Array_Access is access all NullInputMappingEventListener_Access_Array;

   type NullInputMappingEventListener is new InputMappingEventListenerInterface with null record;
   NULL_INPUT_MAPPING_EVENT_LISTENER : NullInputMappingEventListener_Access;

   procedure Initialize (This : in out NullInputMappingEventListener'Class);
   function Create return NullInputMappingEventListener_Access;
   procedure onInputMappingEvent (This : in out NullInputMappingEventListener; inputMappingEvent_Param : access InputMappingEvent'Class);
   procedure onEvent (This : in out NullInputMappingEventListener; eventObject_Param : access AllBinaryEventObject'Class);

end org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;


