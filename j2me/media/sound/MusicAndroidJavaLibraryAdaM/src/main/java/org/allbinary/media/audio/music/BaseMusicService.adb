--  Generated Code Do Not Modify


with android.app.Service_Package; use android.app.Service_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with android.content.Intent_Package_References;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
with android.os.IBinder_Package; use android.os.IBinder_Package;
with android.os.IBinder_Package_References;
with org.allbinary.android.NullAndroidCanvas_Package; use org.allbinary.android.NullAndroidCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStateStrings_Package; use org.allbinary.string_Id.CommonStateStrings_Package;
with org.allbinary.string_Id.CommonStateStrings_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.media.audio.music.MusicStrings_Package; use org.allbinary.media.audio.music.MusicStrings_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.media.audio.music.MusicRunnable_Package; use org.allbinary.media.audio.music.MusicRunnable_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.media.audio.music.MusicRunnable_Package;
with org.allbinary.media.audio.music.MusicStrings_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.audio.music.BaseMusicService_Package is

   package NullAndroidCanvas_Package renames Standard.org.allbinary.android.NullAndroidCanvas_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   subtype Intent_Access is android.content.Intent_Package_References.Intent_Access;
   function "=" (Left, Right : Intent_Access) return Boolean renames android.content.Intent_Package_References."=";
   subtype Intent_Access_Array is android.content.Intent_Package_References.Intent_Access_Array;
   function "=" (Left, Right : Intent_Access_Array) return Boolean renames android.content.Intent_Package_References."=";
   subtype Intent_Access_Array_Access is android.content.Intent_Package_References.Intent_Access_Array_Access;
   function "=" (Left, Right : Intent_Access_Array_Access) return Boolean renames android.content.Intent_Package_References."=";
   subtype Intent_Access_Array_Access_Array is android.content.Intent_Package_References.Intent_Access_Array_Access_Array;
   function "=" (Left, Right : Intent_Access_Array_Access_Array) return Boolean renames android.content.Intent_Package_References."=";
   subtype Intent_Access_Array_Access_Array_Access is android.content.Intent_Package_References.Intent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Intent_Access_Array_Access_Array_Access) return Boolean renames android.content.Intent_Package_References."=";
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
   subtype IBinder_Access is android.os.IBinder_Package_References.IBinder_Access;
   function "=" (Left, Right : IBinder_Access) return Boolean renames android.os.IBinder_Package_References."=";
   subtype IBinder_Access_Array is android.os.IBinder_Package_References.IBinder_Access_Array;
   function "=" (Left, Right : IBinder_Access_Array) return Boolean renames android.os.IBinder_Package_References."=";
   subtype IBinder_Access_Array_Access is android.os.IBinder_Package_References.IBinder_Access_Array_Access;
   function "=" (Left, Right : IBinder_Access_Array_Access) return Boolean renames android.os.IBinder_Package_References."=";
   subtype IBinder_Access_Array_Access_Array is android.os.IBinder_Package_References.IBinder_Access_Array_Access_Array;
   function "=" (Left, Right : IBinder_Access_Array_Access_Array) return Boolean renames android.os.IBinder_Package_References."=";
   subtype IBinder_Access_Array_Access_Array_Access is android.os.IBinder_Package_References.IBinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IBinder_Access_Array_Access_Array_Access) return Boolean renames android.os.IBinder_Package_References."=";
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
   subtype CommonStateStrings_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access;
   function "=" (Left, Right : CommonStateStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array;
   function "=" (Left, Right : CommonStateStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out BaseMusicService'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonStateStrings := CommonStateStrings_Package.getInstance;
      This.ALREADY_PLAYING := To_Unbounded_String ("This is one song per music service");
      This.WAITING_FOR_MUSIC_TO_END := To_Unbounded_String ("Waiting for music to end");
      This.player := MediaPlayer_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER);
      This.songId := -(1);
      This.leftVolume := -(1);
      This.rightVolume := -(1);
   end Initialize_Fields;

   procedure Initialize (This : in out BaseMusicService'Class) is
   begin
      Service_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseMusicService_Access is
      This : constant BaseMusicService_Access := new BaseMusicService;
   begin
      BaseMusicService_Package.Initialize (This.all);
      return This;
   end Create;


   function onBind (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class) return IBinder_Access is
      intent : constant Intent_Access := Intent_Access (intent_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.BIND);
        return null;
   end onBind;

   procedure onCreate (This : in out BaseMusicService) is
   begin
        This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.CREATE);
   end onCreate;

   procedure onDestroy (This : in out BaseMusicService) is
   begin
        This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.DESTROY);
        if (Java_Object_Access (This.player)) /= (Java_Object_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER)) then
            This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.PAUSE);
            This.player.stop;
            This.player.reset;
            This.player.release;
        end if;
   end onDestroy;

   procedure pause (This : in out BaseMusicService) is
   begin
        if (Java_Object_Access (This.player)) /= (Java_Object_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER)) then
            This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.PAUSE);
            This.player.pause;
        end if;
   end pause;

   procedure resume (This : in out BaseMusicService) is
   begin
        if ((Java_Object_Access (This.player)) /= (Java_Object_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER))) and then (not (This.player.isPlaying)) then
            This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.RESUME);
            This.player.start;
        end if;
   end resume;

   procedure start (This : in out BaseMusicService) is
   begin
        This.player := MediaPlayer_Package.create (BaseMusicService_Access'(This'Unchecked_Access), This.songId);
        This.player.setVolume (((Float (This.leftVolume))) / (100.0), ((Float (This.rightVolume))) / (100.0));
        This.player.setLooping (False);
        This.player.start;
   end start;

   procedure onStart (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; startid : Integer) is
      intent : constant Intent_Access := Intent_Access (intent_Param);
   begin
        BaseMusicService'Class (This).onStartCommandIntent (intent);
        This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.START);
   end onStart;

   function onStartCommand (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; flags : Integer; startId : Integer) return Integer is
      intent : constant Intent_Access := Intent_Access (intent_Param);
   begin
        BaseMusicService'Class (This).onStartCommandIntent (intent);
        return Service_Package.START_STICKY;
   end onStartCommand;

   procedure onStartCommandIntent (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class) is
      intent : constant Intent_Access := Intent_Access (intent_Param);
      musicStrings : MusicStrings_Access;
      command : Integer;
      player : MediaPlayer_Access;
      runnable : Runnable_Access;
      thread : Thread_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.ON_START_COMMAND);
        musicStrings := MusicStrings_Package.getInstance;
        if (intent) /= (null) then
            command := intent.getIntExtra (This.commonStateStrings.ON_START_COMMAND, -(1));
            This.logUtil.putF ((CommonLabels_Package.getInstance.COMMAND_LABEL) + (command), BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.ON_START_COMMAND);
            if (command) = (1) then
                BaseMusicService'Class (This).pause;
                return;
            elsif (command) = (2) then
                BaseMusicService'Class (This).resume;
                return;
            else
                This.songId := intent.getIntExtra (musicStrings.SONG_EXTRA, -(1));
                This.leftVolume := intent.getIntExtra (musicStrings.LEFT_VOLUME, -(1));
                This.rightVolume := intent.getIntExtra (musicStrings.RIGHT_VOLUME, -(1));
            end if;
        else
            Java_Throw (Java_New_Exception ("RuntimeException", To_Unbounded_String ("Started service without intent")));
        end if;
        if (This.songId) /= (-(1)) then
            Java_Nothing;
            if ((Java_Object_Access (This.player)) /= (Java_Object_Access (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER))) and then (This.player.isPlaying) then
                player := This.player;
                This.logUtil.putF (This.ALREADY_PLAYING, BaseMusicService_Access'(This'Unchecked_Access), This.commonStateStrings.ON_START_COMMAND);
                --  Java nested class MusicRunnable: move it to its own package
                runnable := Runnable_Access (MusicRunnable_Package.Create (BaseMusicService_Access'(This'Unchecked_Access)));
                thread := Thread_Package.Create (runnable);
                thread.start;
                return;
            end if;
            BaseMusicService'Class (This).start;
        end if;
   end onStartCommandIntent;

   procedure onBind (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class) is
      Java_Result : constant IBinder_Access := BaseMusicService'Class (This).onBind (intent_Param => intent_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onBind;

   procedure onStartCommand (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; flags : Integer; startId : Integer) is
      Java_Result : constant Integer := BaseMusicService'Class (This).onStartCommand (intent_Param => intent_Param, flags => flags, startId => startId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onStartCommand;

end org.allbinary.media.audio.music.BaseMusicService_Package;


