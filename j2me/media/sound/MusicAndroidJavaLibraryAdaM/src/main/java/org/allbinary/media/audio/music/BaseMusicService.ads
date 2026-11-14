--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.media.audio.music.BaseMusicService_Package;
package org.allbinary.media.audio.music.BaseMusicService_Package_References is
   type BaseMusicService_Access is access all org.allbinary.media.audio.music.BaseMusicService_Package.BaseMusicService'Class;
   type BaseMusicService_Access_Array is array (Natural range <>) of BaseMusicService_Access;
   type BaseMusicService_Access_Array_Access is access all BaseMusicService_Access_Array;
   type BaseMusicService_Access_Array_Access_Array is array (Natural range <>) of BaseMusicService_Access_Array_Access;
   type BaseMusicService_Access_Array_Access_Array_Access is access all BaseMusicService_Access_Array_Access_Array;
   type BaseMusicService_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseMusicService_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseMusicService_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseMusicService_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseMusicService_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseMusicService_Access_Array_Access is (if Value /= null and then Value.all in BaseMusicService_Access_Array_Object'Class then BaseMusicService_Access_Array_Object'Class (Value.all).Value else null);
   type BaseMusicService_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseMusicService_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseMusicService_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseMusicService_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseMusicService_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseMusicService_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseMusicService_Access_Array_Access_Array_Object'Class then BaseMusicService_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.music.BaseMusicService_Package_References;

with org.allbinary.media.audio.music.BaseMusicService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.app.Service_Package; use android.app.Service_Package;
limited with android.content.Intent_Package;
with android.content.Intent_Package_References;
limited with android.media.MediaPlayer_Package;
with android.media.MediaPlayer_Package_References;
limited with android.os.IBinder_Package;
with android.os.IBinder_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStateStrings_Package;
with org.allbinary.string_Id.CommonStateStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.media.audio.music.BaseMusicService_Package is

   package Service_Package renames Standard.android.app.Service_Package;
   package Intent_Package renames Standard.android.content.Intent_Package;
   package MediaPlayer_Package renames Standard.android.media.MediaPlayer_Package;
   package IBinder_Package renames Standard.android.os.IBinder_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStateStrings_Package renames Standard.org.allbinary.string_Id.CommonStateStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Intent_Access is android.content.Intent_Package_References.Intent_Access;
   use type Intent_Access;
   subtype Intent_Access_Array is android.content.Intent_Package_References.Intent_Access_Array;
   use type Intent_Access_Array;
   subtype Intent_Access_Array_Access is android.content.Intent_Package_References.Intent_Access_Array_Access;
   use type Intent_Access_Array_Access;
   subtype Intent_Access_Array_Access_Array is android.content.Intent_Package_References.Intent_Access_Array_Access_Array;
   use type Intent_Access_Array_Access_Array;
   subtype Intent_Access_Array_Access_Array_Access is android.content.Intent_Package_References.Intent_Access_Array_Access_Array_Access;
   use type Intent_Access_Array_Access_Array_Access;
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
   subtype IBinder_Access is android.os.IBinder_Package_References.IBinder_Access;
   use type IBinder_Access;
   subtype IBinder_Access_Array is android.os.IBinder_Package_References.IBinder_Access_Array;
   use type IBinder_Access_Array;
   subtype IBinder_Access_Array_Access is android.os.IBinder_Package_References.IBinder_Access_Array_Access;
   use type IBinder_Access_Array_Access;
   subtype IBinder_Access_Array_Access_Array is android.os.IBinder_Package_References.IBinder_Access_Array_Access_Array;
   use type IBinder_Access_Array_Access_Array;
   subtype IBinder_Access_Array_Access_Array_Access is android.os.IBinder_Package_References.IBinder_Access_Array_Access_Array_Access;
   use type IBinder_Access_Array_Access_Array_Access;
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
   subtype CommonStateStrings_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access;
   use type CommonStateStrings_Access;
   subtype CommonStateStrings_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array;
   use type CommonStateStrings_Access_Array;
   subtype CommonStateStrings_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access;
   use type CommonStateStrings_Access_Array_Access;
   subtype CommonStateStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array;
   use type CommonStateStrings_Access_Array_Access_Array;
   subtype CommonStateStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array_Access;
   use type CommonStateStrings_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BaseMusicService_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access;
   function "=" (Left, Right : BaseMusicService_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array;
   function "=" (Left, Right : BaseMusicService_Access_Array) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   function Java_Box (Value : BaseMusicService_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.music.BaseMusicService_Package_References.Java_Box;
   function Java_Unbox_BaseMusicService_Access_Array (Value : access Java_Object'Class) return BaseMusicService_Access_Array_Access renames org.allbinary.media.audio.music.BaseMusicService_Package_References.Java_Unbox_BaseMusicService_Access_Array;
   subtype BaseMusicService_Access_Array_Access_Array is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access_Array;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   subtype BaseMusicService_Access_Array_Access_Array_Access is org.allbinary.media.audio.music.BaseMusicService_Package_References.BaseMusicService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseMusicService_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.music.BaseMusicService_Package_References."=";
   function Java_Box (Value : BaseMusicService_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.music.BaseMusicService_Package_References.Java_Box;
   function Java_Unbox_BaseMusicService_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseMusicService_Access_Array_Access_Array_Access renames org.allbinary.media.audio.music.BaseMusicService_Package_References.Java_Unbox_BaseMusicService_Access_Array_Access_Array;

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
   function onBind (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class) return IBinder_Access;
   procedure onBind (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class);
   procedure onCreate (This : in out BaseMusicService);
   procedure onDestroy (This : in out BaseMusicService);
   procedure pause (This : in out BaseMusicService);
   procedure resume (This : in out BaseMusicService);
   procedure start (This : in out BaseMusicService);
   procedure onStart (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; startid : Integer);
   function onStartCommand (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; flags : Integer; startId : Integer) return Integer;
   procedure onStartCommand (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class; flags : Integer; startId : Integer);
   procedure onStartCommandIntent (This : in out BaseMusicService; intent_Param : access Intent_Package.Intent'Class);

end org.allbinary.media.audio.music.BaseMusicService_Package;


