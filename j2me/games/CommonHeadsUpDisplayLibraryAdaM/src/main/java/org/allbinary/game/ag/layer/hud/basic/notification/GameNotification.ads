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

limited with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
package org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References is
   type GameNotification_Access is access all org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package.GameNotification'Class;
   type GameNotification_Access_Array is array (Natural range <>) of GameNotification_Access;
   type GameNotification_Access_Array_Access is access all GameNotification_Access_Array;
   type GameNotification_Access_Array_Access_Array is array (Natural range <>) of GameNotification_Access_Array_Access;
   type GameNotification_Access_Array_Access_Array_Access is access all GameNotification_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References;

with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package is

   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameNotification_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access;
   function "=" (Left, Right : GameNotification_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";

   type GameNotification is new Java_Object with record
      stringList : BasicArrayList_Access;
      timeList : BasicArrayList_Access;
      colorList : BasicArrayList_Access;
   end record;
   NULL_GAME_NOTIFICATION_EVENT : GameNotificationEvent_Access;

   procedure Initialize (This : in out GameNotification'Class);
   function Create return GameNotification_Access;
   procedure add (This : in out GameNotification; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure clear (This : in out GameNotification);
   function getSize (This : in out GameNotification) return Integer;

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;


