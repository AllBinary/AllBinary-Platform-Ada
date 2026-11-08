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


with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.input.PCKeyFactory_Package; use org.allbinary.game.input.PCKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.util.HashtableUtil_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.InputPersistance_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.input.LaptopDefaultGameInputMapping_Package is

   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   procedure Initialize_Fields (This : in out LaptopDefaultGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LaptopDefaultGameInputMapping'Class) is
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      pcKeyFactory : PCKeyFactory_Access;
      gameKeyFactory : GameKeyFactory_Access;
   begin
        PersistentInputMapping_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.DEFAULT_INPUT_MAPPING_RECORD_ID);
        inputToGameKeyMapping := LaptopDefaultGameInputMapping'Class (This).getInputMapping;
        pcKeyFactory := PCKeyFactory_Package.getInstance;
        gameKeyFactory := GameKeyFactory_Package.getInstance;
        inputToGameKeyMapping.add (gameKeyFactory.FIRE, pcKeyFactory.ENTER);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.FOUR);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.U_P);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.p);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.DPAD_UP);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM1, pcKeyFactory.FIVE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.U_Y);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.U_I);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.U_U);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.U_H);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.U_J);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.U_N);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.U_M);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.y);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.i);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.u);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.h);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.j);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.n);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.m);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.U_Q);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.U_E);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.U_W);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.U_A);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.U_D);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.U_S);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.U_X);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM7, pcKeyFactory.q);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM9, pcKeyFactory.e);
        inputToGameKeyMapping.add (gameKeyFactory.UP, pcKeyFactory.w);
        inputToGameKeyMapping.add (gameKeyFactory.LEFT, pcKeyFactory.a);
        inputToGameKeyMapping.add (gameKeyFactory.RIGHT, pcKeyFactory.d);
        inputToGameKeyMapping.add (gameKeyFactory.DOWN, pcKeyFactory.s);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM5, pcKeyFactory.x);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM3, pcKeyFactory.THREE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.ZERO);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.ONE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_NUM0, pcKeyFactory.SPACE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_POUND, pcKeyFactory.DEL);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_POUND, pcKeyFactory.TWO);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_STAR, pcKeyFactory.ESCAPE);
        inputToGameKeyMapping.add (gameKeyFactory.KEY_STAR, pcKeyFactory.STAR);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_DOWN, pcKeyFactory.COMMA);
        inputToGameKeyMapping.add (gameKeyFactory.LEVEL_UP, pcKeyFactory.PERIOD);
   end Initialize;

   function Create return LaptopDefaultGameInputMapping_Access is
      This : constant LaptopDefaultGameInputMapping_Access := new LaptopDefaultGameInputMapping;
   begin
      LaptopDefaultGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.game.input.LaptopDefaultGameInputMapping_Package;


