--  Generated Code Do Not Modify


package body org.allbinary.media.audio.music.MusicManager_Package is

   procedure Initialize_Fields (This : in out MusicManager'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.playerStateUtil := PlayerStateUtil_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
      This.playerListener := MusicManagerPlayerListener_Package.Create;
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
      This.reset := False;
      This.noDuration := False;
      This.stopped := True;
   end Initialize_Fields;


   procedure Initialize (This : in out MusicManager'Class; musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList'Class) is
      songList : BasicArrayList_Access := BasicArrayList_Access (songList_Param);
   begin
      Initialize_Fields (This);
        This.songList := songList;
   end Initialize;

   function Create (musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList'Class) return MusicManager_Access is
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
            This.nextSong (randomSongSound, 0, 0);
        end if;
        This.process;
   end startNewSong;

   procedure nextSong (This : in out MusicManager; nextSongSound_Param : access Sound'Class; leftVolume : Integer; rightVolume : Integer) is
      nextSongSound : Sound_Access := Sound_Access (nextSongSound_Param);
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.NEXT_SONG).append (nextSongSound.getResource).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        This.nextSongSound := nextSongSound;
        This.reset;
        This.stopped := False;
   end nextSong;

   procedure reset (This : in out MusicManager) is
   begin
        This.reset := True;
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
            if (((This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime)) and then (not (This.noDuration)))) or else (This.reset) then
                This.reset := False;
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
                        This.waitForStateChange (endingCurrentSongSound, startingCurrentSongSound);
                    else
                        if (endingCurrentSongSound.getPlayerP.getState) = (Player_Package.STARTED) then
                            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.STOPPING).append (endingCurrentSongSound.getResource).append (This.SONG).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
                            endingCurrentSongSound.getPlayerP.stop;
                            This.waitForStateChange (endingCurrentSongSound, startingCurrentSongSound);
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
   procedure waitForStateChange (This : in out MusicManager; endingCurrentSongSound_Param : access Sound'Class; startingCurrentSongSound_Param : access Sound'Class) is
      endingCurrentSongSound : Sound_Access := Sound_Access (endingCurrentSongSound_Param);
      startingCurrentSongSound : Sound_Access := Sound_Access (startingCurrentSongSound_Param);
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


package body org.allbinary.media.audio.music.MusicManagerPlayerListener_Package is

   procedure Initialize_Fields (This : in out MusicManagerPlayerListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MusicManagerPlayerListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MusicManagerPlayerListener_Access is
      This : constant MusicManagerPlayerListener_Access := new MusicManagerPlayerListener;
   begin
      MusicManagerPlayerListener_Package.Initialize (This.all);
      return This;
   end Create;

    
   procedure playerUpdate (This : in out MusicManagerPlayerListener; player_Param : access Player'Class; event : Unbounded_String; eventData_Param : access Java_Object'Class) is
      player : Player_Access := Player_Access (player_Param);
      eventData : Java_Object_Access := Java_Object_Access (eventData_Param);
   begin
            PreLogUtil_Package.put (event, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            if (((event) = (PlayerListener_Package.END_OF_MEDIA)) or else ((event) = (PlayerListener_Package.STOPPED))) or else ((event) = (PlayerListener_Package.CLOSED)) then
                This.reset;
            end if;
   end playerUpdate;

end org.allbinary.media.audio.music.MusicManagerPlayerListener_Package;


