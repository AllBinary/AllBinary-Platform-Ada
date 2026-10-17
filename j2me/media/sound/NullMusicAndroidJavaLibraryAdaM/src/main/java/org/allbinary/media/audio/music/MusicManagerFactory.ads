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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.audio.music.MusicManager_Package; use org.allbinary.media.audio.music.MusicManager_Package;
with org.allbinary.media.audio.music.MusicService_Package; use org.allbinary.media.audio.music.MusicService_Package;

package org.allbinary.media.audio.music.MusicManagerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type MusicManagerFactory is tagged;
   type MusicManagerFactory_Access is access all MusicManagerFactory'Class;
   type MusicManagerFactory_Access_Array is array (Natural range <>) of MusicManagerFactory_Access;
   type MusicManagerFactory_Access_Array_Access is access all MusicManagerFactory_Access_Array;

   type MusicManagerFactory is new Java_Object with null record;

   procedure Initialize (This : in out MusicManagerFactory'Class);
   function Create return MusicManagerFactory_Access;
   function createMusicManager (soundList : BasicArrayList_Access) return MusicManager_Access;
   procedure createMusicManager (soundList : BasicArrayList_Access);

end org.allbinary.media.audio.music.MusicManagerFactory_Package;


