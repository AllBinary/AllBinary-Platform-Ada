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



package body org.allbinary.media.audio.music.MusicService_Package is

   procedure Initialize_Fields (This : in out MusicService'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MusicService'Class) is
   begin
      BaseMusicService_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return MusicService_Access is
      This : constant MusicService_Access := new MusicService;
   begin
      MusicService_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.media.audio.music.MusicService_Package;


