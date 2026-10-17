--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AndroidMediaPlayerWrapperListener is tagged;
   type AndroidMediaPlayerWrapperListener_Access is access all AndroidMediaPlayerWrapperListener'Class;
   type AndroidMediaPlayerWrapperListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapperListener_Access;
   type AndroidMediaPlayerWrapperListener_Access_Array_Access is access all AndroidMediaPlayerWrapperListener_Access_Array;

   type AndroidMediaPlayerWrapperListener is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access;
      mOnBufferingUpdateListener : OnBufferingUpdateListener_Access;
      mOnPreparedListener : OnPreparedListener_Access;
      mOnErrorListener : OnErrorListener_Access;
      mOnCompletionListener : OnCompletionListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerWrapperListener'Class; androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access);
   function Create (androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access) return AndroidMediaPlayerWrapperListener_Access;

end org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type MediaPlayerOnBufferingUpdateListener is tagged;
   type MediaPlayerOnBufferingUpdateListener_Access is access all MediaPlayerOnBufferingUpdateListener'Class;
   type MediaPlayerOnBufferingUpdateListener_Access_Array is array (Natural range <>) of MediaPlayerOnBufferingUpdateListener_Access;
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Access is access all MediaPlayerOnBufferingUpdateListener_Access_Array;

   type MediaPlayerOnBufferingUpdateListener is new OnBufferingUpdateListener with null record;

   procedure Initialize (This : in out MediaPlayerOnBufferingUpdateListener'Class);
   function Create return MediaPlayerOnBufferingUpdateListener_Access;
   procedure onBufferingUpdate (This : in out MediaPlayerOnBufferingUpdateListener; mediaPlayer : MediaPlayer_Access; i : Integer);

end org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type MediaPlayerOnPreparedListener is tagged;
   type MediaPlayerOnPreparedListener_Access is access all MediaPlayerOnPreparedListener'Class;
   type MediaPlayerOnPreparedListener_Access_Array is array (Natural range <>) of MediaPlayerOnPreparedListener_Access;
   type MediaPlayerOnPreparedListener_Access_Array_Access is access all MediaPlayerOnPreparedListener_Access_Array;

   type MediaPlayerOnPreparedListener is new OnPreparedListener with null record;

   procedure Initialize (This : in out MediaPlayerOnPreparedListener'Class);
   function Create return MediaPlayerOnPreparedListener_Access;
   procedure onPrepared (This : in out MediaPlayerOnPreparedListener; mp : MediaPlayer_Access);

end org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.MediaPlayerOnErrorListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type MediaPlayerOnErrorListener is tagged;
   type MediaPlayerOnErrorListener_Access is access all MediaPlayerOnErrorListener'Class;
   type MediaPlayerOnErrorListener_Access_Array is array (Natural range <>) of MediaPlayerOnErrorListener_Access;
   type MediaPlayerOnErrorListener_Access_Array_Access is access all MediaPlayerOnErrorListener_Access_Array;

   type MediaPlayerOnErrorListener is new OnErrorListener with null record;

   procedure Initialize (This : in out MediaPlayerOnErrorListener'Class);
   function Create return MediaPlayerOnErrorListener_Access;
   function onError (This : in out MediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) return Boolean;
   procedure onError (This : in out MediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer);

end org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type MediaPlayerOnCompletionListener is tagged;
   type MediaPlayerOnCompletionListener_Access is access all MediaPlayerOnCompletionListener'Class;
   type MediaPlayerOnCompletionListener_Access_Array is array (Natural range <>) of MediaPlayerOnCompletionListener_Access;
   type MediaPlayerOnCompletionListener_Access_Array_Access is access all MediaPlayerOnCompletionListener_Access_Array;

   type MediaPlayerOnCompletionListener is new OnCompletionListener with null record;

   procedure Initialize (This : in out MediaPlayerOnCompletionListener'Class);
   function Create return MediaPlayerOnCompletionListener_Access;
   procedure onCompletion (This : in out MediaPlayerOnCompletionListener; mp : MediaPlayer_Access);

end org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AndroidMediaPlayerOnBufferingUpdateListener is tagged;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access is access all AndroidMediaPlayerOnBufferingUpdateListener'Class;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnBufferingUpdateListener_Access;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access is access all AndroidMediaPlayerOnBufferingUpdateListener_Access_Array;

   type AndroidMediaPlayerOnBufferingUpdateListener is new MediaPlayerOnBufferingUpdateListener with record
      ON_BUFFERING_UPDATE : Unbounded_String;
      androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access);
   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnBufferingUpdateListener_Access;
   procedure onBufferingUpdate (This : in out AndroidMediaPlayerOnBufferingUpdateListener; mediaPlayer : MediaPlayer_Access; i : Integer);

end org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AndroidMediaPlayerOnPreparedListener is tagged;
   type AndroidMediaPlayerOnPreparedListener_Access is access all AndroidMediaPlayerOnPreparedListener'Class;
   type AndroidMediaPlayerOnPreparedListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnPreparedListener_Access;
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Access is access all AndroidMediaPlayerOnPreparedListener_Access_Array;

   type AndroidMediaPlayerOnPreparedListener is new MediaPlayerOnPreparedListener with record
      ON_PREPARE : Unbounded_String;
      androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnPreparedListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access);
   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnPreparedListener_Access;
   procedure onPrepared (This : in out AndroidMediaPlayerOnPreparedListener; mp : MediaPlayer_Access);

end org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AndroidMediaPlayerOnErrorListener is tagged;
   type AndroidMediaPlayerOnErrorListener_Access is access all AndroidMediaPlayerOnErrorListener'Class;
   type AndroidMediaPlayerOnErrorListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnErrorListener_Access;
   type AndroidMediaPlayerOnErrorListener_Access_Array_Access is access all AndroidMediaPlayerOnErrorListener_Access_Array;

   type AndroidMediaPlayerOnErrorListener is new MediaPlayerOnErrorListener with record
      ON_ERROR : Unbounded_String;
      androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnErrorListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access);
   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnErrorListener_Access;
   function onError (This : in out AndroidMediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer) return Boolean;
   procedure onError (This : in out AndroidMediaPlayerOnErrorListener; mp : MediaPlayer_Access; what : Integer; extra : Integer);

end org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with android.media.MediaPlayer_Package; use android.media.MediaPlayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package is

   package MediaPlayer_Package renames android.media.MediaPlayer_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AndroidMediaPlayerOnCompletionListener is tagged;
   type AndroidMediaPlayerOnCompletionListener_Access is access all AndroidMediaPlayerOnCompletionListener'Class;
   type AndroidMediaPlayerOnCompletionListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnCompletionListener_Access;
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Access is access all AndroidMediaPlayerOnCompletionListener_Access_Array;

   type AndroidMediaPlayerOnCompletionListener is new MediaPlayerOnCompletionListener with record
      ON_COMPLETE : Unbounded_String;
      androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnCompletionListener'Class; androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access);
   function Create (androidMediaPlayerWrapperListener : AndroidMediaPlayerWrapperListener_Access) return AndroidMediaPlayerOnCompletionListener_Access;
   procedure onCompletion (This : in out AndroidMediaPlayerOnCompletionListener; mp : MediaPlayer_Access);

end org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package;


