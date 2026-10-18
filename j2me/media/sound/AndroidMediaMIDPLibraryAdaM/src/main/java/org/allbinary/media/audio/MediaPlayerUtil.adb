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



package body org.allbinary.media.audio.MediaPlayerUtil_Package is

   procedure Initialize_Fields (This : in out MediaPlayerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerUtil_Access is
      This : constant MediaPlayerUtil_Access := new MediaPlayerUtil;
   begin
      MediaPlayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MediaPlayerUtil_Access is
   begin
        return MediaPlayerUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure waitForMediaPlayer (This : in out MediaPlayerUtil; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mediaPlayer : constant MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
      MESSAGE : Unbounded_String;
      METHOD_NAME : Unbounded_String;
      index : Integer;
   begin
        MESSAGE := To_Unbounded_String ("Not Stopped Waiting");
        METHOD_NAME := To_Unbounded_String ("wait");
        index := 0;
        while (mediaPlayer.isPlaying) and then ((index) < (50)) loop
            This.logUtil.putF (MESSAGE, MediaPlayerUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            Java_Sleep (100);
            index := index + 1;
        end loop;
   end waitForMediaPlayer;

begin
   null;
   instance := MediaPlayerUtil_Package.Create;

end org.allbinary.media.audio.MediaPlayerUtil_Package;


