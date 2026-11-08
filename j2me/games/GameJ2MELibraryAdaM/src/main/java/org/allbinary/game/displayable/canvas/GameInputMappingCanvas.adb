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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputFactory_Package_References;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.paint.ColorFillBasePaintable_Package; use org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;
with org.allbinary.game.paint.ColorFillPaintableFactory_Package; use org.allbinary.game.paint.ColorFillPaintableFactory_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package_References;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package; use org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.util.HashtableUtil_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.InputPersistance_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.game.paint.help.UpdateMyFontProperties_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package_References;

package body org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package ColorFillPaintableFactory_Package renames Standard.org.allbinary.game.paint.ColorFillPaintableFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   function "=" (Left, Right : Command_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   function "=" (Left, Right : Command_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   function "=" (Left, Right : Command_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Command_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Command_Package_References."=";
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   function "=" (Left, Right : GameKey_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   function "=" (Left, Right : Input_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   function "=" (Left, Right : Input_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   function "=" (Left, Right : Input_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   function "=" (Left, Right : InputFactory_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype PersistentInputMapping_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access;
   function "=" (Left, Right : PersistentInputMapping_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype PersistentInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.PersistentInputMapping_Package_References.PersistentInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PersistentInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.PersistentInputMapping_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillBasePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillBasePaintable_Package_References."=";
   subtype HelpPaintable_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access;
   function "=" (Left, Right : HelpPaintable_Access) return Boolean renames org.allbinary.game.paint.help.HelpPaintable_Package_References."=";
   subtype HelpPaintable_Access_Array is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array;
   function "=" (Left, Right : HelpPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.help.HelpPaintable_Package_References."=";
   subtype HelpPaintable_Access_Array_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access;
   function "=" (Left, Right : HelpPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.HelpPaintable_Package_References."=";
   subtype HelpPaintable_Access_Array_Access_Array is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : HelpPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.help.HelpPaintable_Package_References."=";
   subtype HelpPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.help.HelpPaintable_Package_References.HelpPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HelpPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.HelpPaintable_Package_References."=";
   subtype InputMappingHelpPaintable_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access;
   function "=" (Left, Right : InputMappingHelpPaintable_Access) return Boolean renames org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References."=";
   subtype InputMappingHelpPaintable_Access_Array is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array;
   function "=" (Left, Right : InputMappingHelpPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References."=";
   subtype InputMappingHelpPaintable_Access_Array_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access;
   function "=" (Left, Right : InputMappingHelpPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References."=";
   subtype InputMappingHelpPaintable_Access_Array_Access_Array is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingHelpPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References."=";
   subtype InputMappingHelpPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References.InputMappingHelpPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingHelpPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.InputMappingHelpPaintable_Package_References."=";
   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   function "=" (Left, Right : ProcessPaintable_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
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
   procedure Initialize_Fields (This : in out GameInputMappingCanvas'Class) is
   begin
      null;
      
      
      
      
      This.NONE := GameKey_Access (GameKeyFactory_Package.getInstance.NONE);
      
      This.selectedGameKey := This.NONE;
      This.selectedInput := Input_Access (This.NONE);
      This.inputFactory := InputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMappingCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      helpPaintable : constant HelpPaintable_Access := HelpPaintable_Access (helpPaintable_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, GameInputMappingCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        if org.allbinary.game.paint.help.HelpPaintable_Package_References."=" (helpPaintable, null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Help Paintable Exception")));
        end if;
        This.abeClientInformation := abeClientInformation;
        This.helpPaintable := InputMappingHelpPaintable_Access (helpPaintable);
        This.inputMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        This.paintable := ProcessPaintable_Package.Create;
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class) return GameInputMappingCanvas_Access is
      This : constant GameInputMappingCanvas_Access := new GameInputMappingCanvas;
   begin
      GameInputMappingCanvas_Package.Initialize (This.all, abeClientInformation_Param, commandListener_Param, allBinaryGameLayerManager_Param, helpPaintable_Param);
      return This;
   end Create;

   --  throws Exception
   procedure close (This : in out GameInputMappingCanvas) is
   begin
        GameCommandCanvas_Package.GameCommandCanvas (This).close;
        This.paintable.process;
        This.selectedGameKey := This.NONE;
        This.selectedInput := Input_Access (This.NONE);
        GameInputMappingCanvas'Class (This).update;
   end close;

   procedure initCommands (This : in out GameInputMappingCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        GameInputMappingCanvas'Class (This).removeAllCommands;
        GameInputMappingCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        GameInputMappingCanvas'Class (This).addCommand (GameInputMappingCanvas_Package.DEFAULT);
        GameInputMappingCanvas'Class (This).addCommand (GameInputMappingInstructionsCanvas_Package.DISPLAY);
        GameInputMappingCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure keyPressed (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out GameInputMappingCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        GameInputMappingCanvas'Class (This).addGameKey (keyCode, False);
        GameCommandCanvas_Package.GameCommandCanvas (This).keyPressedByDevice (keyCode, 0);
   end keyPressedByDevice;

   procedure addGameKey (This : in out GameInputMappingCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      input : Input_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Raw Device Key Code: ")).append (To_Unbounded_String (Java_To_Unsigned_String (keyCode, 16))).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT);
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (GameInputMappingCanvas_Access'(This'Unchecked_Access), keyCode);
            input := This.inputFactory.getInstanceById (keyCode);
            GameInputMappingCanvas'Class (This).processInputMapping (gameKey, input);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), GameInputMappingCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKey;

   --  throws Exception
   procedure processInputMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start Passed GameKey: "));
        stringBuffer.append (This.stringUtil.toString (gameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (input));
        This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        if (This.selectedGameKey) /= (This.NONE) then
            GameInputMappingCanvas'Class (This).gameActionCrud (gameKey, input);
        else
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end processInputMapping;

   procedure setSelectedAction (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Selected GameKey: ")).append (This.stringUtil.toString (gameKey)).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedAction"));
        This.selectedGameKey := gameKey;
        This.selectedInput := Input_Access (This.NONE);
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end setSelectedAction;

   --  throws Exception
   procedure gameActionCrud (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      stringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      isInputAlreadyMappedToSelectedAction : Boolean;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start GameKey: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedInput));
        This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("gameActionCrud"));
        if (Java_Object_Access (This.selectedInput)) = (Java_Object_Access (This.NONE)) then
            list := This.inputMapping.getInputMapping.getMappedInput (This.selectedGameKey);
            isInputAlreadyMappedToSelectedAction := list.contains (Java_Object_Access (input));
            if isInputAlreadyMappedToSelectedAction then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Already Mapped Input: ")).append (This.stringUtil.toString (input)).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("gameActionCrud"));
                This.selectedInput := input;
                This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
                This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
            else
                GameInputMappingCanvas'Class (This).addNewMapping (gameKey, input);
            end if;
        elsif This.inputMapping.isDelete (input) then
            GameInputMappingCanvas'Class (This).deleteCurrentMapping;
        else
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end gameActionCrud;

   --  throws Exception
   procedure addNewMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      METHOD_NAME : Unbounded_String;
      isInputAlreadyMapped : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("addNewMapping");
        This.logUtil.putF (This.commonStrings.START, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
        isInputAlreadyMapped := This.inputMapping.getInputMapping.isMapped (input);
        if (not (isInputAlreadyMapped)) and then (not (This.inputMapping.isSystemInput (input))) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Add Key Mapping : GameKey: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
            stringBuffer.append (To_Unbounded_String (" Input: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedInput));
            This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            This.inputMapping.getInputMapping.add (This.selectedGameKey, input);
            This.selectedInput := input;
            GameInputMappingCanvas'Class (This).update;
        else
            This.logUtil.putF (To_Unbounded_String ("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end addNewMapping;

   --  throws Exception
   procedure deleteCurrentMapping (This : in out GameInputMappingCanvas) is
      METHOD_NAME : Unbounded_String;
      list : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("deleteCurrentMapping");
        list := This.inputMapping.getInputMapping.getMappedInput (This.selectedGameKey);
        if (list.size) > (1) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Start GameKey: "));
            stringBuffer.append (To_Unbounded_String ("Remove Key Mapping: GameKey: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
            stringBuffer.append (To_Unbounded_String (" Input: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedInput));
            This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            This.inputMapping.getInputMapping.remove (This.selectedGameKey, This.selectedInput);
            This.selectedInput := Input_Access (This.NONE);
            GameInputMappingCanvas'Class (This).update;
        else
            This.logUtil.putF (To_Unbounded_String ("Can't Remove Last Key Mapping"), GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
        end if;
   end deleteCurrentMapping;

   --  throws Exception
   procedure setDefault (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.setDefault (This.abeClientInformation);
        This.helpPaintable.update (This.NONE, This.NONE);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end setDefault;

   --  throws Exception
   procedure update (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.update (This.abeClientInformation);
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end update;

   procedure paint (This : in out GameInputMappingCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
        This.helpPaintable.paint (graphics);
        This.paintable.paint (graphics);
        GameCommandCanvas_Package.GameCommandCanvas (This).paint (graphics);
   end paint;

begin
   null;
   NAME := To_Unbounded_String ("GameInputMappingCanvas");
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Controls"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
   DEFAULT := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);

end org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;


