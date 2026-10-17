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


package body org.allbinary.media.audio.music.MusicManagerFactory_Package is

   procedure Initialize_Fields (This : in out MusicManagerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MusicManagerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MusicManagerFactory_Access is
      This : constant MusicManagerFactory_Access := new MusicManagerFactory;
   begin
      MusicManagerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createMusicManager (soundList_Param : access BasicArrayList'Class) return MusicManager_Access is
      soundList : BasicArrayList_Access := BasicArrayList_Access (soundList_Param);
   begin
        return MusicManager_Package.Create (MusicService_Package.MusicService'Tag, soundList);
   end createMusicManager;

   procedure createMusicManager (soundList_Param : access BasicArrayList'Class) is
      Java_Result : constant MusicManager_Access := createMusicManager (soundList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createMusicManager;

end org.allbinary.media.audio.music.MusicManagerFactory_Package;


