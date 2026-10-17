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


package body org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package is

   procedure Initialize_Fields (This : in out AndroidMediaPlayerWrapper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.mediaPlayer := NullAndroidCanvas_Package.NULL_MEDIA_PLAYER;
   end Initialize_Fields;


   function createPlayerWrapper return AndroidMediaPlayerWrapper_Access is
   begin
        begin
            return AndroidMediaPlayerWrapper_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end createPlayerWrapper;

   procedure Initialize (This : in out AndroidMediaPlayerWrapper'Class; resource : Unbounded_String) is
      resourceUtil : ResourceUtil_Access;
      mediaPlayer : MediaPlayer_Access;
   begin
      BasicPlayer_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            if (resource) = (StringUtil_Package.getInstance.EMPTY_STRING) then
                null;
            else
                resourceUtil := ResourceUtil_Package.getInstance;
                mediaPlayer := MediaPlayer_Package.create (resourceUtil.getContext, resourceUtil.getResourceId (resource).intValue);
                if (mediaPlayer) = (null) then
                    Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("Failed to create media player for: ")).append (resource).append (To_Unbounded_String (" with id: ")).append (resourceUtil.getResourceId (resource).toString).toString));
                end if;
                This.setMediaPlayer (mediaPlayer);
                This.mediaPlayer.setLooping (False);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (Java_Image (This.commonStrings.EXCEPTION_LABEL) & resource, AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (resource : Unbounded_String) return AndroidMediaPlayerWrapper_Access is
      This : constant AndroidMediaPlayerWrapper_Access := new AndroidMediaPlayerWrapper;
   begin
      AndroidMediaPlayerWrapper_Package.Initialize (This.all, resource);
      return This;
   end Create;

   procedure setLoopCount (This : in out AndroidMediaPlayerWrapper; count : Integer) is
   begin
        BasicPlayer (This).setLoopCount (count);
        if ((This.mediaPlayer) /= (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER)) and then ((This.mediaPlayer) /= (null)) then
            if (count) = (0) then
                This.mediaPlayer.setLooping (False);
            else
                null;
            end if;
        end if;
   end setLoopCount;

   procedure addPlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener'Class) is
      playerListener : PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        BasicPlayer (This).addPlayerListener (playerListener);
   end addPlayerListener;

   procedure removePlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener'Class) is
      playerListener : PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        BasicPlayer (This).removePlayerListener (playerListener);
   end removePlayerListener;

   function getState (This : in out AndroidMediaPlayerWrapper) return Integer is
   begin
        if This.mediaPlayer.isPlaying then
            return Player_Package.STARTED;
        else
            return Player_Package.PREFETCHED;
        end if;
   end getState;

   procedure close (This : in out AndroidMediaPlayerWrapper) is
   begin
        begin
            This.mediaPlayer.release;
            This.mediaPlayer := NullAndroidCanvas_Package.NULL_MEDIA_PLAYER;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), This.commonStrings.CLOSE, e);
                end;
        end;
   end close;

   --  throws MediaException
   procedure start (This : in out AndroidMediaPlayerWrapper) is
   begin
        begin
            if This.mediaPlayer.isPlaying then
                This.mediaPlayer.pause;
                This.mediaPlayer.seekTo (0);
            end if;
            This.mediaPlayer.start;
            BasicPlayer (This).start;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME, e);
                end;
        end;
   end start;

   --  throws MediaException
   procedure stop (This : in out AndroidMediaPlayerWrapper) is
   begin
        begin
            This.mediaPlayer.stop;
            This.mediaPlayer.prepare;
            BasicPlayer (This).stop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"), e);
                end;
        end;
   end stop;

   procedure update (This : in out AndroidMediaPlayerWrapper; event : Unbounded_String) is
      size : Integer;
      listener : PlayerListener_Access;
      index : Integer;
   begin
        This.logUtil.putF (To_Unbounded_String ("LineEvent: ") & event, AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        size := This.listenersList.size;
        for index in 0 .. (size) - 1 loop
            listener := PlayerListener_Access (This.listenersList.objectArray (index));
            listener.playerUpdate (AndroidMediaPlayerWrapper_Access'(This'Unchecked_Access), event, NullUtil_Package.getInstance.NULL_OBJECT);
        end loop;
   end update;

   procedure setVolume (This : in out AndroidMediaPlayerWrapper; leftVolume : Integer; rightVolume : Integer) is
   begin
        This.mediaPlayer.setVolume (((Float (leftVolume))) / (100.0), ((Float (rightVolume))) / (100.0));
   end setVolume;

   function getDuration (This : in out AndroidMediaPlayerWrapper) return Long_Long_Integer is
   begin
        return Long_Long_Integer (This.mediaPlayer.getDuration);
   end getDuration;

   procedure setMediaPlayer (This : in out AndroidMediaPlayerWrapper; mediaPlayer_Param : access MediaPlayer'Class) is
      mediaPlayer : MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
   begin
        This.mediaPlayer := mediaPlayer;
   end setMediaPlayer;

   function getMediaPlayer (This : in out AndroidMediaPlayerWrapper) return MediaPlayer_Access is
   begin
        return This.mediaPlayer;
   end getMediaPlayer;

begin
   null;
   NULL_ANDROID_MEDIA_PLAYER_WRAPPER := AndroidMediaPlayerWrapper_Package.createPlayerWrapper;

end org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;


