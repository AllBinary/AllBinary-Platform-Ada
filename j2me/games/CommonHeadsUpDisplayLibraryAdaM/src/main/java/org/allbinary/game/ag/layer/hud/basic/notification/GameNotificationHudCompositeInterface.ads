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
limited with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;
package org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References is
   type GameNotificationHudCompositeInterface_Access is access all org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package.GameNotificationHudCompositeInterface'Class;
   type GameNotificationHudCompositeInterface_Access_Array is array (Natural range <>) of GameNotificationHudCompositeInterface_Access;
   type GameNotificationHudCompositeInterface_Access_Array_Access is access all GameNotificationHudCompositeInterface_Access_Array;
   type GameNotificationHudCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GameNotificationHudCompositeInterface_Access_Array_Access;
   type GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access is access all GameNotificationHudCompositeInterface_Access_Array_Access_Array;
   type GameNotificationHudCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameNotificationHudCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameNotificationHudCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameNotificationHudCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameNotificationHudCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameNotificationHudCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in GameNotificationHudCompositeInterface_Access_Array_Object'Class then GameNotificationHudCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameNotificationHudCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameNotificationHudCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameNotificationHudCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameNotificationHudCompositeInterface_Access_Array_Access_Array_Object'Class then GameNotificationHudCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References;

with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;

package org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package is

   package Reference_Types is
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   use type GameNotificationHud_Access;
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   use type GameNotificationHud_Access_Array;
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   use type GameNotificationHud_Access_Array_Access;
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   use type GameNotificationHud_Access_Array_Access_Array;
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   use type GameNotificationHud_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GameNotificationHudCompositeInterface is interface;
   subtype GameNotificationHudCompositeInterface_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.GameNotificationHudCompositeInterface_Access;
   function "=" (Left, Right : GameNotificationHudCompositeInterface_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References."=";
   subtype GameNotificationHudCompositeInterface_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.GameNotificationHudCompositeInterface_Access_Array;
   function "=" (Left, Right : GameNotificationHudCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References."=";
   subtype GameNotificationHudCompositeInterface_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.GameNotificationHudCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHudCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References."=";
   function Java_Box (Value : GameNotificationHudCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GameNotificationHudCompositeInterface_Access_Array (Value : access Java_Object'Class) return GameNotificationHudCompositeInterface_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.Java_Unbox_GameNotificationHudCompositeInterface_Access_Array;
   subtype GameNotificationHudCompositeInterface_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.GameNotificationHudCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationHudCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References."=";
   subtype GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References."=";
   function Java_Box (Value : GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GameNotificationHudCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameNotificationHudCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package_References.Java_Unbox_GameNotificationHudCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameNotificationHudCompositeInterface (Value : GameNotificationHudCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getGameNotificationHud (This : in out GameNotificationHudCompositeInterface) return GameNotificationHud_Access is abstract;

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;


