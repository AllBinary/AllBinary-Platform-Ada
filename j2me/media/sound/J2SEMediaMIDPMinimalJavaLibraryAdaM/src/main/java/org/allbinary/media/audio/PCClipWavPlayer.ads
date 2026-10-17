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
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;
--  with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
--  with javax.sound.sampled.AudioInputStream_Package; use javax.sound.sampled.AudioInputStream_Package;
--  with javax.sound.sampled.AudioSystem_Package; use javax.sound.sampled.AudioSystem_Package;
--  with javax.sound.sampled.Clip_Package; use javax.sound.sampled.Clip_Package;
--  with javax.sound.sampled.FloatControl_Package; use javax.sound.sampled.FloatControl_Package;
--  with javax.sound.sampled.LineEvent_Package; use javax.sound.sampled.LineEvent_Package;
--  with javax.sound.sampled.LineListener_Package; use javax.sound.sampled.LineListener_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.MusicThreadPool_Package; use org.allbinary.thread.MusicThreadPool_Package;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.PCClipWavPlayer_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package MusicThreadPool_Package renames Standard.org.allbinary.thread.MusicThreadPool_Package;

   type PCClipWavPlayer is tagged;
   type PCClipWavPlayer_Access is access all PCClipWavPlayer'Class;
   type PCClipWavPlayer_Access_Array is array (Natural range <>) of PCClipWavPlayer_Access;
   type PCClipWavPlayer_Access_Array_Access is access all PCClipWavPlayer_Access_Array;

   type PCClipWavPlayer is new BasicPlayer and LineListener with record
      logUtil : LogUtil_Access;
      audioInputStream : AudioInputStream_Access;
      clip : Clip_Access;
   end record;

   procedure Initialize (This : in out PCClipWavPlayer'Class; inputStream : InputStream_Access);
   function Create (inputStream : InputStream_Access) return PCClipWavPlayer_Access;
   procedure close (This : in out PCClipWavPlayer);
   procedure close2 (This : in out PCClipWavPlayer);
   function getContentType (This : in out PCClipWavPlayer) return Unbounded_String;
   procedure getContentType (This : in out PCClipWavPlayer);
   procedure start (This : in out PCClipWavPlayer);
   procedure start2 (This : in out PCClipWavPlayer);
   function create (This : in out PCClipWavPlayer; audioInputStream : AudioInputStream_Access) return Clip_Access;
   procedure create (This : in out PCClipWavPlayer; audioInputStream : AudioInputStream_Access);
   procedure stop (This : in out PCClipWavPlayer);
   procedure stop2 (This : in out PCClipWavPlayer);
   function getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String);
   function getControls (This : in out PCClipWavPlayer) return Control_Access_Array_Access;
   procedure getControls (This : in out PCClipWavPlayer);
   procedure setVolume (This : in out PCClipWavPlayer; leftVolume : Integer; rightVolume : Integer);
   function getVolume (This : in out PCClipWavPlayer) return Float;
   procedure getVolume (This : in out PCClipWavPlayer);
   procedure setVolumeF (This : in out PCClipWavPlayer; volume : Float);
   function getDuration (This : in out PCClipWavPlayer) return Long_Long_Integer;
   procedure getDuration (This : in out PCClipWavPlayer);
   procedure update (This : in out PCClipWavPlayer; event : LineEvent_Access);

end org.allbinary.media.audio.PCClipWavPlayer_Package;


