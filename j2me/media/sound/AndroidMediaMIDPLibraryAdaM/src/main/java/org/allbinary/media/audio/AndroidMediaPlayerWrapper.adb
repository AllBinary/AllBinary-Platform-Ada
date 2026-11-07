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


with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
with org.allbinary.android.NullAndroidCanvas_Package; use org.allbinary.android.NullAndroidCanvas_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.media.Control_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package is

   package MediaException_Package renames Standard.javax.microedition.media.MediaException_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package NullAndroidCanvas_Package renames Standard.org.allbinary.android.NullAndroidCanvas_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype PlayerListener_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access;
   function "=" (Left, Right : PlayerListener_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array;
   function "=" (Left, Right : PlayerListener_Access_Array) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access;
   function "=" (Left, Right : PlayerListener_Access_Array_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerListener_Access_Array_Access_Array) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   function "=" (Left, Right : MediaPlayer_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   function "=" (Left, Right : MediaPlayer_Access_Array) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access_Array) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayer_Access_Array_Access_Array_Access) return Boolean renames android.media.MediaPlayer_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AndroidMediaPlayerWrapper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.mediaPlayer := MediaPlayer_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER);
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
                AndroidMediaPlayerWrapper'Class (This).setMediaPlayer (mediaPlayer);
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
        BasicPlayer_Package.BasicPlayer (This).setLoopCount (count);
        if ((Java_Object_Access (This.mediaPlayer)) /= (Java_Object_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER))) and then ((This.mediaPlayer) /= (null)) then
            if (count) = (0) then
                This.mediaPlayer.setLooping (False);
            else
                null;
            end if;
        end if;
   end setLoopCount;

   procedure addPlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        BasicPlayer_Package.BasicPlayer (This).addPlayerListener (playerListener);
   end addPlayerListener;

   procedure removePlayerListener (This : in out AndroidMediaPlayerWrapper; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        BasicPlayer_Package.BasicPlayer (This).removePlayerListener (playerListener);
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
            This.mediaPlayer := MediaPlayer_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER);
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
            BasicPlayer_Package.BasicPlayer (This).start;
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
            BasicPlayer_Package.BasicPlayer (This).stop;
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

   procedure setMediaPlayer (This : in out AndroidMediaPlayerWrapper; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mediaPlayer : constant MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
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


