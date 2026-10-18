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


with javax.microedition.media.Manager_Package; use javax.microedition.media.Manager_Package;
with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.Sounds_Package; use org.allbinary.media.audio.Sounds_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package body org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package Manager_Package renames Standard.javax.microedition.media.Manager_Package;
   package MediaException_Package renames Standard.javax.microedition.media.MediaException_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
        ProgressCanvasFactory_Package.getInstance.addNormalPortion (50, To_Unbounded_String ("Media Manager"));
        Sounds_Package.Create (soundsFactoryInterface).init;
   end init;

   --  throws Exception
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
   begin
        Sounds_Package.Create (soundsFactoryInterface).stopAll;
        Sounds_Package.Create (soundsFactoryInterface).closeAll;
        TsUtil_Package.getInstance.gc;
   end shutdown;

   --  throws Exception
   function createPlayer (resource : Unbounded_String) return Player_Access is
   begin
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            if (TsUtil_Package.getInstance.compareTo (resource, Manager_Package.TONE_DEVICE_LOCATOR)) = (0) then
                return Manager_Package.createPlayer (resource);
            else
                return Manager_Package.createPlayer (Unbounded_Slice (resource, (0) + 1, (Length (resource)) - (4)));
            end if;
        else
            return NoPlayer_Package.NO_PLAYER;
        end if;
   end createPlayer;

   --  throws MediaException
   procedure playTone (frequency : Integer; time : Integer; volume : Integer) is
   begin
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            Manager_Package.playTone (frequency, time, volume);
        end if;
   end playTone;

   procedure createPlayer (resource : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayer (resource);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayer;

begin
   null;
   THIS_Id := To_Unbounded_String ("AllBinaryMediaManagerHTML5");

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


