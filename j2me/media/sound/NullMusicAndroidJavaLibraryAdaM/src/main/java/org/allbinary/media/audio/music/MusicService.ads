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

   type MusicService is tagged;
   type MusicService_Access is access all MusicService'Class;
   type MusicService_Access_Array is array (Natural range <>) of MusicService_Access;
   type MusicService_Access_Array_Access is access all MusicService_Access_Array;

   type MusicService is new BaseMusicService with null record;

   procedure Initialize (This : in out MusicService'Class);
   function Create return MusicService_Access;

end org.allbinary.media.audio.music.MusicService_Package;


