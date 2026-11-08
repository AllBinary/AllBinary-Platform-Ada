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


with org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package; use org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package; use org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
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
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
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
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.configuration.GameConfigurationCentral_Package is

   package GameConfigurationPersistanceSingleton_Package renames Standard.org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton_Package;
   package KeyValuePersistance_Package renames Standard.org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out GameConfigurationCentral'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      This.gameControlFidelity := 36;
   end Initialize_Fields;


   function getInstance return GameConfigurationCentral_Access is
   begin
        if (GameConfigurationCentral_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            GameConfigurationCentral_Package.SINGLETON := Java_Object_Access (GameConfigurationCentral_Package.Create);
        end if;
        return GameConfigurationCentral_Access (GameConfigurationCentral_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out GameConfigurationCentral'Class) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   begin
      Initialize_Fields (This);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        This.SCALE := GameConfiguration_Package.Create (To_Unbounded_String ("Scale"), smallIntegerSingletonFactory.getAt (2), smallIntegerSingletonFactory.getAt (2), smallIntegerSingletonFactory.getAt (3));
        This.ORIENTATION := GameConfiguration_Package.Create (To_Unbounded_String ("Orientation"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (8));
        This.SENSOR_UPDATE_RATE := GameConfiguration_Package.Create (To_Unbounded_String ("Sensor Update Rate"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (3));
        This.VIBRATION := GameConfiguration_Package.Create (To_Unbounded_String ("Vibration"), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (3));
        This.CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Global Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.COLLIDE_DAMAGE := GameConfiguration_Package.Create (To_Unbounded_String ("Collide Damage Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.DURABILITY_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Durability Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SPEED_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Speed Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.ATTACK_CHALLENGE_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Enemy Attack Challenge Level"), smallIntegerSingletonFactory.getAt (3), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.CONTROL_LEVEL := GameConfiguration_Package.Create (To_Unbounded_String ("Control Fidelity"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.PLAYER_INPUT_WAIT := GameConfiguration_Package.Create (To_Unbounded_String ("Input Wait"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SPEED := GameConfiguration_Package.Create (To_Unbounded_String ("Game Speed (Device Specific)"), smallIntegerSingletonFactory.getAt (5), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (10));
        This.SOUND_VOLUME := GameConfiguration_Package.Create (To_Unbounded_String ("Sound Volume"), smallIntegerSingletonFactory.getAt (6), smallIntegerSingletonFactory.getAt (0), smallIntegerSingletonFactory.getAt (10));
        This.MAX_GAME_OBJECTS := GameConfiguration_Package.Create (To_Unbounded_String ("Max Game Objects"), smallIntegerSingletonFactory.getAt (20), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (50));
        This.MAX_LAYERS := GameConfiguration_Package.Create (To_Unbounded_String ("Max Layers"), smallIntegerSingletonFactory.getAt (20), smallIntegerSingletonFactory.getAt (1), smallIntegerSingletonFactory.getAt (50));
   end Initialize;

   function Create return GameConfigurationCentral_Access is
      This : constant GameConfigurationCentral_Access := new GameConfigurationCentral;
   begin
      GameConfigurationCentral_Package.Initialize (This.all);
      return This;
   end Create;

   procedure load (This : in out GameConfigurationCentral; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commonStrings : CommonStrings_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      keyValuePersistance : KeyValuePersistance_Access;
      list : BasicArrayList_Access;
      hashtable : ABHashtable_Access;
      anyType : Java_Object_Access;
      value : Unbounded_String;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            keyValuePersistance := KeyValuePersistance_Access (GameConfigurationPersistanceSingleton_Package.getInstance);
            keyValuePersistance.clear;
            keyValuePersistance.loadAll (abeClientInformation);
            list := keyValuePersistance.getIds;
            if (list.size) > (0) then
                hashtable := keyValuePersistance.get (0);
                anyType := Java_Box (This.SCALE.getName);
                value := Java_Unbox (hashtable.get (anyType));
                This.SCALE.setValue (smallIntegerSingletonFactory.getAt (Integer (Integer'Value (To_String (value)))));
            else
                This.logUtil.putF (To_Unbounded_String ("No Game Configuration To Load"), GameConfigurationCentral_Access'(This'Unchecked_Access), commonStrings.LOAD);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameConfigurationCentral_Access'(This'Unchecked_Access), commonStrings.LOAD, e);
                end;
        end;
   end load;

   procedure setGameControlFidelity (This : in out GameConfigurationCentral; gameControlFidelity : Integer) is
   begin
        This.gameControlFidelity := gameControlFidelity;
   end setGameControlFidelity;

   function getGameControlFidelity (This : in out GameConfigurationCentral) return Integer is
   begin
        return This.gameControlFidelity;
   end getGameControlFidelity;

   function toString (This : in out GameConfigurationCentral) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonStrings : CommonSeps_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonStrings := CommonSeps_Package.getInstance;
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SCALE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SCALE.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.ORIENTATION.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.ORIENTATION.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SENSOR_UPDATE_RATE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SENSOR_UPDATE_RATE.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.VIBRATION.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.VIBRATION.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.CHALLENGE_LEVEL.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.COLLIDE_DAMAGE.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.COLLIDE_DAMAGE.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.DURABILITY_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.DURABILITY_CHALLENGE_LEVEL.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SPEED_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SPEED_CHALLENGE_LEVEL.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.ATTACK_CHALLENGE_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.ATTACK_CHALLENGE_LEVEL.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.CONTROL_LEVEL.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.CONTROL_LEVEL.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.SPEED.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.SPEED.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.MAX_GAME_OBJECTS.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.MAX_GAME_OBJECTS.getValue));
        stringBuffer.append (commonStrings.COMMA_SEP);
        stringBuffer.append (This.MAX_LAYERS.getName);
        stringBuffer.append (commonStrings.EQUALS);
        stringBuffer.appendint (Integer (This.MAX_LAYERS.getValue));
        return stringBuffer.toString;
   end toString;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.configuration.GameConfigurationCentral_Package;


