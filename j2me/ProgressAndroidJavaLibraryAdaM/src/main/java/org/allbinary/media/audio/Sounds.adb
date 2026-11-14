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


with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.SoundStrings_Package; use org.allbinary.media.audio.SoundStrings_Package;
with org.allbinary.media.audio.SoundStrings_Package_References;
with org.allbinary.media.audio.SoundsFactoryInterface_Package; use org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.SoundStrings_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.logic.StdUtil_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.media.audio.Sounds_Package is

   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
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
   subtype SoundStrings_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access;
   function "=" (Left, Right : SoundStrings_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array;
   function "=" (Left, Right : SoundStrings_Access_Array) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access;
   function "=" (Left, Right : SoundStrings_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array_Access_Array is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array;
   function "=" (Left, Right : SoundStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
   subtype SoundStrings_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundStrings_Package_References.SoundStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SoundStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.SoundStrings_Package_References."=";
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
   procedure Initialize_Fields (This : in out Sounds'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.soundStrings := SoundStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Sounds'Class; soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) is
      soundsFactoryInterface : constant SoundsFactoryInterface_Access := SoundsFactoryInterface_Access (soundsFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.soundsFactoryInterface := soundsFactoryInterface;
   end Initialize;

   function Create (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class) return Sounds_Access is
      This : constant Sounds_Access := new Sounds;
   begin
      Sounds_Package.Initialize (This.all, soundsFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out Sounds) is
      commonLabels : CommonLabels_Access;
      progressCanvas : ProgressCanvas_Access;
      soundInterfaceArray : Sound_Access_Array_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      indexInteger : Integer;
      indexString : Unbounded_String;
      stringBuffer : StringMaker_Access;
      soundInterfaceCanBeNull : Sound_Access;
      i : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        commonLabels := CommonLabels_Package.getInstance;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        This.soundsFactoryInterface.init;
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        indexInteger := 0;
        indexString := Null_Unbounded_String;
        stringBuffer := StringMaker_Package.Create;
        for i in 0 .. (soundInterfaceArray'Length) - 1 loop
            soundInterfaceCanBeNull := soundInterfaceArray (i);
            if (soundInterfaceCanBeNull) /= (null) then
                indexInteger := smallIntegerSingletonFactory.getAt (i);
                indexString := To_Unbounded_String (Java_Image (indexInteger));
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (commonLabels.INDEX_LABEL);
                stringBuffer.append (indexString);
                stringBuffer.append (This.soundStrings.SOUND);
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (soundInterfaceCanBeNull.all'Tag)));
                This.logUtil.putF (stringBuffer.toString, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
                soundInterfaceCanBeNull.init;
                progressCanvas.addNormalPortion (100, StringMaker_Package.Create.append (This.soundStrings.INIT_SOUND).append (indexString).toString);
            end if;
        end loop;
        This.soundsFactoryInterface.setInitialized (True);
        This.logUtil.putF (This.commonStrings.END_Id, Sounds_Access'(This'Unchecked_Access), This.commonStrings.INIT);
   end init;

   --  throws Exception
   procedure stopAll (This : in out Sounds) is
      soundInterfaceArray : Sound_Access_Array_Access;
      progressCanvas : ProgressCanvas_Access;
      player : Player_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.soundStrings.STOP_ALL);
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        player := null;
        for index in 0 .. (soundInterfaceArray'Length) - 1 loop
            if (soundInterfaceArray (index)) /= (null) then
                player := soundInterfaceArray (index).getPlayerP;
                if (player) /= (null) then
                    player.stop;
                    progressCanvas.addPortion (100, This.soundStrings.STOPPING_SOUND, index);
                end if;
            end if;
        end loop;
   end stopAll;

   --  throws Exception
   procedure closeAll (This : in out Sounds) is
      soundInterfaceArray : Sound_Access_Array_Access;
      progressCanvas : ProgressCanvas_Access;
      player : Player_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, Sounds_Access'(This'Unchecked_Access), This.soundStrings.CLOSE_ALL);
        soundInterfaceArray := This.soundsFactoryInterface.getSoundInterfaceArray;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        player := null;
        for index in 0 .. (soundInterfaceArray'Length) - 1 loop
            if (soundInterfaceArray (index)) /= (null) then
                player := soundInterfaceArray (index).getPlayerP;
                if (player) /= (null) then
                    player.close;
                    progressCanvas.addPortion (100, This.soundStrings.CLOSING_SOUND, index);
                end if;
            end if;
        end loop;
   end closeAll;

end org.allbinary.media.audio.Sounds_Package;


