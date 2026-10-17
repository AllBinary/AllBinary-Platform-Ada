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
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.input.mapping.event.InputMappingEvent_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type InputMappingEvent is tagged;
   type InputMappingEvent_Access is access all InputMappingEvent'Class;
   type InputMappingEvent_Access_Array is array (Natural range <>) of InputMappingEvent_Access;
   type InputMappingEvent_Access_Array_Access is access all InputMappingEvent_Access_Array;

   type InputMappingEvent is new AllBinaryEventObject with record
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
   end record;

   procedure Initialize (This : in out InputMappingEvent'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return InputMappingEvent_Access;
   procedure setInputToGameKeyMapping (This : in out InputMappingEvent; inputToGameKeyMapping : InputToGameKeyMapping_Access);
   function getInputToGameKeyMapping (This : in out InputMappingEvent) return InputToGameKeyMapping_Access;
   procedure getInputToGameKeyMapping (This : in out InputMappingEvent);

end org.allbinary.game.input.mapping.event.InputMappingEvent_Package;


