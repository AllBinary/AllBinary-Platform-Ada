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
limited with org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package;
package org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References is
   type HudTimer_Access is access all org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package.HudTimer'Class;
   type HudTimer_Access_Array is array (Natural range <>) of HudTimer_Access;
   type HudTimer_Access_Array_Access is access all HudTimer_Access_Array;
   type HudTimer_Access_Array_Access_Array is array (Natural range <>) of HudTimer_Access_Array_Access;
   type HudTimer_Access_Array_Access_Array_Access is access all HudTimer_Access_Array_Access_Array;
   type HudTimer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HudTimer_Access_Array_Access;
   end record;
   function Java_Box (Value : HudTimer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HudTimer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HudTimer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HudTimer_Access_Array_Access is (if Value /= null and then Value.all in HudTimer_Access_Array_Object'Class then HudTimer_Access_Array_Object'Class (Value.all).Value else null);
   type HudTimer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HudTimer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HudTimer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HudTimer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HudTimer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HudTimer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HudTimer_Access_Array_Access_Array_Object'Class then HudTimer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References;

with org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;

package org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package is

   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package Reference_Types is
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   use type GameTickTimeDelayHelper_Access;
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array;
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   use type GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HudTimer_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access;
   function "=" (Left, Right : HudTimer_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array;
   function "=" (Left, Right : HudTimer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access;
   function "=" (Left, Right : HudTimer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   function Java_Box (Value : HudTimer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.Java_Box;
   function Java_Unbox_HudTimer_Access_Array (Value : access Java_Object'Class) return HudTimer_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.Java_Unbox_HudTimer_Access_Array;
   subtype HudTimer_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access_Array;
   function "=" (Left, Right : HudTimer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   subtype HudTimer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.HudTimer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HudTimer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References."=";
   function Java_Box (Value : HudTimer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.Java_Box;
   function Java_Unbox_HudTimer_Access_Array_Access_Array (Value : access Java_Object'Class) return HudTimer_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package_References.Java_Unbox_HudTimer_Access_Array_Access_Array;

   type HudTimer is new Java_Object with record
      startTime : Long_Long_Integer;
      hundredthTime : Long_Long_Integer;
      maxTime : Long_Long_Integer;
      modifier : Long_Long_Integer;
      hundrethsString : Character_Array_Access;
      totalDigits : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      MAX : Character_Array_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out HudTimer'Class; maxTime : Integer);
   function Create (maxTime : Integer) return HudTimer_Access;
   procedure start (This : in out HudTimer);
   function get (This : in out HudTimer) return Long_Long_Integer;
   procedure update (This : in out HudTimer);
   procedure reduce (This : in out HudTimer; value : Integer);
   procedure add (This : in out HudTimer; value : Integer);
   function getTimeChars (This : in out HudTimer) return Character_Array_Access;
   function getCurrentTotalDigits (This : in out HudTimer) return Integer;

end org.allbinary.game.ag.layer.hud.basic.time.HudTimer_Package;


