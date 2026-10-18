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


package body org.allbinary.media.audio.BasicPlayer_Package is

   procedure Initialize_Fields (This : in out BasicPlayer'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.listenersList := BasicArrayListD_Package.Create;
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
        return NullControl_Package.Create;
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
        if not (This.listenersList.contains (playerListener)) then
            This.listenersList.add (playerListener);
        end if;
   end addPlayerListener;

   procedure removePlayerListener (This : in out BasicPlayer; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        This.listenersList.remove (playerListener);
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
      Java_Result : constant Control_Access := BasicPlayer'Class (This).getControl (controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

   procedure setMediaTime (This : in out BasicPlayer; now : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := BasicPlayer'Class (This).setMediaTime (now);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setMediaTime;

begin
   null;
   CONTROL_TYPE := To_Unbounded_String ("ToneControl");

end org.allbinary.media.audio.BasicPlayer_Package;


