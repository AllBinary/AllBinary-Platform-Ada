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
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
package org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References is
   type AndroidMediaPlayerWrapper_Access is access all org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class;
   type AndroidMediaPlayerWrapper_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapper_Access;
   type AndroidMediaPlayerWrapper_Access_Array_Access is access all AndroidMediaPlayerWrapper_Access_Array;
   type AndroidMediaPlayerWrapper_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapper_Access_Array_Access;
   type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is access all AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   type AndroidMediaPlayerWrapper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerWrapper_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerWrapper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerWrapper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerWrapper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerWrapper_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerWrapper_Access_Array_Object'Class then AndroidMediaPlayerWrapper_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerWrapper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerWrapper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerWrapper_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerWrapper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package is

   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
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


   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapper_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References."=";
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerWrapper_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References."=";
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapper_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerWrapper_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerWrapper_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerWrapper_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.Java_Unbox_AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References."=";
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerWrapper_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.Java_Unbox_AndroidMediaPlayerWrapper_Access_Array_Access_Array;

   type AndroidMediaPlayerWrapper is new BasicPlayer with record
      logUtil : LogUtil_Access;
      mediaPlayer : MediaPlayer_Access;
   end record;
   NULL_ANDROID_MEDIA_PLAYER_WRAPPER : AndroidMediaPlayerWrapper_Access;

   procedure Initialize (This : in out AndroidMediaPlayerWrapper'Class; resource : Unbounded_String);
   function Create (resource : Unbounded_String) return AndroidMediaPlayerWrapper_Access;
   function createPlayerWrapper return AndroidMediaPlayerWrapper_Access;
   procedure setLoopCount (This : in out AndroidMediaPlayerWrapper; count : Integer);
   procedure addPlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   procedure removePlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   function getState (This : in out AndroidMediaPlayerWrapper) return Integer;
   procedure close (This : in out AndroidMediaPlayerWrapper);
   procedure start (This : in out AndroidMediaPlayerWrapper);
   procedure stop (This : in out AndroidMediaPlayerWrapper);
   procedure update (This : in out AndroidMediaPlayerWrapper; event : Unbounded_String);
   procedure setVolume (This : in out AndroidMediaPlayerWrapper; leftVolume : Integer; rightVolume : Integer);
   function getDuration (This : in out AndroidMediaPlayerWrapper) return Long_Long_Integer;
   procedure setMediaPlayer (This : in out AndroidMediaPlayerWrapper; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class);
   function getMediaPlayer (This : in out AndroidMediaPlayerWrapper) return MediaPlayer_Access;

end org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;


