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
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.media.audio.MediaPlayerUtil_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type MediaPlayerUtil is tagged;
   type MediaPlayerUtil_Access is access all MediaPlayerUtil'Class;
   type MediaPlayerUtil_Access_Array is array (Natural range <>) of MediaPlayerUtil_Access;
   type MediaPlayerUtil_Access_Array_Access is access all MediaPlayerUtil_Access_Array;

   type MediaPlayerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : MediaPlayerUtil_Access;

   procedure Initialize (This : in out MediaPlayerUtil'Class);
   function Create return MediaPlayerUtil_Access;
   function getInstance return MediaPlayerUtil_Access;
   procedure waitForMediaPlayer (This : in out MediaPlayerUtil; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.MediaPlayerUtil_Package;


