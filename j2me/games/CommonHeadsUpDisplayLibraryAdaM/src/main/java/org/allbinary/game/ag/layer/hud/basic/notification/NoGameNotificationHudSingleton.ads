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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;

package org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type NoGameNotificationHudSingleton is tagged;
   type NoGameNotificationHudSingleton_Access is access all NoGameNotificationHudSingleton'Class;
   type NoGameNotificationHudSingleton_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access_Array_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array_Access_Array;

   type NoGameNotificationHudSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
      gameNotificationHud : GameNotificationHud_Access;
   end record;
   instance : NoGameNotificationHudSingleton_Access;

   procedure Initialize (This : in out NoGameNotificationHudSingleton'Class);
   function Create return NoGameNotificationHudSingleton_Access;
   function getInstance return NoGameNotificationHudSingleton_Access;
   function getGameNotificationHud (This : in out NoGameNotificationHudSingleton) return GameNotificationHud_Access;

end org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package;


