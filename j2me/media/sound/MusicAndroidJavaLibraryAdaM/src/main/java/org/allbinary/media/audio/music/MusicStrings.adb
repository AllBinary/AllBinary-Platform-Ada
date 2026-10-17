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


package body org.allbinary.media.audio.music.MusicStrings_Package is

   procedure Initialize_Fields (This : in out MusicStrings'Class) is
   begin
      null;
      This.SONG_EXTRA := To_Unbounded_String ("SONG");
      This.LEFT_VOLUME := To_Unbounded_String ("LEFT_VOLUME");
      This.RIGHT_VOLUME := To_Unbounded_String ("RIGHT_VOLUME");
   end Initialize_Fields;

   procedure Initialize (This : in out MusicStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MusicStrings_Access is
      This : constant MusicStrings_Access := new MusicStrings;
   begin
      MusicStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MusicStrings_Access is
   begin
        return MusicStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := MusicStrings_Package.Create;

end org.allbinary.media.audio.music.MusicStrings_Package;


