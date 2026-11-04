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

limited with org.allbinary.game.input.event.GameKeyEventFactory_Package;
package org.allbinary.game.input.event.GameKeyEventFactory_Package_References is
   type GameKeyEventFactory_Access is access all org.allbinary.game.input.event.GameKeyEventFactory_Package.GameKeyEventFactory'Class;
   type GameKeyEventFactory_Access_Array is array (Natural range <>) of GameKeyEventFactory_Access;
   type GameKeyEventFactory_Access_Array_Access is access all GameKeyEventFactory_Access_Array;
   type GameKeyEventFactory_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventFactory_Access_Array_Access;
   type GameKeyEventFactory_Access_Array_Access_Array_Access is access all GameKeyEventFactory_Access_Array_Access_Array;
end org.allbinary.game.input.event.GameKeyEventFactory_Package_References;

with org.allbinary.game.input.event.GameKeyEventFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;

package org.allbinary.game.input.event.GameKeyEventFactory_Package is

   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype GameKeyEventSourceInterface_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access;
   use type GameKeyEventSourceInterface_Access;
   subtype GameKeyEventSourceInterface_Access_Array is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array;
   use type GameKeyEventSourceInterface_Access_Array;
   subtype GameKeyEventSourceInterface_Access_Array_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access;
   use type GameKeyEventSourceInterface_Access_Array_Access;
   subtype GameKeyEventSourceInterface_Access_Array_Access_Array is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access_Array;
   use type GameKeyEventSourceInterface_Access_Array_Access_Array;
   subtype GameKeyEventSourceInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyEventSourceInterface_Package_References.GameKeyEventSourceInterface_Access_Array_Access_Array_Access;
   use type GameKeyEventSourceInterface_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyEventFactory_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";

   type GameKeyEventFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      TOUCH_BUTTON_SOURCE_ID : Integer;
      MOTION_GESTURE_SOURCE_ID : Integer;
      MAX_SOURCES : Integer;
      ARRAY_Id : GameKeyEvent_Access_Array_Access_Array_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out GameKeyEventFactory'Class);
   function Create return GameKeyEventFactory_Access;
   function getInstance return GameKeyEventFactory_Access;
   procedure init (This : in out GameKeyEventFactory);
   function getInstanceForKey (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; key : Integer) return GameKeyEvent_Access;
   procedure getInstanceForKey (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; key : Integer);
   function getInstanceForInput (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; input_Param : access Input_Package.Input'Class) return GameKeyEvent_Access;
   procedure getInstanceForInput (This : in out GameKeyEventFactory; anyType_Param : access GameKeyEventSourceInterface_Package.GameKeyEventSourceInterface'Class; input_Param : access Input_Package.Input'Class);

end org.allbinary.game.input.event.GameKeyEventFactory_Package;


