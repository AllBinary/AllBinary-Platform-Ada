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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.graphics.displayable.command.MyCommandInterface_Package; use org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.input.TouchJ2ME_Package; use org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.input.TouchJ2ME_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABStack_Package; use org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABStack_Package_References;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with javax.microedition.media.Player_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.displayable.MyCanvas_Package is

   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
   subtype TouchJ2ME_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access;
   function "=" (Left, Right : TouchJ2ME_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   function "=" (Left, Right : Sound_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   function "=" (Left, Right : Sound_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   function "=" (Left, Right : Sound_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sound_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Sound_Package_References."=";
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype ABStack_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access;
   function "=" (Left, Right : ABStack_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype ABStack_Access_Array_Access_Array_Access is org.allbinary.util.ABStack_Package_References.ABStack_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABStack_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABStack_Package_References."=";
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   function "=" (Left, Right : CanvasStrings_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.CanvasStrings_Package_References."=";
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   procedure Initialize_Fields (This : in out MyCanvas'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      
      
      
      This.commandListener := CommandListener_Access (NullCommandListener_Package.NULL_COMMAND_LISTENER);
      This.paused := False;
      This.touchME := TouchJ2ME_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out MyCanvas'Class; name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      childNameList : constant BasicArrayList_Access := BasicArrayList_Access (childNameList_Param);
   begin
      Canvas_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.CONSTRUCTOR, MyCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.CONSTRUCTOR);
        This.name := name;
        This.childNameList := childNameList;
        This.commandStack := StdUtil_Package.getInstance.createStack;
   end Initialize;

   function Create (name : Unbounded_String; childNameList_Param : access BasicArrayList_Package.BasicArrayList'Class) return MyCanvas_Access is
      This : constant MyCanvas_Access := new MyCanvas;
   begin
      MyCanvas_Package.Initialize (This.all, name, childNameList_Param);
      return This;
   end Create;

   function getWidth (This : in out MyCanvas) return Integer is
   begin
        return Canvas_Package.Canvas (This).getWidth;
   end getWidth;

   function getHeight (This : in out MyCanvas) return Integer is
   begin
        return Canvas_Package.Canvas (This).getHeight;
   end getHeight;

   procedure setFullScreenMode (This : in out MyCanvas; mode : Boolean) is
   begin
        Canvas_Package.Canvas (This).setFullScreenMode (mode);
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.SET_FULL_SCREEN_MODE);
   end setFullScreenMode;

   procedure sizeChanged (This : in out MyCanvas; w : Integer; h : Integer) is
   begin
        This.displayInfo.update (MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.SIZE_CHANGED);
   end sizeChanged;

   function getCommandStack (This : in out MyCanvas) return ABStack_Access is
   begin
        return This.commandStack;
   end getCommandStack;

   function isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) return Boolean is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        return This.commandStack.contains (command);
   end isCommand;

   procedure addCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        if not (This.commandStack.contains (command)) then
            This.commandStack.push (command);
            Canvas_Package.Canvas (This).addCommand (command);
        end if;
   end addCommand;

   procedure removeCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      command : constant Command_Access := Command_Access (command_Param);
   begin
        This.commandStack.removeElement (command);
        Canvas_Package.Canvas (This).removeCommand (command);
   end removeCommand;

   procedure removeAllCommands (This : in out MyCanvas) is
      size : Integer;
      index : Integer;
   begin
        size := This.commandStack.size;
        for index in 0 .. (size) - 1 loop
            Canvas_Package.Canvas (This).removeCommand (Command_Access (This.commandStack.pop));
        end loop;
   end removeAllCommands;

   procedure setCommandListener (This : in out MyCanvas; l_Param : access CommandListener_Package.CommandListener'Class) is
      l : constant CommandListener_Access := CommandListener_Access (l_Param);
   begin
        Canvas_Package.Canvas (This).setCommandListener (l);
        This.commandListener := l;
   end setCommandListener;

   function getCustomCommandListener (This : in out MyCanvas) return CommandListener_Access is
   begin
        return This.commandListener;
   end getCustomCommandListener;

   function isPaused (This : in out MyCanvas) return Boolean is
   begin
        return This.paused;
   end isPaused;

   procedure removePauseCommand (This : in out MyCanvas) is
   begin
        MyCanvas'Class (This).removeCommand (MyCommandsFactory_Package.getInstance.PAUSE_COMMAND);
   end removePauseCommand;

   procedure pause (This : in out MyCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.PAUSE);
        MyCanvas'Class (This).removePauseCommand;
        MyCanvas'Class (This).addCommand (MyCommandsFactory_Package.getInstance.RESUME_COMMAND);
        MyCanvas'Class (This).setPaused (True);
   end pause;

   procedure unPause (This : in out MyCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, MyCanvas_Access'(This'Unchecked_Access), This.canvasStrings.UN_PAUSE);
        MyCanvas'Class (This).removeCommand (MyCommandsFactory_Package.getInstance.RESUME_COMMAND);
        MyCanvas'Class (This).addCommand (MyCommandsFactory_Package.getInstance.PAUSE_COMMAND);
        MyCanvas'Class (This).setPaused (False);
   end unPause;

   --  throws Exception
   procedure process (This : in out MyCanvas) is
   begin
        This.displayInfo.process;
   end process;

   procedure paint (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure draw (This : in out MyCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end draw;

   function hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class) return Boolean is
      displayable : constant MyCanvas_Access := MyCanvas_Access (displayable_Param);
   begin
        return This.childNameList.contains (displayable.name);
   end hasChild;

   procedure destroy (This : in out MyCanvas) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Destroyed MyCanvas"), MyCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("destroy"));
   end destroy;

   procedure setPaused (This : in out MyCanvas; isPaused : Boolean) is
   begin
        This.paused := isPaused;
   end setPaused;

   procedure keyPressedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyPressedByDevice;

   procedure keyRepeatedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyRepeatedByDevice;

   procedure keyReleasedByDevice (This : in out MyCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyReleasedByDevice;

   procedure pointerDragged (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerDragged (x, y);
   end pointerDragged;

   procedure pointerPressed (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerPressed (x, y);
   end pointerPressed;

   procedure pointerReleased (This : in out MyCanvas; x : Integer; y : Integer) is
   begin
        This.touchME.pointerReleased (x, y);
   end pointerReleased;

   procedure nextSong (This : in out MyCanvas; nextSongSound_Param : access Sound_Package.Sound'Class; leftVolume : Integer; rightVolume : Integer) is
      nextSongSound : constant Sound_Access := Sound_Access (nextSongSound_Param);
   begin
        null;
   end nextSong;

   procedure isCommand (This : in out MyCanvas; command_Param : access Command_Package.Command'Class) is
      Java_Result : constant Boolean := MyCanvas'Class (This).isCommand (command_Param => command_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCommand;

   procedure hasChild (This : in out MyCanvas; displayable_Param : access MyCanvas_Package.MyCanvas'Class) is
      Java_Result : constant Boolean := MyCanvas'Class (This).hasChild (displayable_Param => displayable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasChild;

end org.allbinary.graphics.displayable.MyCanvas_Package;


