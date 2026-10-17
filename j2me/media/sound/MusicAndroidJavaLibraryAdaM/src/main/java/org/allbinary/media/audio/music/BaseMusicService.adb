--  Generated Code Do Not Modify


package body org.allbinary.media.audio.music.BaseMusicService_Package is

   procedure Initialize_Fields (This : in out BaseMusicService'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonStateStrings := CommonStateStrings_Package.getInstance;
      This.ALREADY_PLAYING := To_Unbounded_String ("This is one song per music service");
      This.WAITING_FOR_MUSIC_TO_END := To_Unbounded_String ("Waiting for music to end");
      This.player := NullAndroidCanvas_Package.NULL_MEDIA_PLAYER;
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


   function onBind (This : in out BaseMusicService; intent : Intent_Access) return IBinder_Access is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.BIND);
        return null;
   end onBind;

   procedure onCreate (This : in out BaseMusicService) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.CREATE);
   end onCreate;

   procedure onDestroy (This : in out BaseMusicService) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.DESTROY);
        if (This.player) /= (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.PAUSE);
            This.player.stop;
            This.player.reset;
            This.player.release;
        end if;
   end onDestroy;

   procedure pause (This : in out BaseMusicService) is
   begin
        if (This.player) /= (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.PAUSE);
            This.player.pause;
        end if;
   end pause;

   procedure resume (This : in out BaseMusicService) is
   begin
        if ((This.player) /= (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER)) and then (not (This.player.isPlaying)) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.RESUME);
            This.player.start;
        end if;
   end resume;

   procedure start (This : in out BaseMusicService) is
   begin
        This.player := MediaPlayer_Package.create (This'Unchecked_Access, This.songId);
        This.player.setVolume (((Float (This.leftVolume))) / (100.0), ((Float (This.rightVolume))) / (100.0));
        This.player.setLooping (False);
        This.player.start;
   end start;

   procedure onStart (This : in out BaseMusicService; intent : Intent_Access; startid : Integer) is
   begin
        This.onStartCommandIntent (intent);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.START);
   end onStart;

   function onStartCommand (This : in out BaseMusicService; intent : Intent_Access; flags : Integer; startId : Integer) return Integer is
   begin
        This.onStartCommandIntent (intent);
        return Service_Package.START_STICKY;
   end onStartCommand;

   procedure onStartCommandIntent (This : in out BaseMusicService; intent : Intent_Access) is
      musicStrings : MusicStrings_Access;
      command : Integer;
      player : MediaPlayer_Access;
      runnable : Runnable_Access;
      thread : Thread_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStateStrings.ON_START_COMMAND);
        musicStrings := MusicStrings_Package.getInstance;
        if (intent) /= (null) then
            command := intent.getIntExtra (This.commonStateStrings.ON_START_COMMAND, -(1));
            This.logUtil.putF ((CommonLabels_Package.getInstance.COMMAND_LABEL) + (command), This'Unchecked_Access, This.commonStateStrings.ON_START_COMMAND);
            if (command) = (1) then
                This.pause;
                return;
            elsif (command) = (2) then
                This.resume;
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
            if ((This.player) /= (NullAndroidCanvas_Package.NULL_MEDIA_PLAYER)) and then (This.player.isPlaying) then
                player := This.player;
                This.logUtil.putF (This.ALREADY_PLAYING, This'Unchecked_Access, This.commonStateStrings.ON_START_COMMAND);
                --  Java nested class MusicRunnable: move it to its own package
                runnable := MusicRunnable_Package.Create (This'Unchecked_Access);
                thread := Thread_Package.Create (runnable);
                thread.start;
                return;
            end if;
            This.start;
        end if;
   end onStartCommandIntent;

   procedure onBind (This : in out BaseMusicService; intent : Intent_Access) is
      Java_Result : constant IBinder_Access := BaseMusicService'Class (This).onBind (intent);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onBind;

   procedure onStartCommand (This : in out BaseMusicService; intent : Intent_Access; flags : Integer; startId : Integer) is
      Java_Result : constant Integer := BaseMusicService'Class (This).onStartCommand (intent, flags, startId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end onStartCommand;

end org.allbinary.media.audio.music.BaseMusicService_Package;


