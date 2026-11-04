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

limited with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
package org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References is
   type GameNotificationEventHandler_Access is access all org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package.GameNotificationEventHandler'Class;
   type GameNotificationEventHandler_Access_Array is array (Natural range <>) of GameNotificationEventHandler_Access;
   type GameNotificationEventHandler_Access_Array_Access is access all GameNotificationEventHandler_Access_Array;
   type GameNotificationEventHandler_Access_Array_Access_Array is array (Natural range <>) of GameNotificationEventHandler_Access_Array_Access;
   type GameNotificationEventHandler_Access_Array_Access_Array_Access is access all GameNotificationEventHandler_Access_Array_Access_Array;
end org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References;

with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype GameNotificationEventHandler_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access;
   function "=" (Left, Right : GameNotificationEventHandler_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References."=";
   subtype GameNotificationEventHandler_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array;
   function "=" (Left, Right : GameNotificationEventHandler_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References."=";
   subtype GameNotificationEventHandler_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References."=";
   subtype GameNotificationEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References."=";
   subtype GameNotificationEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References.GameNotificationEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package_References."=";

   type GameNotificationEventHandler is new BasicEventHandler with record
      enabled : Boolean;
   end record;
   instance : GameNotificationEventHandler_Access;

   procedure Initialize (This : in out GameNotificationEventHandler'Class);
   function Create return GameNotificationEventHandler_Access;
   procedure removeAllListeners (This : in out GameNotificationEventHandler);
   function getInstance return GameNotificationEventHandler_Access;
   procedure process (This : in out GameNotificationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;


