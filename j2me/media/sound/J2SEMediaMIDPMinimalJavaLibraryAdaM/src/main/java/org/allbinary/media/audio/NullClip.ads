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
with org.allbinary.media.audio.NullJ2SEControl_Package; use org.allbinary.media.audio.NullJ2SEControl_Package;

package org.allbinary.media.audio.NullClip_Package is


   type NullClip is tagged;
   type NullClip_Access is access all NullClip'Class;
   type NullClip_Access_Array is array (Natural range <>) of NullClip_Access;
   type NullClip_Access_Array_Access is access all NullClip_Access_Array;
   type NullClip_Access_Array_Access_Array is array (Natural range <>) of NullClip_Access_Array_Access;
   type NullClip_Access_Array_Access_Array_Access is access all NullClip_Access_Array_Access_Array;

   type NullClip is new Java_Object with null record;
   NULL_CONTROL : NullJ2SEControl_Access;

   procedure Initialize (This : in out NullClip'Class);
   function Create return NullClip_Access;
   procedure open (This : in out NullClip; format_Param : access AudioFormat_Package.AudioFormat'Class; data : Short_Short_Integer_Array_Access; offset : Integer; bufferSize : Integer);
   procedure open (This : in out NullClip; stream_Param : access AudioInputStream_Package.AudioInputStream'Class);
   function getFrameLength (This : in out NullClip) return Integer;
   function getMicrosecondLength (This : in out NullClip) return Long_Long_Integer;
   procedure setFramePosition (This : in out NullClip; frames : Integer);
   procedure setMicrosecondPosition (This : in out NullClip; microseconds : Long_Long_Integer);
   procedure setLoopPoints (This : in out NullClip; start : Integer; end_Id : Integer);
   procedure loop_Id (This : in out NullClip; count : Integer);
   procedure drain (This : in out NullClip);
   procedure flush (This : in out NullClip);
   procedure start (This : in out NullClip);
   procedure stop (This : in out NullClip);
   function isRunning (This : in out NullClip) return Boolean;
   function isActive (This : in out NullClip) return Boolean;
   function getFormat (This : in out NullClip) return AudioFormat_Access;
   function getBufferSize (This : in out NullClip) return Integer;
   function available (This : in out NullClip) return Integer;
   function getFramePosition (This : in out NullClip) return Integer;
   function getLongFramePosition (This : in out NullClip) return Long_Long_Integer;
   function getMicrosecondPosition (This : in out NullClip) return Long_Long_Integer;
   function getLevel (This : in out NullClip) return Float;
   function getLineInfo (This : in out NullClip) return Info_Access;
   procedure open (This : in out NullClip);
   procedure close (This : in out NullClip);
   function isOpen (This : in out NullClip) return Boolean;
   function getControls (This : in out NullClip) return Control_Access_Array_Access;
   function isControlSupported (This : in out NullClip; control_Param : access Type_Package.Type'Class) return Boolean;
   procedure isControlSupported (This : in out NullClip; control_Param : access Type_Package.Type'Class);
   function getControl (This : in out NullClip; control_Param : access Type_Package.Type'Class) return Control_Access;
   procedure getControl (This : in out NullClip; control_Param : access Type_Package.Type'Class);
   procedure addLineListener (This : in out NullClip; listener_Param : access LineListener_Package.LineListener'Class);
   procedure removeLineListener (This : in out NullClip; listener_Param : access LineListener_Package.LineListener'Class);

end org.allbinary.media.audio.NullClip_Package;


