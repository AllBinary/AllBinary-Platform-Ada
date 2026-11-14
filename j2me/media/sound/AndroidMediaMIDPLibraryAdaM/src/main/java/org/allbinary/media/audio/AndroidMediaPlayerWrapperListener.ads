--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
package org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References is
   type AndroidMediaPlayerWrapperListener_Access is access all org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class;
   type AndroidMediaPlayerWrapperListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapperListener_Access;
   type AndroidMediaPlayerWrapperListener_Access_Array_Access is access all AndroidMediaPlayerWrapperListener_Access_Array;
   type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerWrapperListener_Access_Array_Access;
   type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is access all AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   type AndroidMediaPlayerWrapperListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerWrapperListener_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerWrapperListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerWrapperListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerWrapperListener_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerWrapperListener_Access_Array_Object'Class then AndroidMediaPlayerWrapperListener_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapperListener_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References."=";
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerWrapperListener_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References."=";
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapperListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerWrapperListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerWrapperListener_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerWrapperListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References."=";
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.Java_Unbox_AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;

   type AndroidMediaPlayerWrapperListener is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access;
      mOnBufferingUpdateListener : OnBufferingUpdateListener_Access;
      mOnPreparedListener : OnPreparedListener_Access;
      mOnErrorListener : OnErrorListener_Access;
      mOnCompletionListener : OnCompletionListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerWrapperListener'Class; androidMediaPlayerWrapper_Param : access AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class);
   function Create (androidMediaPlayerWrapper_Param : access AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class) return AndroidMediaPlayerWrapperListener_Access;

end org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
package org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References is
   type MediaPlayerOnBufferingUpdateListener_Access is access all org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package.MediaPlayerOnBufferingUpdateListener'Class;
   type MediaPlayerOnBufferingUpdateListener_Access_Array is array (Natural range <>) of MediaPlayerOnBufferingUpdateListener_Access;
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Access is access all MediaPlayerOnBufferingUpdateListener_Access_Array;
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array is array (Natural range <>) of MediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is access all MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnBufferingUpdateListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnBufferingUpdateListener_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnBufferingUpdateListener_Access_Array_Object'Class then MediaPlayerOnBufferingUpdateListener_Access_Array_Object'Class (Value.all).Value else null);
   type MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'Class then MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References;

with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.OnBufferingUpdateListener_Package; use org.allbinary.media.audio.OnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaPlayerOnBufferingUpdateListener_Access is org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.MediaPlayerOnBufferingUpdateListener_Access;
   function "=" (Left, Right : MediaPlayerOnBufferingUpdateListener_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype MediaPlayerOnBufferingUpdateListener_Access_Array is org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.MediaPlayerOnBufferingUpdateListener_Access_Array;
   function "=" (Left, Right : MediaPlayerOnBufferingUpdateListener_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype MediaPlayerOnBufferingUpdateListener_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.MediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnBufferingUpdateListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnBufferingUpdateListener_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array;
   subtype MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array is org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package_References.Java_Unbox_MediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;

   type MediaPlayerOnBufferingUpdateListener is new Java_Object and OnBufferingUpdateListener with null record;

   procedure Initialize (This : in out MediaPlayerOnBufferingUpdateListener'Class);
   function Create return MediaPlayerOnBufferingUpdateListener_Access;
   procedure onBufferingUpdate (This : in out MediaPlayerOnBufferingUpdateListener; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class; i : Integer);

end org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
package org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References is
   type MediaPlayerOnPreparedListener_Access is access all org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package.MediaPlayerOnPreparedListener'Class;
   type MediaPlayerOnPreparedListener_Access_Array is array (Natural range <>) of MediaPlayerOnPreparedListener_Access;
   type MediaPlayerOnPreparedListener_Access_Array_Access is access all MediaPlayerOnPreparedListener_Access_Array;
   type MediaPlayerOnPreparedListener_Access_Array_Access_Array is array (Natural range <>) of MediaPlayerOnPreparedListener_Access_Array_Access;
   type MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is access all MediaPlayerOnPreparedListener_Access_Array_Access_Array;
   type MediaPlayerOnPreparedListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnPreparedListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnPreparedListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnPreparedListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnPreparedListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnPreparedListener_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnPreparedListener_Access_Array_Object'Class then MediaPlayerOnPreparedListener_Access_Array_Object'Class (Value.all).Value else null);
   type MediaPlayerOnPreparedListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnPreparedListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'Class then MediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References;

with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.OnPreparedListener_Package; use org.allbinary.media.audio.OnPreparedListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaPlayerOnPreparedListener_Access is org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.MediaPlayerOnPreparedListener_Access;
   function "=" (Left, Right : MediaPlayerOnPreparedListener_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References."=";
   subtype MediaPlayerOnPreparedListener_Access_Array is org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.MediaPlayerOnPreparedListener_Access_Array;
   function "=" (Left, Right : MediaPlayerOnPreparedListener_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References."=";
   subtype MediaPlayerOnPreparedListener_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.MediaPlayerOnPreparedListener_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnPreparedListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnPreparedListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnPreparedListener_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnPreparedListener_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.Java_Unbox_MediaPlayerOnPreparedListener_Access_Array;
   subtype MediaPlayerOnPreparedListener_Access_Array_Access_Array is org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.MediaPlayerOnPreparedListener_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayerOnPreparedListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References."=";
   subtype MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnPreparedListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnPreparedListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package_References.Java_Unbox_MediaPlayerOnPreparedListener_Access_Array_Access_Array;

   type MediaPlayerOnPreparedListener is new Java_Object and OnPreparedListener with null record;

   procedure Initialize (This : in out MediaPlayerOnPreparedListener'Class);
   function Create return MediaPlayerOnPreparedListener_Access;
   procedure onPrepared (This : in out MediaPlayerOnPreparedListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
package org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References is
   type MediaPlayerOnErrorListener_Access is access all org.allbinary.media.audio.MediaPlayerOnErrorListener_Package.MediaPlayerOnErrorListener'Class;
   type MediaPlayerOnErrorListener_Access_Array is array (Natural range <>) of MediaPlayerOnErrorListener_Access;
   type MediaPlayerOnErrorListener_Access_Array_Access is access all MediaPlayerOnErrorListener_Access_Array;
   type MediaPlayerOnErrorListener_Access_Array_Access_Array is array (Natural range <>) of MediaPlayerOnErrorListener_Access_Array_Access;
   type MediaPlayerOnErrorListener_Access_Array_Access_Array_Access is access all MediaPlayerOnErrorListener_Access_Array_Access_Array;
   type MediaPlayerOnErrorListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnErrorListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnErrorListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnErrorListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnErrorListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnErrorListener_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnErrorListener_Access_Array_Object'Class then MediaPlayerOnErrorListener_Access_Array_Object'Class (Value.all).Value else null);
   type MediaPlayerOnErrorListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnErrorListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnErrorListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnErrorListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnErrorListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnErrorListener_Access_Array_Access_Array_Object'Class then MediaPlayerOnErrorListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References;

with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.OnErrorListener_Package; use org.allbinary.media.audio.OnErrorListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.MediaPlayerOnErrorListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaPlayerOnErrorListener_Access is org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.MediaPlayerOnErrorListener_Access;
   function "=" (Left, Right : MediaPlayerOnErrorListener_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References."=";
   subtype MediaPlayerOnErrorListener_Access_Array is org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.MediaPlayerOnErrorListener_Access_Array;
   function "=" (Left, Right : MediaPlayerOnErrorListener_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References."=";
   subtype MediaPlayerOnErrorListener_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.MediaPlayerOnErrorListener_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnErrorListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnErrorListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnErrorListener_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnErrorListener_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.Java_Unbox_MediaPlayerOnErrorListener_Access_Array;
   subtype MediaPlayerOnErrorListener_Access_Array_Access_Array is org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.MediaPlayerOnErrorListener_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayerOnErrorListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References."=";
   subtype MediaPlayerOnErrorListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.MediaPlayerOnErrorListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnErrorListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnErrorListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnErrorListener_Package_References.Java_Unbox_MediaPlayerOnErrorListener_Access_Array_Access_Array;

   type MediaPlayerOnErrorListener is new Java_Object and OnErrorListener with null record;

   procedure Initialize (This : in out MediaPlayerOnErrorListener'Class);
   function Create return MediaPlayerOnErrorListener_Access;
   function onError (This : in out MediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) return Boolean;
   procedure onError (This : in out MediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer);

end org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;
package org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References is
   type MediaPlayerOnCompletionListener_Access is access all org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package.MediaPlayerOnCompletionListener'Class;
   type MediaPlayerOnCompletionListener_Access_Array is array (Natural range <>) of MediaPlayerOnCompletionListener_Access;
   type MediaPlayerOnCompletionListener_Access_Array_Access is access all MediaPlayerOnCompletionListener_Access_Array;
   type MediaPlayerOnCompletionListener_Access_Array_Access_Array is array (Natural range <>) of MediaPlayerOnCompletionListener_Access_Array_Access;
   type MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is access all MediaPlayerOnCompletionListener_Access_Array_Access_Array;
   type MediaPlayerOnCompletionListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnCompletionListener_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnCompletionListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnCompletionListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnCompletionListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnCompletionListener_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnCompletionListener_Access_Array_Object'Class then MediaPlayerOnCompletionListener_Access_Array_Object'Class (Value.all).Value else null);
   type MediaPlayerOnCompletionListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MediaPlayerOnCompletionListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'Class then MediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References;

with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.OnCompletionListener_Package; use org.allbinary.media.audio.OnCompletionListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;

package org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MediaPlayerOnCompletionListener_Access is org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.MediaPlayerOnCompletionListener_Access;
   function "=" (Left, Right : MediaPlayerOnCompletionListener_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References."=";
   subtype MediaPlayerOnCompletionListener_Access_Array is org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.MediaPlayerOnCompletionListener_Access_Array;
   function "=" (Left, Right : MediaPlayerOnCompletionListener_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References."=";
   subtype MediaPlayerOnCompletionListener_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.MediaPlayerOnCompletionListener_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnCompletionListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnCompletionListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnCompletionListener_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnCompletionListener_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.Java_Unbox_MediaPlayerOnCompletionListener_Access_Array;
   subtype MediaPlayerOnCompletionListener_Access_Array_Access_Array is org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.MediaPlayerOnCompletionListener_Access_Array_Access_Array;
   function "=" (Left, Right : MediaPlayerOnCompletionListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References."=";
   subtype MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References."=";
   function Java_Box (Value : MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.Java_Box;
   function Java_Unbox_MediaPlayerOnCompletionListener_Access_Array_Access_Array (Value : access Java_Object'Class) return MediaPlayerOnCompletionListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package_References.Java_Unbox_MediaPlayerOnCompletionListener_Access_Array_Access_Array;

   type MediaPlayerOnCompletionListener is new Java_Object and OnCompletionListener with null record;

   procedure Initialize (This : in out MediaPlayerOnCompletionListener'Class);
   function Create return MediaPlayerOnCompletionListener_Access;
   procedure onCompletion (This : in out MediaPlayerOnCompletionListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package;
package org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References is
   type AndroidMediaPlayerOnBufferingUpdateListener_Access is access all org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package.AndroidMediaPlayerOnBufferingUpdateListener'Class;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnBufferingUpdateListener_Access;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access is access all AndroidMediaPlayerOnBufferingUpdateListener_Access_Array;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is access all AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Object'Class then AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidMediaPlayerOnBufferingUpdateListener_Access is org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.AndroidMediaPlayerOnBufferingUpdateListener_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnBufferingUpdateListener_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype AndroidMediaPlayerOnBufferingUpdateListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.AndroidMediaPlayerOnBufferingUpdateListener_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array;
   subtype AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References."=";
   subtype AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package_References.Java_Unbox_AndroidMediaPlayerOnBufferingUpdateListener_Access_Array_Access_Array;

   type AndroidMediaPlayerOnBufferingUpdateListener is new MediaPlayerOnBufferingUpdateListener with record
      ON_BUFFERING_UPDATE : Unbounded_String;
      androidMediaPlayerWrapperListener_Var : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnBufferingUpdateListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class);
   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnBufferingUpdateListener_Access;
   procedure onBufferingUpdate (This : in out AndroidMediaPlayerOnBufferingUpdateListener; mediaPlayer_Param : access MediaPlayer_Package.MediaPlayer'Class; i : Integer);

end org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package;
package org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References is
   type AndroidMediaPlayerOnPreparedListener_Access is access all org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package.AndroidMediaPlayerOnPreparedListener'Class;
   type AndroidMediaPlayerOnPreparedListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnPreparedListener_Access;
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Access is access all AndroidMediaPlayerOnPreparedListener_Access_Array;
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnPreparedListener_Access_Array_Access;
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is access all AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array;
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnPreparedListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnPreparedListener_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnPreparedListener_Access_Array_Object'Class then AndroidMediaPlayerOnPreparedListener_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidMediaPlayerOnPreparedListener_Access is org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.AndroidMediaPlayerOnPreparedListener_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnPreparedListener_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References."=";
   subtype AndroidMediaPlayerOnPreparedListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.AndroidMediaPlayerOnPreparedListener_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnPreparedListener_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References."=";
   subtype AndroidMediaPlayerOnPreparedListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.AndroidMediaPlayerOnPreparedListener_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnPreparedListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnPreparedListener_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array;
   subtype AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References."=";
   subtype AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package_References.Java_Unbox_AndroidMediaPlayerOnPreparedListener_Access_Array_Access_Array;

   type AndroidMediaPlayerOnPreparedListener is new MediaPlayerOnPreparedListener with record
      ON_PREPARE : Unbounded_String;
      androidMediaPlayerWrapperListener_Var : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnPreparedListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class);
   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnPreparedListener_Access;
   procedure onPrepared (This : in out AndroidMediaPlayerOnPreparedListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package;
package org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References is
   type AndroidMediaPlayerOnErrorListener_Access is access all org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package.AndroidMediaPlayerOnErrorListener'Class;
   type AndroidMediaPlayerOnErrorListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnErrorListener_Access;
   type AndroidMediaPlayerOnErrorListener_Access_Array_Access is access all AndroidMediaPlayerOnErrorListener_Access_Array;
   type AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnErrorListener_Access_Array_Access;
   type AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access is access all AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array;
   type AndroidMediaPlayerOnErrorListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnErrorListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnErrorListener_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnErrorListener_Access_Array_Object'Class then AndroidMediaPlayerOnErrorListener_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidMediaPlayerOnErrorListener_Access is org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.AndroidMediaPlayerOnErrorListener_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnErrorListener_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References."=";
   subtype AndroidMediaPlayerOnErrorListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.AndroidMediaPlayerOnErrorListener_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnErrorListener_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References."=";
   subtype AndroidMediaPlayerOnErrorListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.AndroidMediaPlayerOnErrorListener_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnErrorListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnErrorListener_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array;
   subtype AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References."=";
   subtype AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package_References.Java_Unbox_AndroidMediaPlayerOnErrorListener_Access_Array_Access_Array;

   type AndroidMediaPlayerOnErrorListener is new MediaPlayerOnErrorListener with record
      ON_ERROR : Unbounded_String;
      androidMediaPlayerWrapperListener_Var : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnErrorListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class);
   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnErrorListener_Access;
   function onError (This : in out AndroidMediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer) return Boolean;
   procedure onError (This : in out AndroidMediaPlayerOnErrorListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class; what : Integer; extra : Integer);

end org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener_Package;

with AllBinary_Java;
limited with org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package;
package org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References is
   type AndroidMediaPlayerOnCompletionListener_Access is access all org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package.AndroidMediaPlayerOnCompletionListener'Class;
   type AndroidMediaPlayerOnCompletionListener_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnCompletionListener_Access;
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Access is access all AndroidMediaPlayerOnCompletionListener_Access_Array;
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array is array (Natural range <>) of AndroidMediaPlayerOnCompletionListener_Access_Array_Access;
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is access all AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array;
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnCompletionListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnCompletionListener_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnCompletionListener_Access_Array_Object'Class then AndroidMediaPlayerOnCompletionListener_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'Class then AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References;

with org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package; use org.allbinary.media.audio.MediaPlayerOnCompletionListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References;
with org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package; use org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener_Package;
limited with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References;
with org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package; use org.allbinary.media.audio.MediaPlayerOnPreparedListener_Package;
with org.allbinary.media.audio.MediaPlayerOnErrorListener_Package; use org.allbinary.media.audio.MediaPlayerOnErrorListener_Package;

package org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package is

   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MediaPlayer_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access;
   use type MediaPlayer_Access;
   subtype MediaPlayer_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array;
   use type MediaPlayer_Access_Array;
   subtype MediaPlayer_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access;
   subtype MediaPlayer_Access_Array_Access_Array is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array;
   use type MediaPlayer_Access_Array_Access_Array;
   subtype MediaPlayer_Access_Array_Access_Array_Access is android.media.MediaPlayer_Package_References.MediaPlayer_Access_Array_Access_Array_Access;
   use type MediaPlayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access;
   use type AndroidMediaPlayerWrapper_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package_References.AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapper_Access_Array_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access;
   use type AndroidMediaPlayerWrapperListener_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array;
   subtype AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerWrapperListener_Package_References.AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   use type AndroidMediaPlayerWrapperListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidMediaPlayerOnCompletionListener_Access is org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.AndroidMediaPlayerOnCompletionListener_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnCompletionListener_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References."=";
   subtype AndroidMediaPlayerOnCompletionListener_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.AndroidMediaPlayerOnCompletionListener_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnCompletionListener_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References."=";
   subtype AndroidMediaPlayerOnCompletionListener_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.AndroidMediaPlayerOnCompletionListener_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnCompletionListener_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnCompletionListener_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array;
   subtype AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array is org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References."=";
   subtype AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access is org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References."=";
   function Java_Box (Value : AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.Java_Box;
   function Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array_Access renames org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package_References.Java_Unbox_AndroidMediaPlayerOnCompletionListener_Access_Array_Access_Array;

   type AndroidMediaPlayerOnCompletionListener is new MediaPlayerOnCompletionListener with record
      ON_COMPLETE : Unbounded_String;
      androidMediaPlayerWrapperListener_Var : AndroidMediaPlayerWrapperListener_Access;
   end record;

   procedure Initialize (This : in out AndroidMediaPlayerOnCompletionListener'Class; androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class);
   function Create (androidMediaPlayerWrapperListener_Var_Param : access AndroidMediaPlayerWrapperListener_Package.AndroidMediaPlayerWrapperListener'Class) return AndroidMediaPlayerOnCompletionListener_Access;
   procedure onCompletion (This : in out AndroidMediaPlayerOnCompletionListener; mp_Param : access MediaPlayer_Package.MediaPlayer'Class);

end org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener_Package;


