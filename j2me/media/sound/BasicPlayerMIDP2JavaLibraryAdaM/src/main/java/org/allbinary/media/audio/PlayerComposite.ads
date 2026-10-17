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
--  with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;
--  with javax.microedition.media.Controllable_Package; use javax.microedition.media.Controllable_Package;
--  with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
--  with javax.microedition.media.TimeBase_Package; use javax.microedition.media.TimeBase_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.audio.TimeBaseInterface_Package; use org.allbinary.media.audio.TimeBaseInterface_Package;
with org.allbinary.media.audio.Controllable2_Package; use org.allbinary.media.audio.Controllable2_Package;

package org.allbinary.media.audio.PlayerComposite_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type PlayerComposite is tagged;
   type PlayerComposite_Access is access all PlayerComposite'Class;
   type PlayerComposite_Access_Array is array (Natural range <>) of PlayerComposite_Access;
   type PlayerComposite_Access_Array_Access is access all PlayerComposite_Access_Array;

   type PlayerComposite is new Controllable and Player with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      player : Player_Access;
      timeElapsedHelper : TimeDelayHelper_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out PlayerComposite'Class; player_Param : access Player'Class; repeatTime : Integer);
   function Create (player_Param : access Player'Class; repeatTime : Integer) return PlayerComposite_Access;
   procedure addPlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener'Class);
   procedure removePlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener'Class);
   procedure close (This : in out PlayerComposite);
   procedure deallocate (This : in out PlayerComposite);
   function getContentType (This : in out PlayerComposite) return Unbounded_String;
   function getDuration (This : in out PlayerComposite) return Long_Long_Integer;
   function getMediaTime (This : in out PlayerComposite) return Long_Long_Integer;
   function getTimeBase (This : in out PlayerComposite) return TimeBase_Access;
   procedure setTimeBase (This : in out PlayerComposite; timeBase_Param : access TimeBase'Class);
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


