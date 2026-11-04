-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.media.audio.music.MusicService_Package;
package org.allbinary.media.audio.music.MusicService_Package_References is
   type MusicService_Access is access all org.allbinary.media.audio.music.MusicService_Package.MusicService'Class;
   type MusicService_Access_Array is array (Natural range <>) of MusicService_Access;
   type MusicService_Access_Array_Access is access all MusicService_Access_Array;
   type MusicService_Access_Array_Access_Array is array (Natural range <>) of MusicService_Access_Array_Access;
   type MusicService_Access_Array_Access_Array_Access is access all MusicService_Access_Array_Access_Array;
end org.allbinary.media.audio.music.MusicService_Package_References;

with org.allbinary.media.audio.music.MusicService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.audio.music.BaseMusicService_Package; use org.allbinary.media.audio.music.BaseMusicService_Package;

package org.allbinary.media.audio.music.MusicService_Package is

   package BaseMusicService_Package renames Standard.org.allbinary.media.audio.music.BaseMusicService_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MusicService_Access is org.allbinary.media.audio.music.MusicService_Package_References.MusicService_Access;
   function "=" (Left, Right : MusicService_Access) return Boolean renames org.allbinary.media.audio.music.MusicService_Package_References."=";
   subtype MusicService_Access_Array is org.allbinary.media.audio.music.MusicService_Package_References.MusicService_Access_Array;
   function "=" (Left, Right : MusicService_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicService_Package_References."=";
   subtype MusicService_Access_Array_Access is org.allbinary.media.audio.music.MusicService_Package_References.MusicService_Access_Array_Access;
   function "=" (Left, Right : MusicService_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicService_Package_References."=";
   subtype MusicService_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicService_Package_References.MusicService_Access_Array_Access_Array;
   function "=" (Left, Right : MusicService_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicService_Package_References."=";
   subtype MusicService_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicService_Package_References.MusicService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MusicService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicService_Package_References."=";

   type MusicService is new BaseMusicService with null record;

   procedure Initialize (This : in out MusicService'Class);
   function Create return MusicService_Access;

end org.allbinary.media.audio.music.MusicService_Package;


