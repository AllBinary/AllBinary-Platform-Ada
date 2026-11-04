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

limited with org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package;
package org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References is
   type GameNotificationListenerInterface_Access is access all org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package.GameNotificationListenerInterface'Class;
   type GameNotificationListenerInterface_Access_Array is array (Natural range <>) of GameNotificationListenerInterface_Access;
   type GameNotificationListenerInterface_Access_Array_Access is access all GameNotificationListenerInterface_Access_Array;
   type GameNotificationListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GameNotificationListenerInterface_Access_Array_Access;
   type GameNotificationListenerInterface_Access_Array_Access_Array_Access is access all GameNotificationListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References;

with org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;

package org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   use type GameNotificationEvent_Access;
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   use type GameNotificationEvent_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access;
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   use type GameNotificationEvent_Access_Array_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GameNotificationListenerInterface is interface and EventListenerInterface;
   subtype GameNotificationListenerInterface_Access is org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References.GameNotificationListenerInterface_Access;
   function "=" (Left, Right : GameNotificationListenerInterface_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References."=";
   subtype GameNotificationListenerInterface_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References.GameNotificationListenerInterface_Access_Array;
   function "=" (Left, Right : GameNotificationListenerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References."=";
   subtype GameNotificationListenerInterface_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References.GameNotificationListenerInterface_Access_Array_Access;
   function "=" (Left, Right : GameNotificationListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References."=";
   subtype GameNotificationListenerInterface_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References.GameNotificationListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References."=";
   subtype GameNotificationListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References.GameNotificationListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package_References."=";
   function Java_Object_Access_From_GameNotificationListenerInterface (Value : GameNotificationListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onGameNotificationEvent (This : in out GameNotificationListenerInterface; gameNotificationEvent_Param : access GameNotificationEvent_Package.GameNotificationEvent'Class) is abstract;

end org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package;


