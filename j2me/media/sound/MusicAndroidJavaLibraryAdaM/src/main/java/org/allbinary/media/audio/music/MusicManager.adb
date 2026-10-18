--  Generated Code Do Not Modify


with android.content.Context_Package; use android.content.Context_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;

package body org.allbinary.media.audio.music.MusicManager_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   procedure Initialize_Fields (This : in out MusicManager'Class) is
   begin
      null;
      This.PLAY := To_Unbounded_String ("Play ");
      This.FOR_Id := To_Unbounded_String (" for: ");
      This.commonStrings := CommonStrings_Package.getInstance;
      This.musicStrings := MusicStrings_Package.getInstance;
      This.commonStateStrings := CommonStateStrings_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      This.resourceUtil := ResourceUtil_Package.getInstance;
      This.androidServicesUtil := AndroidServicesUtil_Package.getInstance;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
      This.timeDelayHelper2 := TimeDelayHelper_Package.Create (1200);
      
      This.currentSongSound := NoSound_Package.getInstance;
      This.nextSongSound := NoSound_Package.getInstance;
      This.leftVolume := 100;
      This.rightVolume := 100;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MusicManager'Class; musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      songList : constant BasicArrayList_Access := BasicArrayList_Access (songList_Param);
   begin
      Initialize_Fields (This);
        PreLogUtil_Package.put ((This.commonStateStrings.CONTEXT) + (This.resourceUtil.getContext), MusicManager_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.musicServiceClass := musicServiceClass;
        This.currentIntent := Intent_Package.Create (This.resourceUtil.getContext, musicServiceClass);
        This.songList := songList;
   end Initialize;

   function Create (musicServiceClass : Ada.Tags.Tag; songList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MusicManager_Access is
      This : constant MusicManager_Access := new MusicManager;
   begin
      MusicManager_Package.Initialize (This.all, musicServiceClass, songList_Param);
      return This;
   end Create;

   procedure nextSong (This : in out MusicManager; nextSongSound_Param : access Sound_Package.Sound'Class; leftVolume : Integer; rightVolume : Integer) is
      nextSongSound : Sound_Access := Sound_Access (nextSongSound_Param);
   begin
        if (nextSongSound) = (null) then
            nextSongSound := NoSound_Package.getInstance;
        end if;
        This.nextSongSound := nextSongSound;
        This.leftVolume := leftVolume;
        This.rightVolume := rightVolume;
        MusicManager'Class (This).reset;
   end nextSong;

   procedure reset (This : in out MusicManager) is
   begin
        This.timeDelayHelper.delay_Id := 0;
   end reset;

   procedure process (This : in out MusicManager) is
   begin
        if (This.songList.size) = (0) then
            return;
        end if;
        if This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            MusicManager'Class (This).startNewSong;
            return;
        end if;
        if This.timeDelayHelper2.isTime (This.gameTickTimeDelayHelper.startTime) then
            if This.androidServicesUtil.isServiceRunning (To_Unbounded_String (Ada.Tags.Expanded_Name (This.musicServiceClass))) then
                null;
            else
                MusicManager'Class (This).startNewSong;
            end if;
        end if;
   end process;

   procedure show (This : in out MusicManager) is
      sound : Sound_Access;
      duration : Long_Long_Integer;
      index : Integer;
   begin
        index := This.songList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            sound := Sound_Access (This.songList.get (index));
            duration := Long_Long_Integer (sound.getDuration);
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.PLAY).append (sound.getResource).append (This.FOR_Id).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        end loop;
   end show;

   procedure startNewSong (This : in out MusicManager) is
      duration : Long_Long_Integer;
      resource : Unbounded_String;
   begin
        begin
            This.resourceUtil.getContext.stopService (This.currentIntent);
            if (This.nextSongSound) = (NoSound_Package.getInstance) then
                This.currentSongSound := Sound_Access (This.basicArrayListUtil.getRandom (This.songList));
            else
                This.currentSongSound := This.nextSongSound;
                This.nextSongSound := NoSound_Package.getInstance;
            end if;
            duration := Long_Long_Integer (This.currentSongSound.getDuration);
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.PLAY).append (This.currentSongSound.getResource).append (This.FOR_Id).appendlong (duration).toString, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
            This.timeDelayHelper.delay_Id := Integer (duration);
            This.currentIntent.putExtra (This.musicStrings.SONG_EXTRA, This.resourceUtil.getResourceId (This.currentSongSound.getResource).intValue);
            This.currentIntent.putExtra (This.musicStrings.LEFT_VOLUME, This.leftVolume);
            This.currentIntent.putExtra (This.musicStrings.RIGHT_VOLUME, This.rightVolume);
            This.resourceUtil.getContext.startService (This.currentIntent);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            resource := StringUtil_Package.getInstance.EMPTY_STRING;
            if (This.currentSongSound) /= (null) then
                resource := This.currentSongSound.getResource;
            end if;
            PreLogUtil_Package.putOE (Java_Image (This.commonStrings.EXCEPTION_LABEL) & resource, MusicManager_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end startNewSong;

   --  throws Exception
   procedure stop (This : in out MusicManager) is
   begin
        This.resourceUtil.getContext.stopService (This.currentIntent);
   end stop;

   procedure pause (activity_Param : access Activity_Package.Activity'Class; musicServiceClass : Ada.Tags.Tag) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      commonStateStrings : CommonStateStrings_Access;
      musicPauseIntent : Intent_Access;
   begin
        commonStateStrings := CommonStateStrings_Package.getInstance;
        musicPauseIntent := Intent_Package.Create (Context_Access (activity), musicServiceClass);
        musicPauseIntent.putExtra (commonStateStrings.ON_START_COMMAND, 1);
        activity.startService (musicPauseIntent);
   end pause;

   procedure resume (activity_Param : access Activity_Package.Activity'Class; musicServiceClass : Ada.Tags.Tag) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      commonStateStrings : CommonStateStrings_Access;
      musicResumeIntent : Intent_Access;
   begin
        if AndroidServicesUtil_Package.getInstance.isServiceRunning (To_Unbounded_String (Ada.Tags.Expanded_Name (musicServiceClass))) then
            commonStateStrings := CommonStateStrings_Package.getInstance;
            musicResumeIntent := Intent_Package.Create (activity, musicServiceClass);
            musicResumeIntent.putExtra (commonStateStrings.ON_START_COMMAND, 2);
            activity.startService (musicResumeIntent);
        end if;
   end resume;

end org.allbinary.media.audio.music.MusicManager_Package;


