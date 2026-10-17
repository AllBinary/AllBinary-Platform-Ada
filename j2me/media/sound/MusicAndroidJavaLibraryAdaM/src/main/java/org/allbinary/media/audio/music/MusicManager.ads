--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.content.Context_Package; use android.content.Context_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with org.allbinary.android.AndroidServicesUtil_Package; use org.allbinary.android.AndroidServicesUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.string_Id.CommonStateStrings_Package; use org.allbinary.string_Id.CommonStateStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.media.audio.music.MusicStrings_Package; use org.allbinary.media.audio.music.MusicStrings_Package;

package org.allbinary.media.audio.music.MusicManager_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package Intent_Package renames Standard.android.content.Intent_Package;
   package AndroidServicesUtil_Package renames Standard.org.allbinary.android.AndroidServicesUtil_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package CommonStateStrings_Package renames Standard.org.allbinary.string_Id.CommonStateStrings_Package;
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
      PLAY : Unbounded_String;
      FOR_Id : Unbounded_String;
      commonStrings : CommonStrings_Access;
      musicStrings : MusicStrings_Access;
      commonStateStrings : CommonStateStrings_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
      resourceUtil : ResourceUtil_Access;
      androidServicesUtil : AndroidServicesUtil_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      timeDelayHelper2 : TimeDelayHelper_Access;
      songList : BasicArrayList_Access;
      currentSongSound : Sound_Access;
      nextSongSound : Sound_Access;
      leftVolume : Integer;
      rightVolume : Integer;
      musicServiceClass : Ada.Tags.Tag;
      currentIntent : Intent_Access;
   end record;

   procedure Initialize (This : in out MusicManager'Class; musicServiceClass : Ada.Tags.Tag; songList : BasicArrayList_Access);
   function Create (musicServiceClass : Ada.Tags.Tag; songList : BasicArrayList_Access) return MusicManager_Access;
   procedure nextSong (This : in out MusicManager; nextSongSound_Param : Sound_Access; leftVolume : Integer; rightVolume : Integer);
   procedure reset (This : in out MusicManager);
   procedure process (This : in out MusicManager);
   procedure show (This : in out MusicManager);
   procedure startNewSong (This : in out MusicManager);
   procedure stop (This : in out MusicManager);
   procedure pause (activity : Activity_Access; musicServiceClass : Ada.Tags.Tag);
   procedure resume (activity : Activity_Access; musicServiceClass : Ada.Tags.Tag);

end org.allbinary.media.audio.music.MusicManager_Package;


