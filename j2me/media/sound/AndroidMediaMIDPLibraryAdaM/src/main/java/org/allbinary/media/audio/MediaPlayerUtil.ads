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

limited with org.allbinary.media.audio.MediaPlayerUtil_Package;
package org.allbinary.media.audio.MediaPlayerUtil_Package_References is
   type MediaPlayerUtil_Access is access all org.allbinary.media.audio.MediaPlayerUtil_Package.MediaPlayerUtil'Class;
   type MediaPlayerUtil_Access_Array is array (Natural range <>) of MediaPlayerUtil_Access;
   type MediaPlayerUtil_Access_Array_Access is access all MediaPlayerUtil_Access_Array;
   type MediaPlayerUtil_Access_Array_Access_Array is array (Natural range <>) of MediaPlayerUtil_Access_Array_Access;
   type MediaPlayerUtil_Access_Array_Access_Array_Access is access all MediaPlayerUtil_Access_Array_Access_Array;
end org.allbinary.media.audio.MediaPlayerUtil_Package_References;

with org.allbinary.media.audio.MediaPlayerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.media.audio.MediaPlayerUtil_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype MediaPlayerUtil_Access is org.allbinary.media.audio.MediaPlayerUtil_Package_References.MediaPlayerUtil_Access;
   function "=" (Left, Right : MediaPlayerUtil_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerUtil_Package_References."=";
   subtype MediaPlayerUtil_Access_Array is org.allbinary.media.audio.MediaPlayerUtil_Package_References.MediaPlayerUtil_Access_Array;
   function "=" (Left, Right : MediaPlayerUtil_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerUtil_Package_References."=";
   subtype MediaPlayerUtil_Access_Array_Access is org.allbinary.media.audio.MediaPlayerUtil_Package_References.MediaPlayerUtil_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerUtil_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerUtil_Package_References."=";
   subtype MediaPlayerUtil_Access_Array_Access_Array is org.allbinary.media.audio.MediaPlayerUtil_Package_References.MediaPlayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerUtil_Package_References."=";
   subtype MediaPlayerUtil_Access_Array_Access_Array_Access is org.allbinary.media.audio.MediaPlayerUtil_Package_References.MediaPlayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerUtil_Package_References."=";

   type MediaPlayerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : MediaPlayerUtil_Access;

   procedure Initialize (This : in out MediaPlayerUtil'Class);
   function Create return MediaPlayerUtil_Access;
   function getInstance return MediaPlayerUtil_Access;
   procedure waitForMediaPlayer (This : in out MediaPlayerUtil; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.MediaPlayerUtil_Package;


