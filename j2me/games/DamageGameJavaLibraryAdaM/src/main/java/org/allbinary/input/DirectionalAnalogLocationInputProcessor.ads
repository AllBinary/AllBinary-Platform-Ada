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
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package; use org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package is

   package AnalogLocationInputProcessor_Package renames org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
   package GameInputProcessor_Package renames org.allbinary.game.input.GameInputProcessor_Package;
   package GameKeyEventSourceInterface_Package renames org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package AnalogLocationInput_Package renames org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package CustomGPoint_Package renames org.allbinary.graphics.CustomGPoint_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type DirectionalAnalogLocationInputProcessor is tagged;
   type DirectionalAnalogLocationInputProcessor_Access is access all DirectionalAnalogLocationInputProcessor'Class;
   type DirectionalAnalogLocationInputProcessor_Access_Array is array (Natural range <>) of DirectionalAnalogLocationInputProcessor_Access;
   type DirectionalAnalogLocationInputProcessor_Access_Array_Access is access all DirectionalAnalogLocationInputProcessor_Access_Array;

   type DirectionalAnalogLocationInputProcessor is new AnalogLocationInputProcessor and GameKeyEventSourceInterface with record
      logUtil : LogUtil_Access;
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      gameKeyFactory : GameKeyFactory_Access;
      leftGameKeyEvent : GameKeyEvent_Access;
      rightGameKeyEvent : GameKeyEvent_Access;
      upGameKeyEvent : GameKeyEvent_Access;
      downGameKeyEvent : GameKeyEvent_Access;
      leftTriggerGameKeyEvent : GameKeyEvent_Access;
      rightTriggerGameKeyEvent : GameKeyEvent_Access;
   end record;

   procedure Initialize (This : in out DirectionalAnalogLocationInputProcessor'Class; inputProcessorArray : GameInputProcessor_Access_Array_Access);
   function Create (inputProcessorArray : GameInputProcessor_Access_Array_Access) return DirectionalAnalogLocationInputProcessor_Access;
   procedure process (This : in out DirectionalAnalogLocationInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; analogLocationInput : AnalogLocationInput_Access);
   function getSourceId (This : in out DirectionalAnalogLocationInputProcessor) return Integer;
   procedure getSourceId (This : in out DirectionalAnalogLocationInputProcessor);

end org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package;


