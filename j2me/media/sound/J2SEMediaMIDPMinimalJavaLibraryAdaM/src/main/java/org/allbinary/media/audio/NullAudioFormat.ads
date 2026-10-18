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
--  with javax.sound.sampled.AudioFormat_Package; use javax.sound.sampled.AudioFormat_Package;

package org.allbinary.media.audio.NullAudioFormat_Package is


   type NullAudioFormat is tagged;
   type NullAudioFormat_Access is access all NullAudioFormat'Class;
   type NullAudioFormat_Access_Array is array (Natural range <>) of NullAudioFormat_Access;
   type NullAudioFormat_Access_Array_Access is access all NullAudioFormat_Access_Array;
   type NullAudioFormat_Access_Array_Access_Array is array (Natural range <>) of NullAudioFormat_Access_Array_Access;
   type NullAudioFormat_Access_Array_Access_Array_Access is access all NullAudioFormat_Access_Array_Access_Array;

   type NullAudioFormat is new Java_Object with null record;
   NULL_AUDIO_FORMAT : AudioFormat_Access;

   procedure Initialize (This : in out NullAudioFormat'Class);
   function Create return NullAudioFormat_Access;

end org.allbinary.media.audio.NullAudioFormat_Package;


