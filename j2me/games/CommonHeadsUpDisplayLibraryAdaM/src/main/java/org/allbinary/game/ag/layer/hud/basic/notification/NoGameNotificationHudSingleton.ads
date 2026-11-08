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

limited with org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package;
package org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References is
   type NoGameNotificationHudSingleton_Access is access all org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package.NoGameNotificationHudSingleton'Class;
   type NoGameNotificationHudSingleton_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access_Array_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References;

with org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References;
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
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;

package org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype NoGameNotificationHudSingleton_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   subtype NoGameNotificationHudSingleton_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   subtype NoGameNotificationHudSingleton_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";

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


