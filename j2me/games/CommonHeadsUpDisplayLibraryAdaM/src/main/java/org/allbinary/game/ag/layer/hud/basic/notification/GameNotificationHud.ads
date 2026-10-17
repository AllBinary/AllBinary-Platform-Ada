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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package; use org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package is

   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationListenerInterface_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationListenerInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type GameNotificationHud is tagged;
   type GameNotificationHud_Access is access all GameNotificationHud'Class;
   type GameNotificationHud_Access_Array is array (Natural range <>) of GameNotificationHud_Access;
   type GameNotificationHud_Access_Array_Access is access all GameNotificationHud_Access_Array;

   type GameNotificationHud is new BasicHud and GameNotificationListenerInterface with record
      METHOD_NAME : Unbounded_String;
      lastGameNotificationEvent : GameNotificationEvent_Access;
   end record;
   NULL_GAME_NOTIFICATION : GameNotificationHud_Access;

   procedure Initialize (This : in out GameNotificationHud'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access);
   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor : BasicColor_Access) return GameNotificationHud_Access;
   procedure onEvent (This : in out GameNotificationHud; eventObject : AllBinaryEventObject_Access);
   procedure onGameNotificationEvent (This : in out GameNotificationHud; gameNotificationEvent : GameNotificationEvent_Access);
   procedure add (This : in out GameNotificationHud; string_Id : Unbounded_String; seconds : Integer; basicColor : BasicColor_Access; permanent : Boolean);
   procedure processTick (This : in out GameNotificationHud);
   procedure paint (This : in out GameNotificationHud; graphics : Graphics_Access);
   procedure clear (This : in out GameNotificationHud);

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;


