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

with AllBinary_Java;
limited with org.allbinary.media.audio.BasicPlayer_Package;
package org.allbinary.media.audio.BasicPlayer_Package_References is
   type BasicPlayer_Access is access all org.allbinary.media.audio.BasicPlayer_Package.BasicPlayer'Class;
   type BasicPlayer_Access_Array is array (Natural range <>) of BasicPlayer_Access;
   type BasicPlayer_Access_Array_Access is access all BasicPlayer_Access_Array;
   type BasicPlayer_Access_Array_Access_Array is array (Natural range <>) of BasicPlayer_Access_Array_Access;
   type BasicPlayer_Access_Array_Access_Array_Access is access all BasicPlayer_Access_Array_Access_Array;
   type BasicPlayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPlayer_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPlayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPlayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPlayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPlayer_Access_Array_Access is (if Value /= null and then Value.all in BasicPlayer_Access_Array_Object'Class then BasicPlayer_Access_Array_Object'Class (Value.all).Value else null);
   type BasicPlayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicPlayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicPlayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicPlayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicPlayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicPlayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicPlayer_Access_Array_Access_Array_Object'Class then BasicPlayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.BasicPlayer_Package_References;

with org.allbinary.media.audio.BasicPlayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.media.Control_Package;
with javax.microedition.media.Control_Package_References;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
limited with javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.audio.Controllable2_Package; use org.allbinary.media.audio.Controllable2_Package;

package org.allbinary.media.audio.BasicPlayer_Package is

   package Control_Package renames Standard.javax.microedition.media.Control_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package PlayerListener_Package renames Standard.javax.microedition.media.PlayerListener_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Control_Access is javax.microedition.media.Control_Package_References.Control_Access;
   use type Control_Access;
   subtype Control_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array;
   use type Control_Access_Array;
   subtype Control_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access;
   use type Control_Access_Array_Access;
   subtype Control_Access_Array_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array;
   use type Control_Access_Array_Access_Array;
   subtype Control_Access_Array_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array_Access;
   use type Control_Access_Array_Access_Array_Access;
   subtype PlayerListener_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access;
   use type PlayerListener_Access;
   subtype PlayerListener_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array;
   use type PlayerListener_Access_Array;
   subtype PlayerListener_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access;
   use type PlayerListener_Access_Array_Access;
   subtype PlayerListener_Access_Array_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array;
   use type PlayerListener_Access_Array_Access_Array;
   subtype PlayerListener_Access_Array_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array_Access;
   use type PlayerListener_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicPlayer_Access is org.allbinary.media.audio.BasicPlayer_Package_References.BasicPlayer_Access;
   function "=" (Left, Right : BasicPlayer_Access) return Boolean renames org.allbinary.media.audio.BasicPlayer_Package_References."=";
   subtype BasicPlayer_Access_Array is org.allbinary.media.audio.BasicPlayer_Package_References.BasicPlayer_Access_Array;
   function "=" (Left, Right : BasicPlayer_Access_Array) return Boolean renames org.allbinary.media.audio.BasicPlayer_Package_References."=";
   subtype BasicPlayer_Access_Array_Access is org.allbinary.media.audio.BasicPlayer_Package_References.BasicPlayer_Access_Array_Access;
   function "=" (Left, Right : BasicPlayer_Access_Array_Access) return Boolean renames org.allbinary.media.audio.BasicPlayer_Package_References."=";
   function Java_Box (Value : BasicPlayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.BasicPlayer_Package_References.Java_Box;
   function Java_Unbox_BasicPlayer_Access_Array (Value : access Java_Object'Class) return BasicPlayer_Access_Array_Access renames org.allbinary.media.audio.BasicPlayer_Package_References.Java_Unbox_BasicPlayer_Access_Array;
   subtype BasicPlayer_Access_Array_Access_Array is org.allbinary.media.audio.BasicPlayer_Package_References.BasicPlayer_Access_Array_Access_Array;
   function "=" (Left, Right : BasicPlayer_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.BasicPlayer_Package_References."=";
   subtype BasicPlayer_Access_Array_Access_Array_Access is org.allbinary.media.audio.BasicPlayer_Package_References.BasicPlayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicPlayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.BasicPlayer_Package_References."=";
   function Java_Box (Value : BasicPlayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.BasicPlayer_Package_References.Java_Box;
   function Java_Unbox_BasicPlayer_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicPlayer_Access_Array_Access_Array_Access renames org.allbinary.media.audio.BasicPlayer_Package_References.Java_Unbox_BasicPlayer_Access_Array_Access_Array;

   type BasicPlayer is new Java_Object and Player and Controllable2 with record
      commonStrings : CommonStrings_Access;
      listenersList : BasicArrayList_Access;
      stateP : Integer;
      loopCountP : Integer;
   end record;
   CONTROL_TYPE : Unbounded_String;

   procedure Initialize (This : in out BasicPlayer'Class);
   function Create return BasicPlayer_Access;
   function getContentType (This : in out BasicPlayer) return Unbounded_String;
   function getControl (This : in out BasicPlayer; controlType : Unbounded_String) return Control_Access;
   procedure getControl (This : in out BasicPlayer; controlType : Unbounded_String);
   function getControls (This : in out BasicPlayer) return Control_Access_Array_Access;
   procedure close (This : in out BasicPlayer);
   procedure addPlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   procedure removePlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener_Package.PlayerListener'Class);
   function getState (This : in out BasicPlayer) return Integer;
   procedure setState (This : in out BasicPlayer; state : Integer);
   function getDuration (This : in out BasicPlayer) return Long_Long_Integer;
   function getMediaTime (This : in out BasicPlayer) return Long_Long_Integer;
   procedure deallocate (This : in out BasicPlayer);
   procedure prefetch (This : in out BasicPlayer);
   procedure realize (This : in out BasicPlayer);
   procedure setLoopCount (This : in out BasicPlayer; count : Integer);
   function getLoopCount (This : in out BasicPlayer) return Integer;
   function setMediaTime (This : in out BasicPlayer; now : Long_Long_Integer) return Long_Long_Integer;
   procedure setMediaTime (This : in out BasicPlayer; now : Long_Long_Integer);
   procedure start (This : in out BasicPlayer);
   procedure stop (This : in out BasicPlayer);
   procedure setVolume (This : in out BasicPlayer; leftVolume : Integer; rightVolume : Integer);

end org.allbinary.media.audio.BasicPlayer_Package;


