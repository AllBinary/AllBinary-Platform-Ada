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


with javax.microedition.media.Control_Package; use javax.microedition.media.Control_Package;
with javax.microedition.media.Control_Package_References;
with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
with javax.microedition.media.TimeBase_Package; use javax.microedition.media.TimeBase_Package;
with javax.microedition.media.TimeBase_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.media.audio.NullControl_Package; use org.allbinary.media.audio.NullControl_Package;
with org.allbinary.media.audio.NullControl_Package;

package body org.allbinary.media.audio.BasicPlayer_Package is

   package MediaException_Package renames Standard.javax.microedition.media.MediaException_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Control_Access is javax.microedition.media.Control_Package_References.Control_Access;
   function "=" (Left, Right : Control_Access) return Boolean renames javax.microedition.media.Control_Package_References."=";
   subtype Control_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array;
   function "=" (Left, Right : Control_Access_Array) return Boolean renames javax.microedition.media.Control_Package_References."=";
   subtype Control_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access;
   function "=" (Left, Right : Control_Access_Array_Access) return Boolean renames javax.microedition.media.Control_Package_References."=";
   subtype Control_Access_Array_Access_Array is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array;
   function "=" (Left, Right : Control_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Control_Package_References."=";
   subtype Control_Access_Array_Access_Array_Access is javax.microedition.media.Control_Package_References.Control_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Control_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Control_Package_References."=";
   subtype PlayerListener_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access;
   function "=" (Left, Right : PlayerListener_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array;
   function "=" (Left, Right : PlayerListener_Access_Array) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access;
   function "=" (Left, Right : PlayerListener_Access_Array_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access_Array is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerListener_Access_Array_Access_Array) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype PlayerListener_Access_Array_Access_Array_Access is javax.microedition.media.PlayerListener_Package_References.PlayerListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.PlayerListener_Package_References."=";
   subtype TimeBase_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access;
   function "=" (Left, Right : TimeBase_Access) return Boolean renames javax.microedition.media.TimeBase_Package_References."=";
   subtype TimeBase_Access_Array is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array;
   function "=" (Left, Right : TimeBase_Access_Array) return Boolean renames javax.microedition.media.TimeBase_Package_References."=";
   subtype TimeBase_Access_Array_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access;
   function "=" (Left, Right : TimeBase_Access_Array_Access) return Boolean renames javax.microedition.media.TimeBase_Package_References."=";
   subtype TimeBase_Access_Array_Access_Array is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access_Array;
   function "=" (Left, Right : TimeBase_Access_Array_Access_Array) return Boolean renames javax.microedition.media.TimeBase_Package_References."=";
   subtype TimeBase_Access_Array_Access_Array_Access is javax.microedition.media.TimeBase_Package_References.TimeBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeBase_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.TimeBase_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out BasicPlayer'Class) is
   begin
      null;
      This.listenersList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.timeBase := null;
      This.stateP := 0;
      This.loopCountP := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPlayer'Class) is
   begin
      Initialize_Fields (This);
        BasicPlayer'Class (This).setLoopCount (0);
        BasicPlayer'Class (This).setState (Player_Package.UNREALIZED);
   end Initialize;

   function Create return BasicPlayer_Access is
      This : constant BasicPlayer_Access := new BasicPlayer;
   begin
      BasicPlayer_Package.Initialize (This.all);
      return This;
   end Create;

   function getContentType (This : in out BasicPlayer) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getContentType;

   function getControl (This : in out BasicPlayer; controlType : Unbounded_String) return Control_Access is
   begin
        return Control_Access (NullControl_Package.Create);
   end getControl;

   function getControls (This : in out BasicPlayer) return Control_Access_Array_Access is
   begin
        return new Control_Access_Array'(0 .. (0) - 1 => null);
   end getControls;

   procedure close (This : in out BasicPlayer) is
   begin
        null;
   end close;

   procedure addPlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        if not (This.listenersList.contains (Java_Object_Access (playerListener))) then
            This.listenersList.add (Java_Object_Access (playerListener));
        end if;
   end addPlayerListener;

   procedure removePlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        This.listenersList.remove (Java_Object_Access (playerListener));
   end removePlayerListener;

   function getState (This : in out BasicPlayer) return Integer is
   begin
        return This.stateP;
   end getState;

   procedure setState (This : in out BasicPlayer; state : Integer) is
   begin
        This.stateP := state;
   end setState;

   function getDuration (This : in out BasicPlayer) return Long_Long_Integer is
   begin
        return 0;
   end getDuration;

   function getMediaTime (This : in out BasicPlayer) return Long_Long_Integer is
   begin
        return 0;
   end getMediaTime;

   function getTimeBase (This : in out BasicPlayer) return TimeBase_Access is
   begin
        return This.timeBase;
   end getTimeBase;

   procedure setTimeBase (This : in out BasicPlayer; timeBase_Param : access TimeBase_Package.TimeBase'Class) is
      timeBase : constant TimeBase_Access := TimeBase_Access (timeBase_Param);
   begin
        This.timeBase := timeBase;
   end setTimeBase;

   procedure deallocate (This : in out BasicPlayer) is
   begin
        null;
   end deallocate;

   --  throws MediaException
   procedure prefetch (This : in out BasicPlayer) is
   begin
        null;
   end prefetch;

   --  throws MediaException
   procedure realize (This : in out BasicPlayer) is
   begin
        null;
   end realize;

   procedure setLoopCount (This : in out BasicPlayer; count : Integer) is
   begin
        This.loopCountP := count;
   end setLoopCount;

   function getLoopCount (This : in out BasicPlayer) return Integer is
   begin
        return This.loopCountP;
   end getLoopCount;

   --  throws MediaException
   function setMediaTime (This : in out BasicPlayer; now : Long_Long_Integer) return Long_Long_Integer is
   begin
        return 0;
   end setMediaTime;

   --  throws MediaException
   procedure start (This : in out BasicPlayer) is
   begin
        BasicPlayer'Class (This).setState (Player_Package.STARTED);
   end start;

   --  throws MediaException
   procedure stop (This : in out BasicPlayer) is
   begin
        BasicPlayer'Class (This).setState (Player_Package.PREFETCHED);
   end stop;

   procedure setVolume (This : in out BasicPlayer; leftVolume : Integer; rightVolume : Integer) is
   begin
        null;
   end setVolume;

   procedure getControl (This : in out BasicPlayer; controlType : Unbounded_String) is
      Java_Result : constant Control_Access := BasicPlayer'Class (This).getControl (controlType => controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

   procedure setMediaTime (This : in out BasicPlayer; now : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := BasicPlayer'Class (This).setMediaTime (now => now);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setMediaTime;

begin
   null;
   CONTROL_TYPE := To_Unbounded_String ("ToneControl");

end org.allbinary.media.audio.BasicPlayer_Package;


