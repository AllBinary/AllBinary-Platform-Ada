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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.Sounds_Package; use org.allbinary.media.audio.Sounds_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package; use org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.audio.BasicPlayer_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with javax.microedition.media.Control_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.media.audio.NoPlayer_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.SoundStrings_Package;
with org.allbinary.media.audio.Sounds_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   function "=" (Left, Right : Player_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   function "=" (Left, Right : Player_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   function "=" (Left, Right : Player_Access_Array_Access_Array) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Player_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.media.Player_Package_References."=";
   subtype SoundsFactoryInterface_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
   subtype SoundsFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundsFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundsFactoryInterface_Package_References."=";
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
        logUtil.putF (commonString.START, Java_Box (AllBinaryMediaManager_Package.THIS_Id), commonString.INIT);
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

   function createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) return Player_Access is
      stream : constant InputStream_Access := InputStream_Access (stream_Param);
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, Java_Box (AllBinaryMediaManager_Package.THIS_Id), To_Unbounded_String ("creatPlayer(InputStream)"));
        return Player_Access (NoPlayer_Package.NO_PLAYER);
   end createPlayerFromInputStream;

   function createPlayer (locator : Unbounded_String) return Player_Access is
      logUtil : LogUtil_Access;
      commonString : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonString := CommonStrings_Package.getInstance;
        logUtil.putF (commonString.START, Java_Box (AllBinaryMediaManager_Package.THIS_Id), To_Unbounded_String ("creatPlayer(locator)"));
        return Player_Access (NoPlayer_Package.NO_PLAYER);
   end createPlayer;

   procedure playTone (frequency : Integer; time : Integer; volume : Integer) is
   begin
        null;
   end playTone;

   function getSupportedContentTypes (protocol : Unbounded_String) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getSupportedContentTypes;

   function getSupportedProtocols (content_type : Unbounded_String) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getSupportedProtocols;

   procedure createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayerFromInputStream (stream_Param => stream_Param, type_Id => type_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayerFromInputStream;

   procedure createPlayer (locator : Unbounded_String) is
      Java_Result : constant Player_Access := createPlayer (locator => locator);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPlayer;

   procedure getSupportedContentTypes (protocol : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := getSupportedContentTypes (protocol => protocol);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSupportedContentTypes;

   procedure getSupportedProtocols (content_type : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := getSupportedProtocols (content_type => content_type);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSupportedProtocols;

begin
   null;
   THIS_Id := To_Unbounded_String ("AllBinaryMediaManagerNoMediaMIDP1");

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


