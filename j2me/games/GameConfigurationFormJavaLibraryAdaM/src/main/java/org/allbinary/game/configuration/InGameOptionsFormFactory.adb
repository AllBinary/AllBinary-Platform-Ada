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


with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package_References;
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
with org.allbinary.init.Init_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.configuration.InGameOptionsForm_Package; use org.allbinary.game.configuration.InGameOptionsForm_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
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
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.configuration.InGameOptionsForm_Package;
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
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.configuration.InGameOptionsFormFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype CommandForm_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access;
   function "=" (Left, Right : CommandForm_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array;
   function "=" (Left, Right : CommandForm_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access;
   function "=" (Left, Right : CommandForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array;
   function "=" (Left, Right : CommandForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype Init_Access is org.allbinary.init.Init_Package_References.Init_Access;
   function "=" (Left, Right : Init_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array;
   function "=" (Left, Right : Init_Access_Array) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access;
   function "=" (Left, Right : Init_Access_Array_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array;
   function "=" (Left, Right : Init_Access_Array_Access_Array) return Boolean renames org.allbinary.init.Init_Package_References."=";
   subtype Init_Access_Array_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Init_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.Init_Package_References."=";
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
   procedure Initialize_Fields (This : in out InGameOptionsFormFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.SINGLETON := CommandForm_Package.getNullCommandForm;
   end Initialize_Fields;

   procedure Initialize (This : in out InGameOptionsFormFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InGameOptionsFormFactory_Access is
      This : constant InGameOptionsFormFactory_Access := new InGameOptionsFormFactory;
   begin
      InGameOptionsFormFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InGameOptionsFormFactory_Access is
   begin
        if (InGameOptionsFormFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            InGameOptionsFormFactory_Package.instance := Java_Object_Access (InGameOptionsFormFactory_Package.Create);
        end if;
        return InGameOptionsFormFactory_Access (InGameOptionsFormFactory_Package.instance);
   end getInstance;

   procedure init (This : in out InGameOptionsFormFactory; commandListener_Param : access CommandListener_Package.CommandListener'Class; initInterface_Param : access Init_Package.Init'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      initInterface : constant Init_Access := Init_Access (initInterface_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (Java_Object_Access (This.SINGLETON)) = (Java_Object_Access (CommandForm_Package.getNullCommandForm)) then
                initInterface.init_Method;
                This.SINGLETON := CommandForm_Access (InGameOptionsForm_Package.Create (commandListener, title, backgrounBasicColor, foregroundBasicColor));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, InGameOptionsFormFactory_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

   function get (This : in out InGameOptionsFormFactory) return CommandForm_Access is
   begin
        return This.SINGLETON;
   end get;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.configuration.InGameOptionsFormFactory_Package;


