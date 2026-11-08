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


with javax.microedition.lcdui.Gauge_Package; use javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.configuration.GameConfiguration_Package; use org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.game.configuration.GameConfiguration_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.configuration.GameConfigurationGauge_Package is

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
   procedure Initialize_Fields (This : in out GameConfigurationGauge'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameConfigurationGauge'Class; gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) is
      gameConfiguration : constant GameConfiguration_Access := GameConfiguration_Access (gameConfiguration_Param);
   begin
        Gauge_Package.Initialize (This, gameConfiguration.getName, gameConfiguration.isModifiable, (Integer (gameConfiguration.getMaxValue)) - (Integer (gameConfiguration.getMinValue)), (Integer (gameConfiguration.getValue)) - (Integer (gameConfiguration.getMinValue)));
   end Initialize;

   function Create (gameConfiguration_Param : access GameConfiguration_Package.GameConfiguration'Class) return GameConfigurationGauge_Access is
      This : constant GameConfigurationGauge_Access := new GameConfigurationGauge;
   begin
      GameConfigurationGauge_Package.Initialize (This.all, gameConfiguration_Param);
      return This;
   end Create;

end org.allbinary.game.configuration.GameConfigurationGauge_Package;


