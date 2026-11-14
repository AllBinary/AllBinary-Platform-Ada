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


with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.audio.MediaPlayerUtil_Package is

   package Thread_Package renames Standard.java.lang.Thread_Package;
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
   procedure Initialize_Fields (This : in out MediaPlayerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaPlayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaPlayerUtil_Access is
      This : constant MediaPlayerUtil_Access := new MediaPlayerUtil;
   begin
      MediaPlayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MediaPlayerUtil_Access is
   begin
        return MediaPlayerUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure waitForMediaPlayer (This : in out MediaPlayerUtil; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class) is
      mediaPlayer : constant MediaPlayer_Access := MediaPlayer_Access (mediaPlayer_Param);
      MESSAGE : Unbounded_String;
      METHOD_NAME : Unbounded_String;
      index : Integer;
   begin
        MESSAGE := To_Unbounded_String ("Not Stopped Waiting");
        METHOD_NAME := To_Unbounded_String ("wait");
        index := 0;
        while (mediaPlayer.isPlaying) and then ((index) < (50)) loop
            This.logUtil.putF (MESSAGE, MediaPlayerUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            Java_Sleep (100);
            index := index + 1;
        end loop;
   end waitForMediaPlayer;

begin
   null;
   instance := MediaPlayerUtil_Package.Create;

end org.allbinary.media.audio.MediaPlayerUtil_Package;


