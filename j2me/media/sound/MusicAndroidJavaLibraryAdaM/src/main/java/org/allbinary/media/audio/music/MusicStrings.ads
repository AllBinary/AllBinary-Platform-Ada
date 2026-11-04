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

limited with org.allbinary.media.audio.music.MusicStrings_Package;
package org.allbinary.media.audio.music.MusicStrings_Package_References is
   type MusicStrings_Access is access all org.allbinary.media.audio.music.MusicStrings_Package.MusicStrings'Class;
   type MusicStrings_Access_Array is array (Natural range <>) of MusicStrings_Access;
   type MusicStrings_Access_Array_Access is access all MusicStrings_Access_Array;
   type MusicStrings_Access_Array_Access_Array is array (Natural range <>) of MusicStrings_Access_Array_Access;
   type MusicStrings_Access_Array_Access_Array_Access is access all MusicStrings_Access_Array_Access_Array;
end org.allbinary.media.audio.music.MusicStrings_Package_References;

with org.allbinary.media.audio.music.MusicStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.audio.music.MusicStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MusicStrings_Access is org.allbinary.media.audio.music.MusicStrings_Package_References.MusicStrings_Access;
   function "=" (Left, Right : MusicStrings_Access) return Boolean renames org.allbinary.media.audio.music.MusicStrings_Package_References."=";
   subtype MusicStrings_Access_Array is org.allbinary.media.audio.music.MusicStrings_Package_References.MusicStrings_Access_Array;
   function "=" (Left, Right : MusicStrings_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicStrings_Package_References."=";
   subtype MusicStrings_Access_Array_Access is org.allbinary.media.audio.music.MusicStrings_Package_References.MusicStrings_Access_Array_Access;
   function "=" (Left, Right : MusicStrings_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicStrings_Package_References."=";
   subtype MusicStrings_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicStrings_Package_References.MusicStrings_Access_Array_Access_Array;
   function "=" (Left, Right : MusicStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicStrings_Package_References."=";
   subtype MusicStrings_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicStrings_Package_References.MusicStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MusicStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicStrings_Package_References."=";

   type MusicStrings is new Java_Object with record
      SONG_EXTRA : Unbounded_String;
      LEFT_VOLUME : Unbounded_String;
      RIGHT_VOLUME : Unbounded_String;
   end record;
   instance : MusicStrings_Access;

   procedure Initialize (This : in out MusicStrings'Class);
   function Create return MusicStrings_Access;
   function getInstance return MusicStrings_Access;

end org.allbinary.media.audio.music.MusicStrings_Package;


