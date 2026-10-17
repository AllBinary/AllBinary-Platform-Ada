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
--  with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.android.NullAndroidCanvas_Package; use org.allbinary.android.NullAndroidCanvas_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package NullAndroidCanvas_Package renames Standard.org.allbinary.android.NullAndroidCanvas_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AndroidMediaPlayerWrapper is tagged;
   type AndroidMediaPlayerWrapper_Access is access all AndroidMediaPlayerWrapper'Class;
   type AndroidMediaPlayerWrapper_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapper_Access;
   type AndroidMediaPlayerWrapper_Access_Array_Access is access all AndroidMediaPlayerWrapper_Access_Array;

   type AndroidMediaPlayerWrapper is new BasicPlayer with record
      logUtil : LogUtil_Access;
      mediaPlayer : MediaPlayer_Access;
   end record;
   NULL_ANDROID_MEDIA_PLAYER_WRAPPER : AndroidMediaPlayerWrapper_Access;

   procedure Initialize (This : in out AndroidMediaPlayerWrapper'Class; resource : Unbounded_String);
   function Create (resource : Unbounded_String) return AndroidMediaPlayerWrapper_Access;
   function createPlayerWrapper return AndroidMediaPlayerWrapper_Access;
   procedure setLoopCount (This : in out AndroidMediaPlayerWrapper; count : Integer);
   procedure addPlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener : PlayerListener_Access);
   procedure removePlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener : PlayerListener_Access);
   function getState (This : in out AndroidMediaPlayerWrapper) return Integer;
   procedure close (This : in out AndroidMediaPlayerWrapper);
   procedure start (This : in out AndroidMediaPlayerWrapper);
   procedure stop (This : in out AndroidMediaPlayerWrapper);
   procedure update (This : in out AndroidMediaPlayerWrapper; event : Unbounded_String);
   procedure setVolume (This : in out AndroidMediaPlayerWrapper; leftVolume : Integer; rightVolume : Integer);
   function getDuration (This : in out AndroidMediaPlayerWrapper) return Long_Long_Integer;
   procedure setMediaPlayer (This : in out AndroidMediaPlayerWrapper; mediaPlayer : MediaPlayer_Access);
   function getMediaPlayer (This : in out AndroidMediaPlayerWrapper) return MediaPlayer_Access;

end org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;


