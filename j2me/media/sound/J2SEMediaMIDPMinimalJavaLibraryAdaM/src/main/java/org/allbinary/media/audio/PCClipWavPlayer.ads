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
limited with org.allbinary.media.audio.PCClipWavPlayer_Package;
package org.allbinary.media.audio.PCClipWavPlayer_Package_References is
   type PCClipWavPlayer_Access is access all org.allbinary.media.audio.PCClipWavPlayer_Package.PCClipWavPlayer'Class;
   type PCClipWavPlayer_Access_Array is array (Natural range <>) of PCClipWavPlayer_Access;
   type PCClipWavPlayer_Access_Array_Access is access all PCClipWavPlayer_Access_Array;
   type PCClipWavPlayer_Access_Array_Access_Array is array (Natural range <>) of PCClipWavPlayer_Access_Array_Access;
   type PCClipWavPlayer_Access_Array_Access_Array_Access is access all PCClipWavPlayer_Access_Array_Access_Array;
   type PCClipWavPlayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PCClipWavPlayer_Access_Array_Access;
   end record;
   function Java_Box (Value : PCClipWavPlayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PCClipWavPlayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PCClipWavPlayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PCClipWavPlayer_Access_Array_Access is (if Value /= null and then Value.all in PCClipWavPlayer_Access_Array_Object'Class then PCClipWavPlayer_Access_Array_Object'Class (Value.all).Value else null);
   type PCClipWavPlayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PCClipWavPlayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PCClipWavPlayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PCClipWavPlayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PCClipWavPlayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PCClipWavPlayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PCClipWavPlayer_Access_Array_Access_Array_Object'Class then PCClipWavPlayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.PCClipWavPlayer_Package_References;

with org.allbinary.media.audio.PCClipWavPlayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.media.Control_Package;
with javax.microedition.media.Control_Package_References;
--  with javax.sound.sampled.AudioInputStream_Package; use javax.sound.sampled.AudioInputStream_Package;
--  with javax.sound.sampled.AudioSystem_Package; use javax.sound.sampled.AudioSystem_Package;
--  with javax.sound.sampled.Clip_Package; use javax.sound.sampled.Clip_Package;
--  with javax.sound.sampled.FloatControl_Package; use javax.sound.sampled.FloatControl_Package;
--  with javax.sound.sampled.LineEvent_Package; use javax.sound.sampled.LineEvent_Package;
--  with javax.sound.sampled.LineListener_Package; use javax.sound.sampled.LineListener_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.audio.BasicPlayer_Package; use org.allbinary.media.audio.BasicPlayer_Package;

package org.allbinary.media.audio.PCClipWavPlayer_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Control_Package renames Standard.javax.microedition.media.Control_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype PCClipWavPlayer_Access is org.allbinary.media.audio.PCClipWavPlayer_Package_References.PCClipWavPlayer_Access;
   function "=" (Left, Right : PCClipWavPlayer_Access) return Boolean renames org.allbinary.media.audio.PCClipWavPlayer_Package_References."=";
   subtype PCClipWavPlayer_Access_Array is org.allbinary.media.audio.PCClipWavPlayer_Package_References.PCClipWavPlayer_Access_Array;
   function "=" (Left, Right : PCClipWavPlayer_Access_Array) return Boolean renames org.allbinary.media.audio.PCClipWavPlayer_Package_References."=";
   subtype PCClipWavPlayer_Access_Array_Access is org.allbinary.media.audio.PCClipWavPlayer_Package_References.PCClipWavPlayer_Access_Array_Access;
   function "=" (Left, Right : PCClipWavPlayer_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PCClipWavPlayer_Package_References."=";
   function Java_Box (Value : PCClipWavPlayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PCClipWavPlayer_Package_References.Java_Box;
   function Java_Unbox_PCClipWavPlayer_Access_Array (Value : access Java_Object'Class) return PCClipWavPlayer_Access_Array_Access renames org.allbinary.media.audio.PCClipWavPlayer_Package_References.Java_Unbox_PCClipWavPlayer_Access_Array;
   subtype PCClipWavPlayer_Access_Array_Access_Array is org.allbinary.media.audio.PCClipWavPlayer_Package_References.PCClipWavPlayer_Access_Array_Access_Array;
   function "=" (Left, Right : PCClipWavPlayer_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PCClipWavPlayer_Package_References."=";
   subtype PCClipWavPlayer_Access_Array_Access_Array_Access is org.allbinary.media.audio.PCClipWavPlayer_Package_References.PCClipWavPlayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PCClipWavPlayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PCClipWavPlayer_Package_References."=";
   function Java_Box (Value : PCClipWavPlayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.PCClipWavPlayer_Package_References.Java_Box;
   function Java_Unbox_PCClipWavPlayer_Access_Array_Access_Array (Value : access Java_Object'Class) return PCClipWavPlayer_Access_Array_Access_Array_Access renames org.allbinary.media.audio.PCClipWavPlayer_Package_References.Java_Unbox_PCClipWavPlayer_Access_Array_Access_Array;

   type PCClipWavPlayer is new BasicPlayer with record
      logUtil : LogUtil_Access;
      audioInputStream : AudioInputStream_Access;
      clip : Clip_Access;
   end record;

   procedure Initialize (This : in out PCClipWavPlayer'Class; inputStream_Param : access InputStream_Package.InputStream'Class);
   function Create (inputStream_Param : access InputStream_Package.InputStream'Class) return PCClipWavPlayer_Access;
   procedure close (This : in out PCClipWavPlayer);
   procedure close2 (This : in out PCClipWavPlayer);
   function getContentType (This : in out PCClipWavPlayer) return Unbounded_String;
   procedure start (This : in out PCClipWavPlayer);
   procedure start2 (This : in out PCClipWavPlayer);
   function create (This : in out PCClipWavPlayer; audioInputStream_Param : access AudioInputStream_Package.AudioInputStream'Class) return Clip_Access;
   procedure create (This : in out PCClipWavPlayer; audioInputStream_Param : access AudioInputStream_Package.AudioInputStream'Class);
   procedure stop (This : in out PCClipWavPlayer);
   procedure stop2 (This : in out PCClipWavPlayer);
   function getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out PCClipWavPlayer; controlType : Unbounded_String);
   function getControls (This : in out PCClipWavPlayer) return Control_Access_Array_Access;
   procedure setVolume (This : in out PCClipWavPlayer; leftVolume : Integer; rightVolume : Integer);
   function getVolume (This : in out PCClipWavPlayer) return Float;
   procedure setVolumeF (This : in out PCClipWavPlayer; volume : Float);
   function getDuration (This : in out PCClipWavPlayer) return Long_Long_Integer;
   procedure update (This : in out PCClipWavPlayer; event_Param : access LineEvent_Package.LineEvent'Class);

end org.allbinary.media.audio.PCClipWavPlayer_Package;


