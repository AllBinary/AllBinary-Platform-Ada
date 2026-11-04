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

limited with org.allbinary.game.input.event.GameKeyEventHandler_Package;
package org.allbinary.game.input.event.GameKeyEventHandler_Package_References is
   type GameKeyEventHandler_Access is access all org.allbinary.game.input.event.GameKeyEventHandler_Package.GameKeyEventHandler'Class;
   type GameKeyEventHandler_Access_Array is array (Natural range <>) of GameKeyEventHandler_Access;
   type GameKeyEventHandler_Access_Array_Access is access all GameKeyEventHandler_Access_Array;
   type GameKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventHandler_Access_Array_Access;
   type GameKeyEventHandler_Access_Array_Access_Array_Access is access all GameKeyEventHandler_Access_Array_Access_Array;
end org.allbinary.game.input.event.GameKeyEventHandler_Package_References;

with org.allbinary.game.input.event.GameKeyEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References;
limited with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References;

package org.allbinary.game.input.event.GameKeyEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype PressGameKeyEventHandler_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access;
   use type PressGameKeyEventHandler_Access;
   subtype PressGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array;
   use type PressGameKeyEventHandler_Access_Array;
   subtype PressGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access;
   use type PressGameKeyEventHandler_Access_Array_Access;
   subtype PressGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access_Array;
   use type PressGameKeyEventHandler_Access_Array_Access_Array;
   subtype PressGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.PressGameKeyEventHandler_Package_References.PressGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type PressGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access;
   use type UpGameKeyEventHandler_Access;
   subtype UpGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array;
   use type UpGameKeyEventHandler_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array;
   use type UpGameKeyEventHandler_Access_Array_Access_Array;
   subtype UpGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.UpGameKeyEventHandler_Package_References.UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type UpGameKeyEventHandler_Access_Array_Access_Array_Access;
   subtype DownGameKeyEventHandler_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access;
   use type DownGameKeyEventHandler_Access;
   subtype DownGameKeyEventHandler_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array;
   use type DownGameKeyEventHandler_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array;
   use type DownGameKeyEventHandler_Access_Array_Access_Array;
   subtype DownGameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.DownGameKeyEventHandler_Package_References.DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   use type DownGameKeyEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyEventHandler_Access is org.allbinary.game.input.event.GameKeyEventHandler_Package_References.GameKeyEventHandler_Access;
   function "=" (Left, Right : GameKeyEventHandler_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventHandler_Package_References."=";
   subtype GameKeyEventHandler_Access_Array is org.allbinary.game.input.event.GameKeyEventHandler_Package_References.GameKeyEventHandler_Access_Array;
   function "=" (Left, Right : GameKeyEventHandler_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventHandler_Package_References."=";
   subtype GameKeyEventHandler_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventHandler_Package_References.GameKeyEventHandler_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventHandler_Package_References."=";
   subtype GameKeyEventHandler_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventHandler_Package_References.GameKeyEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventHandler_Package_References."=";
   subtype GameKeyEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventHandler_Package_References.GameKeyEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventHandler_Package_References."=";

   type GameKeyEventHandler is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      pressGameKeyEventHandler : PressGameKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
   end record;
   instance : GameKeyEventHandler_Access;

   procedure Initialize (This : in out GameKeyEventHandler'Class);
   function Create return GameKeyEventHandler_Access;
   function getInstance return GameKeyEventHandler_Access;
   procedure removeAllListeners (This : in out GameKeyEventHandler);
   procedure addListenerForPlayer (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class; playerInputId : Integer);
   procedure addListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.GameKeyEventHandler_Package;


