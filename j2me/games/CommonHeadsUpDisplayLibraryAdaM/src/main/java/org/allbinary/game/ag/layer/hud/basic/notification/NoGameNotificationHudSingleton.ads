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
limited with org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package;
package org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References is
   type NoGameNotificationHudSingleton_Access is access all org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package.NoGameNotificationHudSingleton'Class;
   type NoGameNotificationHudSingleton_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array is array (Natural range <>) of NoGameNotificationHudSingleton_Access_Array_Access;
   type NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is access all NoGameNotificationHudSingleton_Access_Array_Access_Array;
   type NoGameNotificationHudSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoGameNotificationHudSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : NoGameNotificationHudSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoGameNotificationHudSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoGameNotificationHudSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoGameNotificationHudSingleton_Access_Array_Access is (if Value /= null and then Value.all in NoGameNotificationHudSingleton_Access_Array_Object'Class then NoGameNotificationHudSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type NoGameNotificationHudSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoGameNotificationHudSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoGameNotificationHudSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoGameNotificationHudSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoGameNotificationHudSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoGameNotificationHudSingleton_Access_Array_Access_Array_Object'Class then NoGameNotificationHudSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : NoGameNotificationHudSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.Java_Box;
   function Java_Unbox_NoGameNotificationHudSingleton_Access_Array (Value : access Java_Object'Class) return NoGameNotificationHudSingleton_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.Java_Unbox_NoGameNotificationHudSingleton_Access_Array;
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoGameNotificationHudSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References."=";
   function Java_Box (Value : NoGameNotificationHudSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.Java_Box;
   function Java_Unbox_NoGameNotificationHudSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return NoGameNotificationHudSingleton_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.Java_Unbox_NoGameNotificationHudSingleton_Access_Array_Access_Array;

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

with AllBinary_Java;
limited with org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package;
package org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References is
   type NoGameGameNotificationHud_Access is access all org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package.NoGameGameNotificationHud'Class;
   type NoGameGameNotificationHud_Access_Array is array (Natural range <>) of NoGameGameNotificationHud_Access;
   type NoGameGameNotificationHud_Access_Array_Access is access all NoGameGameNotificationHud_Access_Array;
   type NoGameGameNotificationHud_Access_Array_Access_Array is array (Natural range <>) of NoGameGameNotificationHud_Access_Array_Access;
   type NoGameGameNotificationHud_Access_Array_Access_Array_Access is access all NoGameGameNotificationHud_Access_Array_Access_Array;
   type NoGameGameNotificationHud_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoGameGameNotificationHud_Access_Array_Access;
   end record;
   function Java_Box (Value : NoGameGameNotificationHud_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoGameGameNotificationHud_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoGameGameNotificationHud_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoGameGameNotificationHud_Access_Array_Access is (if Value /= null and then Value.all in NoGameGameNotificationHud_Access_Array_Object'Class then NoGameGameNotificationHud_Access_Array_Object'Class (Value.all).Value else null);
   type NoGameGameNotificationHud_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoGameGameNotificationHud_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoGameGameNotificationHud_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoGameGameNotificationHud_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoGameGameNotificationHud_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoGameGameNotificationHud_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoGameGameNotificationHud_Access_Array_Access_Array_Object'Class then NoGameGameNotificationHud_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References;

with org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References;
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
limited with org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References;

package org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package is

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
   subtype NoGameNotificationHudSingleton_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access;
   use type NoGameNotificationHudSingleton_Access;
   subtype NoGameNotificationHudSingleton_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array;
   use type NoGameNotificationHudSingleton_Access_Array;
   subtype NoGameNotificationHudSingleton_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access;
   use type NoGameNotificationHudSingleton_Access_Array_Access;
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array;
   use type NoGameNotificationHudSingleton_Access_Array_Access_Array;
   subtype NoGameNotificationHudSingleton_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton_Package_References.NoGameNotificationHudSingleton_Access_Array_Access_Array_Access;
   use type NoGameNotificationHudSingleton_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoGameGameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.NoGameGameNotificationHud_Access;
   function "=" (Left, Right : NoGameGameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References."=";
   subtype NoGameGameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.NoGameGameNotificationHud_Access_Array;
   function "=" (Left, Right : NoGameGameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References."=";
   subtype NoGameGameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.NoGameGameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : NoGameGameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References."=";
   function Java_Box (Value : NoGameGameNotificationHud_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.Java_Box;
   function Java_Unbox_NoGameGameNotificationHud_Access_Array (Value : access Java_Object'Class) return NoGameGameNotificationHud_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.Java_Unbox_NoGameGameNotificationHud_Access_Array;
   subtype NoGameGameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.NoGameGameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : NoGameGameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References."=";
   subtype NoGameGameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.NoGameGameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoGameGameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References."=";
   function Java_Box (Value : NoGameGameNotificationHud_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.Java_Box;
   function Java_Unbox_NoGameGameNotificationHud_Access_Array_Access_Array (Value : access Java_Object'Class) return NoGameGameNotificationHud_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package_References.Java_Unbox_NoGameGameNotificationHud_Access_Array_Access_Array;

   type NoGameGameNotificationHud is new GameNotificationHud with null record;

   procedure Initialize (This : in out NoGameGameNotificationHud'Class);
   function Create return NoGameGameNotificationHud_Access;

end org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud_Package;


