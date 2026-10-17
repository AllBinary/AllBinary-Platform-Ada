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


package body org.allbinary.media.audio.PlayerComposite_Package is

   procedure Initialize_Fields (This : in out PlayerComposite'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.timeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerComposite'Class; player : Player_Access; repeatTime : Integer) is
   begin
      Initialize_Fields (This);
        This.player := player;
        This.timeElapsedHelper.delay_Id := repeatTime;
   end Initialize;

   function Create (player : Player_Access; repeatTime : Integer) return PlayerComposite_Access is
      This : constant PlayerComposite_Access := new PlayerComposite;
   begin
      Initialize (This.all, player, repeatTime);
      return This;
   end Create;

   procedure addPlayerListener (This : in out PlayerComposite; playerListener : PlayerListener_Access) is
   begin
        This.player.addPlayerListener (playerListener);
   end addPlayerListener;

   procedure removePlayerListener (This : in out PlayerComposite; playerListener : PlayerListener_Access) is
   begin
        This.player.removePlayerListener (playerListener);
   end removePlayerListener;

   procedure close (This : in out PlayerComposite) is
   begin
        This.player.close;
   end close;

   procedure deallocate (This : in out PlayerComposite) is
   begin
        This.player.deallocate;
   end deallocate;

   function getContentType (This : in out PlayerComposite) return Unbounded_String is
   begin
        return This.player.getContentType;
   end getContentType;

   function getDuration (This : in out PlayerComposite) return Long_Long_Integer is
   begin
        return This.player.getDuration;
   end getDuration;

   function getMediaTime (This : in out PlayerComposite) return Long_Long_Integer is
   begin
        return This.player.getMediaTime;
   end getMediaTime;

   function getTimeBase (This : in out PlayerComposite) return TimeBase_Access is
   begin
        return (TimeBaseInterface_Access (This.player)).getTimeBase;
   end getTimeBase;

   --  throws MediaException
   procedure setTimeBase (This : in out PlayerComposite; timeBase : TimeBase_Access) is
   begin
        (TimeBaseInterface_Access (This.player)).setTimeBase (timeBase);
   end setTimeBase;

   procedure prefetch (This : in out PlayerComposite) is
   begin
        begin
            This.player.prefetch;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("prefetch"), e);
                end;
        end;
   end prefetch;

   procedure realize (This : in out PlayerComposite) is
   begin
        begin
            This.player.realize;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("realize"), e);
                end;
        end;
   end realize;

   function getState (This : in out PlayerComposite) return Integer is
   begin
        return This.player.getState;
   end getState;

   procedure setLoopCount (This : in out PlayerComposite; count : Integer) is
   begin
        This.player.setLoopCount (count);
   end setLoopCount;

   function setMediaTime (This : in out PlayerComposite; now : Long_Long_Integer) return Long_Long_Integer is
   begin
        begin
            return This.player.setMediaTime (now);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setMediaTime"), e);
            return Long_Long_Integer (-(1));
                end;
        end;
   end setMediaTime;

   procedure start (This : in out PlayerComposite) is
   begin
        begin
            if This.timeElapsedHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
                This.player.start;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.START_METHOD_NAME, e);
                end;
        end;
   end start;

   procedure stop (This : in out PlayerComposite) is
   begin
        begin
            This.player.stop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("stop"), e);
                end;
        end;
   end stop;

   function getControl (This : in out PlayerComposite; controlType : Unbounded_String) return Control_Access is
   begin
        return This.player.getControl (controlType);
   end getControl;

   function getControls (This : in out PlayerComposite) return Control_Access_Array_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getControls;

   procedure setVolume (This : in out PlayerComposite; leftVolume : Integer; rightVolume : Integer) is
      controllable2 : Controllable2_Access;
   begin
        controllable2 := (Controllable2_Access (This.player));
        controllable2.setVolume (leftVolume, rightVolume);
   end setVolume;

   function getPlayerP (This : in out PlayerComposite) return Player_Access is
   begin
        return This.player;
   end getPlayerP;

   procedure getContentType (This : in out PlayerComposite) is
      Java_Result : constant Unbounded_String := PlayerComposite'Class (This).getContentType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getContentType;

   procedure getDuration (This : in out PlayerComposite) is
      Java_Result : constant Long_Long_Integer := PlayerComposite'Class (This).getDuration;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDuration;

   procedure getMediaTime (This : in out PlayerComposite) is
      Java_Result : constant Long_Long_Integer := PlayerComposite'Class (This).getMediaTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMediaTime;

   procedure getTimeBase (This : in out PlayerComposite) is
      Java_Result : constant TimeBase_Access := PlayerComposite'Class (This).getTimeBase;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeBase;

   procedure getState (This : in out PlayerComposite) is
      Java_Result : constant Integer := PlayerComposite'Class (This).getState;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getState;

   procedure setMediaTime (This : in out PlayerComposite; now : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := PlayerComposite'Class (This).setMediaTime (now);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setMediaTime;

   procedure getControl (This : in out PlayerComposite; controlType : Unbounded_String) is
      Java_Result : constant Control_Access := PlayerComposite'Class (This).getControl (controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

   procedure getControls (This : in out PlayerComposite) is
      Java_Result : constant Control_Access_Array_Access := PlayerComposite'Class (This).getControls;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControls;

   procedure getPlayerP (This : in out PlayerComposite) is
      Java_Result : constant Player_Access := PlayerComposite'Class (This).getPlayerP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerP;

end org.allbinary.media.audio.PlayerComposite_Package;


