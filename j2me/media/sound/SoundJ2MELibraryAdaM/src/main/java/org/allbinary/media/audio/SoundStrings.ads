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

package org.allbinary.media.audio.SoundStrings_Package is


   type SoundStrings is tagged;
   type SoundStrings_Access is access all SoundStrings'Class;
   type SoundStrings_Access_Array is array (Natural range <>) of SoundStrings_Access;
   type SoundStrings_Access_Array_Access is access all SoundStrings_Access_Array;

   type SoundStrings is new Java_Object with record
      STOP_ALL : Unbounded_String;
      CLOSE_ALL : Unbounded_String;
      SOUND : Unbounded_String;
      INIT_SOUND : Unbounded_String;
      STOPPING_SOUND : Unbounded_String;
      CLOSING_SOUND : Unbounded_String;
   end record;
   instance : SoundStrings_Access;

   procedure Initialize (This : in out SoundStrings'Class);
   function Create return SoundStrings_Access;
   function getInstance return SoundStrings_Access;
   procedure getInstance;

end org.allbinary.media.audio.SoundStrings_Package;


