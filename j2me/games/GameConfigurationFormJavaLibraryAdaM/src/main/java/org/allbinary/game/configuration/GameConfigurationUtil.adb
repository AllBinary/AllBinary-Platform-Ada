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


with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.configuration.GameConfigurationSingleton_Package; use org.allbinary.game.configuration.GameConfigurationSingleton_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package_References;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package_References;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
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
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationSingleton_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.MEUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.canvas.Processor_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.configuration.GameConfigurationUtil_Package is

   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype GameConfiguration_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access;
   function "=" (Left, Right : GameConfiguration_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameConfiguration_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfiguration_Package_References.GameConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfiguration_Package_References."=";
   subtype GameOptionsForm_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access;
   function "=" (Left, Right : GameOptionsForm_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array;
   function "=" (Left, Right : GameOptionsForm_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameConfigurationGauge_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   subtype GameConfigurationGauge_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationGauge_Package_References.GameConfigurationGauge_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationGauge_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationGauge_Package_References."=";
   procedure Initialize_Fields (This : in out GameConfigurationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.GAUGE_UPDATE := To_Unbounded_String ("Gauge Update: ");
      This.FROM := To_Unbounded_String (" from: ");
      This.TO := To_Unbounded_String (" to: ");
      This.COMPETITION_VALUE := 1;
   end Initialize_Fields;

   procedure Initialize (This : in out GameConfigurationUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameConfigurationUtil_Access is
      This : constant GameConfigurationUtil_Access := new GameConfigurationUtil;
   begin
      GameConfigurationUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameConfigurationUtil_Access is
   begin
        return GameConfigurationUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure change (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
   begin
        GameConfigurationUtil'Class (This).update (gauge);
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        GameConfigurationUtil'Class (This).updateChallange (gameOptionsForm, gameConfiguration);
   end change;

   --  throws Exception
   procedure update (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      value : Integer;
      stringBuffer : StringMaker_Access;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        value := smallIntegerSingletonFactory.getAt ((gauge.getValue) + (Integer (gameConfiguration.getMinValue)));
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.GAUGE_UPDATE);
        stringBuffer.append (gameConfiguration.getName);
        stringBuffer.append (This.FROM);
        stringBuffer.appendint (Integer (gameConfiguration.getValue));
        stringBuffer.append (This.TO);
        stringBuffer.appendint (Integer (value));
        This.logUtil.putF (stringBuffer.toString, GameConfigurationUtil_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        gameConfiguration.setValue (value);
   end update;

   --  throws Exception
   procedure setDefault (This : in out GameConfigurationUtil; gauge_Param : access GameConfigurationGauge_Package.GameConfigurationGauge'Class) is
      gauge : constant GameConfigurationGauge_Access := GameConfigurationGauge_Access (gauge_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfiguration : GameConfiguration_Access;
      stringBuffer : StringMaker_Access;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfiguration := gameConfigurationSingleton.getInstanceByName (gauge.getLabel);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Gauge Default: "));
        stringBuffer.append (gameConfiguration.getName);
        stringBuffer.append (This.TO);
        stringBuffer.appendint (Integer (gameConfiguration.getDefaultValue));
        This.logUtil.putF (stringBuffer.toString, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("setDefault"));
        gauge.setValue ((Integer (gameConfiguration.getDefaultValue)) - (Integer (gameConfiguration.getMinValue)));
        gameConfiguration.setValue (gameConfiguration.getDefaultValue);
   end setDefault;

   --  throws Exception
   procedure updateChallange (This : in out GameConfigurationUtil; gameOptionsForm_Param : access GameOptionsForm_Package.GameOptionsForm'Class; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) is
      gameOptionsForm : constant GameOptionsForm_Access := GameOptionsForm_Access (gameOptionsForm_Param);
      gameConfiguration : constant GameConfiguration_Access := GameConfiguration_Access (gameConfiguration_Param);
      gameConfigurationSingleton : GameConfigurationSingleton_Access;
      gameConfigurationCentral : GameConfigurationCentral_Access;
      size : Integer;
      item : Item_Access;
      gauge : GameConfigurationGauge_Access;
      name : Unbounded_String;
      nextGameConfiguration : GameConfiguration_Access;
      index : Integer;
   begin
        gameConfigurationSingleton := GameConfigurationSingleton_Package.getInstance;
        gameConfigurationCentral := GameConfigurationCentral_Package.getInstance;
        if (Java_Object_Access (gameConfiguration)) = (Java_Object_Access (gameConfigurationCentral.CHALLENGE_LEVEL)) then
            This.logUtil.putF (This.commonStrings.START, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("updateChallange"));
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue (gameConfiguration.getValue);
            size := gameOptionsForm.size;
            for index in 0 .. (size) - 1 loop
                item := gameOptionsForm.get (index);
                if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                    gauge := GameConfigurationGauge_Access (item);
                    name := item.getLabel;
                    nextGameConfiguration := gameConfigurationSingleton.getInstanceByName (name);
                    if (Java_Object_Access (nextGameConfiguration)) = (Java_Object_Access (gameConfigurationCentral.COLLIDE_DAMAGE)) then
                        gauge.setValue ((Integer (gameConfigurationCentral.COLLIDE_DAMAGE.getValue)) - (Integer (gameConfiguration.getMinValue)));
                    elsif (Java_Object_Access (nextGameConfiguration)) = (Java_Object_Access (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL)) then
                        gauge.setValue ((Integer (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue)) - (Integer (gameConfiguration.getMinValue)));
                    elsif (Java_Object_Access (nextGameConfiguration)) = (Java_Object_Access (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL)) then
                        gauge.setValue ((Integer (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue)) - (Integer (gameConfiguration.getMinValue)));
                    elsif (Java_Object_Access (nextGameConfiguration)) = (Java_Object_Access (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL)) then
                        gauge.setValue ((Integer (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue)) - (Integer (gameConfiguration.getMinValue)));
                    end if;
                end if;
            end loop;
        end if;
   end updateChallange;

   procedure updateCompetitionValue (This : in out GameConfigurationUtil) is
      gameConfigurationCentral : GameConfigurationCentral_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameConfigurationUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("updateCompetitionValue"));
        gameConfigurationCentral := GameConfigurationCentral_Package.getInstance;
        This.COMPETITION_VALUE := (((Integer (gameConfigurationCentral.COLLIDE_DAMAGE.getValue)) + (Integer (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue))) + (Integer (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue))) + (Integer (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue));
        This.COMPETITION_VALUE := (Java_Shift_Right_Arithmetic (This.COMPETITION_VALUE, 2));
   end updateCompetitionValue;

   function getCompetitionValue (This : in out GameConfigurationUtil) return Integer is
   begin
        return This.COMPETITION_VALUE;
   end getCompetitionValue;

begin
   null;
   instance := GameConfigurationUtil_Package.Create;

end org.allbinary.game.configuration.GameConfigurationUtil_Package;


