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

with AllBinary_Java;
limited with org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package;
package org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References is
   type DirectionalAnalogLocationInputProcessor_Access is access all org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package.DirectionalAnalogLocationInputProcessor'Class;
   type DirectionalAnalogLocationInputProcessor_Access_Array is array (Natural range <>) of DirectionalAnalogLocationInputProcessor_Access;
   type DirectionalAnalogLocationInputProcessor_Access_Array_Access is access all DirectionalAnalogLocationInputProcessor_Access_Array;
   type DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array is array (Natural range <>) of DirectionalAnalogLocationInputProcessor_Access_Array_Access;
   type DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access is access all DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array;
   type DirectionalAnalogLocationInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalAnalogLocationInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalAnalogLocationInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in DirectionalAnalogLocationInputProcessor_Access_Array_Object'Class then DirectionalAnalogLocationInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Object'Class then DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References;

with org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
limited with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
limited with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
limited with org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package_References;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package is

   package AnalogLocationInputProcessor_Package renames Standard.org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;
   package GameInputProcessor_Package renames Standard.org.allbinary.game.input.GameInputProcessor_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package AnalogLocationInput_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   use type GameInputProcessor_Access;
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   use type GameInputProcessor_Access_Array;
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access;
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   use type GameInputProcessor_Access_Array_Access_Array;
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   use type GameInputProcessor_Access_Array_Access_Array_Access;
   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   use type GameKeyFactory_Access;
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   use type GameKeyFactory_Access_Array;
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access;
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   use type GameKeyFactory_Access_Array_Access_Array;
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access_Array_Access;
   subtype AnalogLocationInput_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access;
   use type AnalogLocationInput_Access;
   subtype AnalogLocationInput_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array;
   use type AnalogLocationInput_Access_Array;
   subtype AnalogLocationInput_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access;
   use type AnalogLocationInput_Access_Array_Access;
   subtype AnalogLocationInput_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array;
   use type AnalogLocationInput_Access_Array_Access_Array;
   subtype AnalogLocationInput_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array_Access;
   use type AnalogLocationInput_Access_Array_Access_Array_Access;
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DirectionalAnalogLocationInputProcessor_Access is org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.DirectionalAnalogLocationInputProcessor_Access;
   function "=" (Left, Right : DirectionalAnalogLocationInputProcessor_Access) return Boolean renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References."=";
   subtype DirectionalAnalogLocationInputProcessor_Access_Array is org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.DirectionalAnalogLocationInputProcessor_Access_Array;
   function "=" (Left, Right : DirectionalAnalogLocationInputProcessor_Access_Array) return Boolean renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References."=";
   subtype DirectionalAnalogLocationInputProcessor_Access_Array_Access is org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.DirectionalAnalogLocationInputProcessor_Access_Array_Access;
   function "=" (Left, Right : DirectionalAnalogLocationInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References."=";
   function Java_Box (Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.Java_Box;
   function Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array (Value : access Java_Object'Class) return DirectionalAnalogLocationInputProcessor_Access_Array_Access renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array;
   subtype DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array is org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References."=";
   subtype DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access is org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References."=";
   function Java_Box (Value : DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.Java_Box;
   function Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package_References.Java_Unbox_DirectionalAnalogLocationInputProcessor_Access_Array_Access_Array;

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
   procedure process (This : in out DirectionalAnalogLocationInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInput_Param : access AnalogLocationInput_Package.AnalogLocationInput'Class);
   function getSourceId (This : in out DirectionalAnalogLocationInputProcessor) return Integer;

end org.allbinary.input.DirectionalAnalogLocationInputProcessor_Package;


