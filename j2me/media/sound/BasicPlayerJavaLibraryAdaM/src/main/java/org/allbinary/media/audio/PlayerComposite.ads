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
limited with org.allbinary.media.audio.PlayerComposite_Package;
package org.allbinary.media.audio.PlayerComposite_Package_References is
   type PlayerComposite_Access is access all org.allbinary.media.audio.PlayerComposite_Package.PlayerComposite'Class;
   type PlayerComposite_Access_Array is array (Natural range <>) of PlayerComposite_Access;
   type PlayerComposite_Access_Array_Access is access all PlayerComposite_Access_Array;
   type PlayerComposite_Access_Array_Access_Array is array (Natural range <>) of PlayerComposite_Access_Array_Access;
   type PlayerComposite_Access_Array_Access_Array_Access is access all PlayerComposite_Access_Array_Access_Array;
   type PlayerComposite_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerComposite_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerComposite_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerComposite_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerComposite_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerComposite_Access_Array_Access is (if Value /= null and then Value.all in PlayerComposite_Access_Array_Object'Class then PlayerComposite_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerComposite_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerComposite_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerComposite_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerComposite_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerComposite_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerComposite_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerComposite_Access_Array_Access_Array_Object'Class then PlayerComposite_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.PlayerComposite_Package_References;

with org.allbinary.media.audio.PlayerComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.Control_Package;
with javax.microedition.media.Control_Package_References;
with javax.microedition.media.Controllable_Package; use javax.microedition.media.Controllable_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
limited with javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.media.audio.PlayerComposite_Package is

   package Control_Package renames Standard.javax.microedition.media.Control_Package;
   package Controllable_Package renames Standard.javax.microedition.media.Controllable_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype Control_Access is javax.microedition.media.Control_Package_References.Control_Access;
   use type Control_Access;
   subtype Control_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array;
   use type Control_Access_Array;
   subtype Control_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access;
   use type Control_Access_Array_Access;
   subtype Control_Access_Array_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array;
   use type Control_Access_Array_Access_Array;
   subtype Control_Access_Array_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array_Access;
   use type Control_Access_Array_Access_Array_Access;
   subtype PlayerListener_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access;
   use type PlayerListener_Access;
   subtype PlayerListener_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array;
   use type PlayerListener_Access_Array;
   subtype PlayerListener_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access;
   use type PlayerListener_Access_Array_Access;
   subtype PlayerListener_Access_Array_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array;
   use type PlayerListener_Access_Array_Access_Array;
   subtype PlayerListener_Access_Array_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array_Access;
   use type PlayerListener_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlayerComposite_Access is org.allbinary.media.audio.PlayerComposite_Package_References.PlayerComposite_Access;
   function "=" (Left, Right : PlayerComposite_Access) return Boolean renames org.allbinary.media.audio.PlayerComposite_Package_References."=";
   subtype PlayerComposite_Access_Array is org.allbinary.media.audio.PlayerComposite_Package_References.PlayerComposite_Access_Array;
   function "=" (Left, Right : PlayerComposite_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerComposite_Package_References."=";
   subtype PlayerComposite_Access_Array_Access is org.allbinary.media.audio.PlayerComposite_Package_References.PlayerComposite_Access_Array_Access;
   function "=" (Left, Right : PlayerComposite_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerComposite_Package_References."=";
   function Java_Box (Value : PlayerComposite_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PlayerComposite_Package_References.Java_Box;
   function Java_Unbox_PlayerComposite_Access_Array (Value : access Java_Object'Class) return PlayerComposite_Access_Array_Access renames org.allbinary.media.audio.PlayerComposite_Package_References.Java_Unbox_PlayerComposite_Access_Array;
   subtype PlayerComposite_Access_Array_Access_Array is org.allbinary.media.audio.PlayerComposite_Package_References.PlayerComposite_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerComposite_Package_References."=";
   subtype PlayerComposite_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerComposite_Package_References.PlayerComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerComposite_Package_References."=";
   function Java_Box (Value : PlayerComposite_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PlayerComposite_Package_References.Java_Box;
   function Java_Unbox_PlayerComposite_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerComposite_Access_Array_Access_Array_Access renames org.allbinary.media.audio.PlayerComposite_Package_References.Java_Unbox_PlayerComposite_Access_Array_Access_Array;

   type PlayerComposite is new Java_Object and Controllable and Player with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      player : Player_Access;
      timeElapsedHelper : TimeDelayHelper_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out PlayerComposite'Class; player_Param : access Player_Package.Player'Class; repeatTime : Integer);
   function Create (player_Param : access Player_Package.Player'Class; repeatTime : Integer) return PlayerComposite_Access;
   procedure addPlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   procedure removePlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   procedure close (This : in out PlayerComposite);
   procedure deallocate (This : in out PlayerComposite);
   function getContentType (This : in out PlayerComposite) return Unbounded_String;
   function getDuration (This : in out PlayerComposite) return Long_Long_Integer;
   function getMediaTime (This : in out PlayerComposite) return Long_Long_Integer;
   procedure prefetch (This : in out PlayerComposite);
   procedure realize (This : in out PlayerComposite);
   function getState (This : in out PlayerComposite) return Integer;
   procedure setLoopCount (This : in out PlayerComposite; count : Integer);
   function setMediaTime (This : in out PlayerComposite; now : Long_Long_Integer) return Long_Long_Integer;
   procedure setMediaTime (This : in out PlayerComposite; now : Long_Long_Integer);
   procedure start (This : in out PlayerComposite);
   procedure stop (This : in out PlayerComposite);
   function getControl (This : in out PlayerComposite; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out PlayerComposite; controlType : Unbounded_String);
   function getControls (This : in out PlayerComposite) return Control_Access_Array_Access;
   procedure setVolume (This : in out PlayerComposite; leftVolume : Integer; rightVolume : Integer);
   function getPlayerP (This : in out PlayerComposite) return Player_Access;

end org.allbinary.media.audio.PlayerComposite_Package;


