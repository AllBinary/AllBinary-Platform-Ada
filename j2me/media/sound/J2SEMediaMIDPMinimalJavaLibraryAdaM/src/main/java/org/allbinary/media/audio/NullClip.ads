-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.sound.sampled.AudioFormat_Package; use javax.sound.sampled.AudioFormat_Package;
--  with javax.sound.sampled.AudioInputStream_Package; use javax.sound.sampled.AudioInputStream_Package;
--  with javax.sound.sampled.BooleanControl_Package; use javax.sound.sampled.BooleanControl_Package;
--  with javax.sound.sampled.Clip_Package; use javax.sound.sampled.Clip_Package;
--  with javax.sound.sampled.Control_Package; use javax.sound.sampled.Control_Package;
--  with javax.sound.sampled.Control.Type_Package; use javax.sound.sampled.Control.Type_Package;
--  with javax.sound.sampled.Line.Info_Package; use javax.sound.sampled.Line.Info_Package;
--  with javax.sound.sampled.LineListener_Package; use javax.sound.sampled.LineListener_Package;
--  with javax.sound.sampled.LineUnavailableException_Package; use javax.sound.sampled.LineUnavailableException_Package;

package org.allbinary.media.audio.NullClip_Package is


   type NullClip is tagged;
   type NullClip_Access is access all NullClip'Class;
   type NullClip_Access_Array is array (Natural range <>) of NullClip_Access;
   type NullClip_Access_Array_Access is access all NullClip_Access_Array;

   type NullClip is new Clip with null record;
   NULL_CONTROL : NullJ2SEControl_Access;

   procedure Initialize (This : in out NullClip'Class);
   function Create return NullClip_Access;
   procedure open (This : in out NullClip; format : AudioFormat_Access; data : Short_Short_Integer_Array_Access; offset : Integer; bufferSize : Integer);
   procedure open (This : in out NullClip; stream : AudioInputStream_Access);
   function getFrameLength (This : in out NullClip) return Integer;
   procedure getFrameLength (This : in out NullClip);
   function getMicrosecondLength (This : in out NullClip) return Long_Long_Integer;
   procedure getMicrosecondLength (This : in out NullClip);
   procedure setFramePosition (This : in out NullClip; frames : Integer);
   procedure setMicrosecondPosition (This : in out NullClip; microseconds : Long_Long_Integer);
   procedure setLoopPoints (This : in out NullClip; start : Integer; end_Id : Integer);
   procedure loop_Id (This : in out NullClip; count : Integer);
   procedure drain (This : in out NullClip);
   procedure flush (This : in out NullClip);
   procedure start (This : in out NullClip);
   procedure stop (This : in out NullClip);
   function isRunning (This : in out NullClip) return Boolean;
   procedure isRunning (This : in out NullClip);
   function isActive (This : in out NullClip) return Boolean;
   procedure isActive (This : in out NullClip);
   function getFormat (This : in out NullClip) return AudioFormat_Access;
   procedure getFormat (This : in out NullClip);
   function getBufferSize (This : in out NullClip) return Integer;
   procedure getBufferSize (This : in out NullClip);
   function available (This : in out NullClip) return Integer;
   procedure available (This : in out NullClip);
   function getFramePosition (This : in out NullClip) return Integer;
   procedure getFramePosition (This : in out NullClip);
   function getLongFramePosition (This : in out NullClip) return Long_Long_Integer;
   procedure getLongFramePosition (This : in out NullClip);
   function getMicrosecondPosition (This : in out NullClip) return Long_Long_Integer;
   procedure getMicrosecondPosition (This : in out NullClip);
   function getLevel (This : in out NullClip) return Float;
   procedure getLevel (This : in out NullClip);
   function getLineInfo (This : in out NullClip) return Info_Access;
   procedure getLineInfo (This : in out NullClip);
   procedure open (This : in out NullClip);
   procedure close (This : in out NullClip);
   function isOpen (This : in out NullClip) return Boolean;
   procedure isOpen (This : in out NullClip);
   function getControls (This : in out NullClip) return Control_Access_Array_Access;
   procedure getControls (This : in out NullClip);
   function isControlSupported (This : in out NullClip; control : Type_Access) return Boolean;
   procedure isControlSupported (This : in out NullClip; control : Type_Access);
   function getControl (This : in out NullClip; control : Type_Access) return Control_Access;
   procedure getControl (This : in out NullClip; control : Type_Access);
   procedure addLineListener (This : in out NullClip; listener : LineListener_Access);
   procedure removeLineListener (This : in out NullClip; listener : LineListener_Access);

end org.allbinary.media.audio.NullClip_Package;


