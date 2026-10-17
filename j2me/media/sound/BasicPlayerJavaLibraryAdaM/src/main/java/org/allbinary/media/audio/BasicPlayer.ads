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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;
--  with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
--  with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.media.audio.Controllable2_Package; use org.allbinary.media.audio.Controllable2_Package;
with org.allbinary.media.audio.NullControl_Package; use org.allbinary.media.audio.NullControl_Package;

package org.allbinary.media.audio.BasicPlayer_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicPlayer is tagged;
   type BasicPlayer_Access is access all BasicPlayer'Class;
   type BasicPlayer_Access_Array is array (Natural range <>) of BasicPlayer_Access;
   type BasicPlayer_Access_Array_Access is access all BasicPlayer_Access_Array;

   type BasicPlayer is new Player and Controllable2 with record
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
   procedure addPlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener'Class);
   procedure removePlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener'Class);
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


