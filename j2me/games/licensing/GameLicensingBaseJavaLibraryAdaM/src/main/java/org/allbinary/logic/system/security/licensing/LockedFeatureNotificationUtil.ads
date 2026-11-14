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
limited with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
package org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References is
   type LockedFeatureNotificationUtil_Access is access all org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package.LockedFeatureNotificationUtil'Class;
   type LockedFeatureNotificationUtil_Access_Array is array (Natural range <>) of LockedFeatureNotificationUtil_Access;
   type LockedFeatureNotificationUtil_Access_Array_Access is access all LockedFeatureNotificationUtil_Access_Array;
   type LockedFeatureNotificationUtil_Access_Array_Access_Array is array (Natural range <>) of LockedFeatureNotificationUtil_Access_Array_Access;
   type LockedFeatureNotificationUtil_Access_Array_Access_Array_Access is access all LockedFeatureNotificationUtil_Access_Array_Access_Array;
   type LockedFeatureNotificationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedFeatureNotificationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedFeatureNotificationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedFeatureNotificationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedFeatureNotificationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedFeatureNotificationUtil_Access_Array_Access is (if Value /= null and then Value.all in LockedFeatureNotificationUtil_Access_Array_Object'Class then LockedFeatureNotificationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LockedFeatureNotificationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LockedFeatureNotificationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LockedFeatureNotificationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LockedFeatureNotificationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LockedFeatureNotificationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LockedFeatureNotificationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LockedFeatureNotificationUtil_Access_Array_Access_Array_Object'Class then LockedFeatureNotificationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References;

with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References;
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

package org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package is

   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype LockedFeatureNotificationUtil_Access is org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.LockedFeatureNotificationUtil_Access;
   function "=" (Left, Right : LockedFeatureNotificationUtil_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References."=";
   subtype LockedFeatureNotificationUtil_Access_Array is org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.LockedFeatureNotificationUtil_Access_Array;
   function "=" (Left, Right : LockedFeatureNotificationUtil_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References."=";
   subtype LockedFeatureNotificationUtil_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.LockedFeatureNotificationUtil_Access_Array_Access;
   function "=" (Left, Right : LockedFeatureNotificationUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References."=";
   function Java_Box (Value : LockedFeatureNotificationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.Java_Box;
   function Java_Unbox_LockedFeatureNotificationUtil_Access_Array (Value : access Java_Object'Class) return LockedFeatureNotificationUtil_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.Java_Unbox_LockedFeatureNotificationUtil_Access_Array;
   subtype LockedFeatureNotificationUtil_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.LockedFeatureNotificationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LockedFeatureNotificationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References."=";
   subtype LockedFeatureNotificationUtil_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.LockedFeatureNotificationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockedFeatureNotificationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References."=";
   function Java_Box (Value : LockedFeatureNotificationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.Java_Box;
   function Java_Unbox_LockedFeatureNotificationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LockedFeatureNotificationUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package_References.Java_Unbox_LockedFeatureNotificationUtil_Access_Array_Access_Array;

   type LockedFeatureNotificationUtil is new Java_Object with record
      gameNotificationEvent : GameNotificationEvent_Access;
   end record;
   instance : LockedFeatureNotificationUtil_Access;

   procedure Initialize (This : in out LockedFeatureNotificationUtil'Class);
   function Create return LockedFeatureNotificationUtil_Access;
   function getInstance return LockedFeatureNotificationUtil_Access;
   procedure fire (This : in out LockedFeatureNotificationUtil);
   procedure fireWithColor (This : in out LockedFeatureNotificationUtil; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;


