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


with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.Sounds_Package; use org.allbinary.media.audio.Sounds_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package; use org.allbinary.media.audio.AndroidMediaPlayerWrapper_Package;
with org.allbinary.media.audio.PlayerComposite_Package; use org.allbinary.media.audio.PlayerComposite_Package;
with org.allbinary.media.audio.MediaPlayerUtil_Package; use org.allbinary.media.audio.MediaPlayerUtil_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package body org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package MediaException_Package renames Standard.javax.microedition.media.MediaException_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out AllBinaryMediaManager'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryMediaManager'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryMediaManager_Access is
      This : constant AllBinaryMediaManager_Access := new AllBinaryMediaManager;
   begin
      AllBinaryMediaManager_Package.Initialize (This.all);
      return This;
   end Create;

   function isMuted return Boolean is
   begin
        return False;
   end isMuted;

   procedure setMuted (aMuted : Boolean) is
   begin
        null;
   end setMuted;

   function update return Boolean is
   begin
        return True;
   end update;

   --  throws Exception
   procedure init (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, commonString.INIT);
        AllBinaryMediaManager_Package.shutdown (soundsFactoryInterface);
        ProgressCanvasFactory_Package.getInstance.addNormalPortion (50, To_Unbounded_String ("Media Manager"));
        TsUtil_Package.getInstance.gc;
        Sounds_Package.Create (soundsFactoryInterface).init;
        logUtil.putF (commonString.END_Id, AllBinaryMediaManager_Package.THIS_Id, commonString.INIT);
   end init;

   --  throws Exception
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
      soundInterfaceArray : Sound_Access_Array_Access;
      player : Player_Access;
      player2 : Player_Access;
      androidMediaPlayerWrapper : AndroidMediaPlayerWrapper_Access;
      i : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, To_Unbounded_String ("shutdown"));
        if soundsFactoryInterface.isInitialized then
            Sounds_Package.Create (soundsFactoryInterface).stopAll;
            soundInterfaceArray := soundsFactoryInterface.getSoundInterfaceArray;
            player := null;
            player2 := null;
            androidMediaPlayerWrapper := null;
            for i in 0 .. (soundInterfaceArray'Length) - 1 loop
                if (soundInterfaceArray (i)) /= (null) then
                    player := soundInterfaceArray (i).getPlayerP;
                    if (player) /= (null) then
                        player2 := PlayerComposite_Access (player).getPlayerP;
                        if (player2.all in AndroidMediaPlayerWrapper_Package.AndroidMediaPlayerWrapper'Class) then
                            androidMediaPlayerWrapper := AndroidMediaPlayerWrapper_Access (player2);
                            MediaPlayerUtil_Package.getInstance.waitForMediaPlayer (androidMediaPlayerWrapper.getMediaPlayer);
                        else
                            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unknown Property Player: ") & To_Unbounded_String (Ada.Tags.Expanded_Name (player.all'Tag))));
                        end if;
                    end if;
                end if;
            end loop;
            Sounds_Package.Create (soundsFactoryInterface).closeAll;
            TsUtil_Package.getInstance.gc;
            soundsFactoryInterface.setInitialized (False);
            AllBinaryMediaManager_Package.mostUsedTotal := 0;
        end if;
        logUtil.putF (commonString.START, AllBinaryMediaManager_Package.THIS_Id, To_Unbounded_String ("shutdown"));
   end shutdown;

   --  throws Exception
   function createPlayer (resource : Unbounded_String) return Player_Access is
      logUtil : LogUtil_Access;
   begin
        AllBinaryMediaManager_Package.mostUsedTotal := AllBinaryMediaManager_Package.mostUsedTotal + 1;
        logUtil := LogUtil_Package.getInstance;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            begin
                return Player_Access (AndroidMediaPlayerWrapper_Package.Create (resource));
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                logUtil.put (To_Unbounded_String ("Could not create AndroidMediaPlayerWrapper using NoPlayer at ") & Java_Image (CommonLabels_Package.getInstance.TOTAL_LABEL) & Java_Image (AllBinaryMediaManager_Package.mostUsedTotal), AllBinaryMediaManager_Package.THIS_Id, To_Unbounded_String ("createPlayer"), e);
                return NoPlayer_Package.NO_PLAYER;
                    end;
            end;
        else
            return NoPlayer_Package.NO_PLAYER;
        end if;
   end createPlayer;

   --  throws IOException, MediaException
   function createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) return Player_Access is
      stream : constant InputStream_Access := InputStream_Access (stream_Param);
   begin
        Java_Throw (Java_New_Exception ("MediaException", To_Unbounded_String ("No Input Stream Player")));
        return null;
   end createPlayerFromInputStream;

   --  throws MediaException
   procedure playTone (frequency : Integer; time : Integer; volume : Integer) is
   begin
        Java_Throw (Java_New_Exception ("MediaException", To_Unbounded_String ("No Tone Player")));
   end playTone;

   function isInitialized return Boolean is
   begin
        return True;
   end isInitialized;

   procedure createPlayer (resource : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayer (resource => resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayer;

   procedure createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayerFromInputStream (stream_Param => stream_Param, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayerFromInputStream;

begin
   null;
   THIS_Id := To_Unbounded_String ("AllBinaryMediaManagerAndroid");
   mostUsedTotal := 0;

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


