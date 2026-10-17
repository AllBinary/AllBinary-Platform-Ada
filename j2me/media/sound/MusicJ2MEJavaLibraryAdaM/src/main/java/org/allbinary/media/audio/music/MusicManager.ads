--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.AvianUtil_Package; use org.allbinary.AvianUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package; use org.allbinary.media.audio.PlayerStateUtil_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.media.audio.music.MusicManager_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package AvianUtil_Package renames Standard.org.allbinary.AvianUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package PlayerStateUtil_Package renames Standard.org.allbinary.media.audio.PlayerStateUtil_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type MusicManager is tagged;
   type MusicManager_Access is access all MusicManager'Class;
   type MusicManager_Access_Array is array (Natural range <>) of MusicManager_Access;
   type MusicManager_Access_Array_Access is access all MusicManager_Access_Array;

   type MusicManager is new Java_Object with record
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      playerStateUtil : PlayerStateUtil_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      playerListener : PlayerListener_Access;
      PLAY : Unbounded_String;
      SONG : Unbounded_String;
      NEXT_SONG : Unbounded_String;
      STOPPING : Unbounded_String;
      ENDING : Unbounded_String;
      WAITING_FOR_MEDIA_TO_END : Unbounded_String;
      ALREADY_PLAYING : Unbounded_String;
      ALREADY_ENDED : Unbounded_String;
      songList : BasicArrayList_Access;
      currentSongSound : Sound_Access;
      nextSongSound : Sound_Access;
      reset : Boolean;
      noDuration : Boolean;
      stopped : Boolean;
   end record;

   procedure Initialize (This : in out MusicManager'Class; musicServiceClass : Ada.Tags.Tag; songList : BasicArrayList_Access);
   function Create (musicServiceClass : Ada.Tags.Tag; songList : BasicArrayList_Access) return MusicManager_Access;
   procedure startNewSong (This : in out MusicManager);
   procedure nextSong (This : in out MusicManager; nextSongSound : Sound_Access; leftVolume : Integer; rightVolume : Integer);
   procedure reset (This : in out MusicManager);
   procedure process (This : in out MusicManager);
   procedure waitForStateChange (This : in out MusicManager; endingCurrentSongSound : Sound_Access; startingCurrentSongSound : Sound_Access);
   procedure stop (This : in out MusicManager);

end org.allbinary.media.audio.music.MusicManager_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.AvianUtil_Package; use org.allbinary.AvianUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.PlayerStateUtil_Package; use org.allbinary.media.audio.PlayerStateUtil_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.media.audio.music.MusicManagerPlayerListener_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package AvianUtil_Package renames Standard.org.allbinary.AvianUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package PlayerStateUtil_Package renames Standard.org.allbinary.media.audio.PlayerStateUtil_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type MusicManagerPlayerListener is tagged;
   type MusicManagerPlayerListener_Access is access all MusicManagerPlayerListener'Class;
   type MusicManagerPlayerListener_Access_Array is array (Natural range <>) of MusicManagerPlayerListener_Access;
   type MusicManagerPlayerListener_Access_Array_Access is access all MusicManagerPlayerListener_Access_Array;

   type MusicManagerPlayerListener is new PlayerListener with null record;

   procedure Initialize (This : in out MusicManagerPlayerListener'Class);
   function Create return MusicManagerPlayerListener_Access;
   procedure playerUpdate (This : in out MusicManagerPlayerListener; player : Player_Access; event : Unbounded_String; eventData : Java_Object_Access);

end org.allbinary.media.audio.music.MusicManagerPlayerListener_Package;


