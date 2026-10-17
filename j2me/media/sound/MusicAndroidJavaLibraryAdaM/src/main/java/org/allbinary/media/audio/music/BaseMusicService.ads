--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Service_Package; use android.app.Service_Package;
with android.content.Intent_Package; use android.content.Intent_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with android.os.IBinder_Package; use android.os.IBinder_Package;
with org.allbinary.android.NullAndroidCanvas_Package; use org.allbinary.android.NullAndroidCanvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStateStrings_Package; use org.allbinary.string_Id.CommonStateStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;

package org.allbinary.media.audio.music.BaseMusicService_Package is

   package Service_Package renames android.app.Service_Package;
   package Intent_Package renames android.content.Intent_Package;
   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package IBinder_Package renames android.os.IBinder_Package;
   package NullAndroidCanvas_Package renames org.allbinary.android.NullAndroidCanvas_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStateStrings_Package renames org.allbinary.string_Id.CommonStateStrings_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ARunnable_Package renames org.allbinary.thread.ARunnable_Package;

   type BaseMusicService is tagged;
   type BaseMusicService_Access is access all BaseMusicService'Class;
   type BaseMusicService_Access_Array is array (Natural range <>) of BaseMusicService_Access;
   type BaseMusicService_Access_Array_Access is access all BaseMusicService_Access_Array;

   type BaseMusicService is new Service with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonStateStrings : CommonStateStrings_Access;
      ALREADY_PLAYING : Unbounded_String;
      WAITING_FOR_MUSIC_TO_END : Unbounded_String;
      player : MediaPlayer_Access;
      songId : Integer;
      leftVolume : Integer;
      rightVolume : Integer;
   end record;

   procedure Initialize (This : in out BaseMusicService'Class);
   function Create return BaseMusicService_Access;
   function onBind (This : in out BaseMusicService; intent : Intent_Access) return IBinder_Access;
   procedure onBind (This : in out BaseMusicService; intent : Intent_Access);
   procedure onCreate (This : in out BaseMusicService);
   procedure onDestroy (This : in out BaseMusicService);
   procedure pause (This : in out BaseMusicService);
   procedure resume (This : in out BaseMusicService);
   procedure start (This : in out BaseMusicService);
   procedure onStart (This : in out BaseMusicService; intent : Intent_Access; startid : Integer);
   function onStartCommand (This : in out BaseMusicService; intent : Intent_Access; flags : Integer; startId : Integer) return Integer;
   procedure onStartCommand (This : in out BaseMusicService; intent : Intent_Access; flags : Integer; startId : Integer);
   procedure onStartCommandIntent (This : in out BaseMusicService; intent : Intent_Access);

end org.allbinary.media.audio.music.BaseMusicService_Package;


