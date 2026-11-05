--  Generated Code Do Not Modify


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
with org.allbinary.AvianUtil_Package; use org.allbinary.AvianUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package; use org.allbinary.media.audio.PlayerStateUtil_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package_References;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.media.audio.music.MusicManagerPlayerListener_Package; use org.allbinary.media.audio.music.MusicManagerPlayerListener_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.media.audio.music.MusicManagerPlayerListener_Package;

package body org.allbinary.media.audio.music.MusicManager_Package is

   package AvianUtil_Package renames Standard.org.allbinary.AvianUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   function "=" (Left, Right : Player_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   function "=" (Left, Right : Player_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   function "=" (Left, Right : Player_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
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
   subtype PlayerStateUtil_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access;
   function "=" (Left, Right : PlayerStateUtil_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   procedure Initialize_Fields (This : in out MusicManager'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.playerStateUtil := PlayerStateUtil_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
      This.playerListener := PlayerListener_Access (MusicManagerPlayerListener_Package.Create (MusicManager_Access'(This'Unchecked_Access)));
      This.PLAY := To_Unbounded_String ("Play ");
      This.SONG := To_Unbounded_String (" for: ");
      This.NEXT_SONG := Java_Image (CommonLabels_Package.getInstance.NEXT) & To_Unbounded_String (" Song: ");
      This.STOPPING := To_Unbounded_String ("Stopping Current Song: ");
      This.ENDING := To_Unbounded_String ("Ending Current Song: ");
      This.WAITING_FOR_MEDIA_TO_END := To_Unbounded_String ("Waiting for media to end");
      This.ALREADY_PLAYING := To_Unbounded_String ("Already Playing: ");
      This.ALREADY_ENDED := To_Unbounded_String ("Last Song already ended: ");
      
      This.currentSongSound := NoSound_Package.getInstance;
      This.nextSongSound := NoSound_Package.getInstance;
      This.reset_Field := False;
      This.noDuration := False;
      This.stopped := True;
   end Initialize_Fields;


   procedure Initialize (This : in out MusicManager'Class; musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      songList : constant BasicArrayList_Access := BasicArrayList_Access (songList_Param);
   begin
      Initialize_Fields (This);
        This.songList := songList;
   end Initialize;

   function Create (musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MusicManager_Access is
      This : constant MusicManager_Access := new MusicManager;
   begin
      MusicManager_Package.Initialize (This.all, musicServiceClass, songList_Param);
      return This;
   end Create;

   procedure startNewSong (This : in out MusicManager) is
      randomSongSound : Sound_Access;
   begin
        if (This.nextSongSound) = (NoSound_Package.getInstance) then
            randomSongSound := Sound_Access (This.basicArrayListUtil.getRandom (This.songList));
            MusicManager'Class (This).nextSong (randomSongSound, 0, 0);
        end if;
        MusicManager'Class (This).process;
   end startNewSong;

   procedure nextSong (This : in out MusicManager; nextSongSound_Param : access Sound_Package.Sound'Class; leftVolume : Integer; rightVolume : Integer) is
      nextSongSound : constant Sound_Access := Sound_Access (nextSongSound_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.NEXT_SONG).append (nextSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        This.nextSongSound := nextSongSound;
        MusicManager'Class (This).reset;
        This.stopped := False;
   end nextSong;

   procedure reset (This : in out MusicManager) is
   begin
        This.reset_Field := True;
   end reset;

   procedure process (This : in out MusicManager) is
      endingCurrentSongSound : Sound_Access;
      nextSongSound : Sound_Access;
      startingCurrentSongSound : Sound_Access;
      duration : Long_Long_Integer;
      NO_DURATION_FOR : Unbounded_String;
      resource : Unbounded_String;
   begin
        begin
            if This.stopped then
                return;
            end if;
            if (This.songList.size) = (0) then
                return;
            end if;
            if (((This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime)) and then (not (This.noDuration)))) or else (This.reset_Field) then
                This.reset_Field := False;
                This.noDuration := False;
                endingCurrentSongSound := This.currentSongSound;
                nextSongSound := This.nextSongSound;
                This.nextSongSound := NoSound_Package.getInstance;
                if (nextSongSound) = (NoSound_Package.getInstance) then
                    This.currentSongSound := Sound_Access (BasicArrayListUtil_Package.getInstance.getRandom (This.songList));
                else
                    This.currentSongSound := nextSongSound;
                end if;
                startingCurrentSongSound := This.currentSongSound;
                duration := Long_Long_Integer (This.currentSongSound.getDuration);
                This.timeDelayHelper.delay_Id := Integer (duration);
                if (duration) <= (0) then
                    NO_DURATION_FOR := To_Unbounded_String ("No Duration for: ");
                    PreLogUtil_Package.put (StringMaker_Package.Create.append (NO_DURATION_FOR).append (This.currentSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                    This.currentSongSound.getPlayerP.addPlayerListener (This.playerListener);
                    This.noDuration := True;
                end if;
                if (endingCurrentSongSound) /= (NoSound_Package.getInstance) then
                    if ((endingCurrentSongSound) = (startingCurrentSongSound)) and then ((endingCurrentSongSound.getPlayerP.getState) = (Player_Package.STARTED)) then
                        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.ALREADY_PLAYING).append (endingCurrentSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.STOPPING).append (endingCurrentSongSound.getResource).append (This.SONG).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                        endingCurrentSongSound.getPlayerP.stop;
                        MusicManager'Class (This).waitForStateChange (endingCurrentSongSound, startingCurrentSongSound);
                    else
                        if (endingCurrentSongSound.getPlayerP.getState) = (Player_Package.STARTED) then
                            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.STOPPING).append (endingCurrentSongSound.getResource).append (This.SONG).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                            endingCurrentSongSound.getPlayerP.stop;
                            MusicManager'Class (This).waitForStateChange (endingCurrentSongSound, startingCurrentSongSound);
                        else
                            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.ALREADY_ENDED).append (This.PLAY).append (startingCurrentSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                            if AvianUtil_Package.isAvian then
                                endingCurrentSongSound.getPlayerP.stop;
                                startingCurrentSongSound.getPlayerP.stop;
                            end if;
                            startingCurrentSongSound.getPlayerP.start;
                        end if;
                    end if;
                else
                    PreLogUtil_Package.put (StringMaker_Package.Create.append (This.PLAY).append (This.currentSongSound.getResource).append (This.SONG).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                    This.currentSongSound.getPlayerP.start;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            resource := StringUtil_Package.getInstance.EMPTY_STRING;
            if (This.currentSongSound) /= (NoSound_Package.getInstance) then
                resource := This.currentSongSound.getResource;
            end if;
            PreLogUtil_Package.putOE (Java_Image (This.commonStrings.EXCEPTION_LABEL) & resource, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

   --  throws Exception
   procedure waitForStateChange (This : in out MusicManager; endingCurrentSongSound_Param : access Sound_Package.Sound'Class; startingCurrentSongSound_Param : access Sound_Package.Sound'Class) is
      endingCurrentSongSound : constant Sound_Access := Sound_Access (endingCurrentSongSound_Param);
      startingCurrentSongSound : constant Sound_Access := Sound_Access (startingCurrentSongSound_Param);
   begin
        while (endingCurrentSongSound.getPlayerP.getState) = (Player_Package.STARTED) loop
            PreLogUtil_Package.put (This.WAITING_FOR_MEDIA_TO_END, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            Java_Sleep (100);
        end loop;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.playerStateUtil.convert (endingCurrentSongSound.getPlayerP.getState)).append (This.commonSeps.SPACE).append (This.PLAY).append (startingCurrentSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        startingCurrentSongSound.getPlayerP.start;
   end waitForStateChange;

   --  throws Exception
   procedure stop (This : in out MusicManager) is
      currentSongSound : Sound_Access;
      resource : Unbounded_String;
   begin
        begin
            currentSongSound := This.currentSongSound;
            if (currentSongSound) /= (NoSound_Package.getInstance) then
                This.stopped := True;
                PreLogUtil_Package.put (StringMaker_Package.Create.append (This.ENDING).append (currentSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                currentSongSound.getPlayerP.stop;
            end if;
            This.timeDelayHelper.setStartTime (0);
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.commonStrings.END_Id).append (StringUtil_Package.getInstance.toString (currentSongSound)).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.END_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            resource := StringUtil_Package.getInstance.EMPTY_STRING;
            if (currentSongSound) /= (NoSound_Package.getInstance) then
                resource := currentSongSound.getResource;
            end if;
            PreLogUtil_Package.putOE (Java_Image (This.commonStrings.EXCEPTION_LABEL) & resource, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.END_Id, e);
                end;
        end;
   end stop;

end org.allbinary.media.audio.music.MusicManager_Package;


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.AvianUtil_Package; use org.allbinary.AvianUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package; use org.allbinary.media.audio.PlayerStateUtil_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package_References;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.media.audio.music.MusicManager_Package; use org.allbinary.media.audio.music.MusicManager_Package;
with org.allbinary.media.audio.music.MusicManager_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.media.audio.music.MusicManager_Package;

package body org.allbinary.media.audio.music.MusicManagerPlayerListener_Package is

   package AvianUtil_Package renames Standard.org.allbinary.AvianUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   function "=" (Left, Right : Player_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   function "=" (Left, Right : Player_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   function "=" (Left, Right : Player_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype PlayerStateUtil_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access;
   function "=" (Left, Right : PlayerStateUtil_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access_Array is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype PlayerStateUtil_Access_Array_Access_Array_Access is org.allbinary.media.audio.PlayerStateUtil_Package_References.PlayerStateUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerStateUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.PlayerStateUtil_Package_References."=";
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   function "=" (Left, Right : CommonSeps_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonSeps_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonSeps_Package_References."=";
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListUtil_Package_References."=";
   subtype MusicManager_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access;
   function "=" (Left, Right : MusicManager_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array;
   function "=" (Left, Right : MusicManager_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access;
   function "=" (Left, Right : MusicManager_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access_Array is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array;
   function "=" (Left, Right : MusicManager_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   subtype MusicManager_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.MusicManager_Package_References.MusicManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MusicManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.MusicManager_Package_References."=";
   procedure Initialize_Fields (This : in out MusicManagerPlayerListener'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out MusicManagerPlayerListener'Class; musicManager_Var_Param : access MusicManager_Package.MusicManager'Class) is
      musicManager_Var : constant MusicManager_Access := MusicManager_Access (musicManager_Var_Param);
   begin
      Initialize_Fields (This);
            This.musicManager_Var := musicManager_Var;
   end Initialize;

   function Create (musicManager_Var_Param : access MusicManager_Package.MusicManager'Class) return MusicManagerPlayerListener_Access is
      This : constant MusicManagerPlayerListener_Access := new MusicManagerPlayerListener;
   begin
      MusicManagerPlayerListener_Package.Initialize (This.all, musicManager_Var_Param);
      return This;
   end Create;
    
   procedure playerUpdate (This : in out MusicManagerPlayerListener; player_Param : access Player_Package.Player'Class; event : Unbounded_String; eventData_Param : access Java_Object'Class) is
      player : constant Player_Access := Player_Access (player_Param);
      eventData : constant Java_Object_Access := Java_Object_Access (eventData_Param);
   begin
            PreLogUtil_Package.put (event, MusicManagerPlayerListener_Access'(This'Unchecked_Access), This.musicManager_Var.commonStrings.PROCESS);
            if (((event) = (PlayerListener_Package.END_OF_MEDIA)) or else ((event) = (PlayerListener_Package.STOPPED))) or else ((event) = (PlayerListener_Package.CLOSED)) then
                This.musicManager_Var.reset;
            end if;
   end playerUpdate;

end org.allbinary.media.audio.music.MusicManagerPlayerListener_Package;


