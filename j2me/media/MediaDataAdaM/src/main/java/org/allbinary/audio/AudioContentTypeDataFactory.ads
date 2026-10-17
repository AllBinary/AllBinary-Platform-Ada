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
with org.allbinary.audio.AudioContentTypeData_Package; use org.allbinary.audio.AudioContentTypeData_Package;

package org.allbinary.audio.AudioContentTypeDataFactory_Package is


   type AudioContentTypeDataFactory is tagged;
   type AudioContentTypeDataFactory_Access is access all AudioContentTypeDataFactory'Class;
   type AudioContentTypeDataFactory_Access_Array is array (Natural range <>) of AudioContentTypeDataFactory_Access;
   type AudioContentTypeDataFactory_Access_Array_Access is access all AudioContentTypeDataFactory_Access_Array;

   type AudioContentTypeDataFactory is new Java_Object with record
      MIME_AUDIO_TONE : AudioContentTypeData_Access;
      MIME_AUDIO_AMR : AudioContentTypeData_Access;
      MIME_AUDIO_AMR_WB : AudioContentTypeData_Access;
      MIME_AUDIO_WAV : AudioContentTypeData_Access;
      MIME_AUDIO_MIDI : AudioContentTypeData_Access;
      MIME_AUDIO_SP_MIDI : AudioContentTypeData_Access;
   end record;
   instance : AudioContentTypeDataFactory_Access;

   procedure Initialize (This : in out AudioContentTypeDataFactory'Class);
   function Create return AudioContentTypeDataFactory_Access;
   function getInstance return AudioContentTypeDataFactory_Access;

end org.allbinary.audio.AudioContentTypeDataFactory_Package;


