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
with javax.microedition.media.Controllable_Package; use javax.microedition.media.Controllable_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package; use javax.microedition.media.PlayerListener_Package;
with javax.microedition.media.PlayerListener_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.media.audio.Controllable2_Package; use org.allbinary.media.audio.Controllable2_Package;
with org.allbinary.media.audio.Controllable2_Package;

package body org.allbinary.media.audio.PlayerComposite_Package is

   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   procedure Initialize_Fields (This : in out PlayerComposite'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.timeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerComposite'Class; player_Param : access Player_Package.Player'Class; repeatTime : Integer) is
      player : constant Player_Access := Player_Access (player_Param);
   begin
      Initialize_Fields (This);
        This.player := player;
        This.timeElapsedHelper.delay_Id := repeatTime;
   end Initialize;

   function Create (player_Param : access Player_Package.Player'Class; repeatTime : Integer) return PlayerComposite_Access is
      This : constant PlayerComposite_Access := new PlayerComposite;
   begin
      PlayerComposite_Package.Initialize (This.all, player_Param, repeatTime);
      return This;
   end Create;

   procedure addPlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
   begin
        This.player.addPlayerListener (playerListener);
   end addPlayerListener;

   procedure removePlayerListener (This : in out PlayerComposite; playerListener_Param : access PlayerListener_Package.PlayerListener'Class) is
      playerListener : constant PlayerListener_Access := PlayerListener_Access (playerListener_Param);
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

   procedure prefetch (This : in out PlayerComposite) is
   begin
        begin
            This.player.prefetch;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PlayerComposite_Access'(This'Unchecked_Access), To_Unbounded_String ("prefetch"), e);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PlayerComposite_Access'(This'Unchecked_Access), To_Unbounded_String ("realize"), e);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PlayerComposite_Access'(This'Unchecked_Access), To_Unbounded_String ("setMediaTime"), e);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PlayerComposite_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME, e);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PlayerComposite_Access'(This'Unchecked_Access), To_Unbounded_String ("stop"), e);
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
        return null;
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

   procedure setMediaTime (This : in out PlayerComposite; now : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := PlayerComposite'Class (This).setMediaTime (now => now);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setMediaTime;

   procedure getControl (This : in out PlayerComposite; controlType : Unbounded_String) is
      Java_Result : constant Control_Access := PlayerComposite'Class (This).getControl (controlType => controlType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getControl;

end org.allbinary.media.audio.PlayerComposite_Package;


