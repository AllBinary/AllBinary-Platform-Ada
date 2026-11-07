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
with javax.microedition.lcdui.Display_Package; use javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.Display_Package_References;
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDletStateChangeException_Package; use javax.microedition.midlet.MIDletStateChangeException_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
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
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.midlet.AllBinaryMidlet_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package MIDletStateChangeException_Package renames Standard.javax.microedition.midlet.MIDletStateChangeException_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
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
   subtype Display_Access is javax.microedition.lcdui.Display_Package_References.Display_Access;
   function "=" (Left, Right : Display_Access) return Boolean renames javax.microedition.lcdui.Display_Package_References."=";
   subtype Display_Access_Array is javax.microedition.lcdui.Display_Package_References.Display_Access_Array;
   function "=" (Left, Right : Display_Access_Array) return Boolean renames javax.microedition.lcdui.Display_Package_References."=";
   subtype Display_Access_Array_Access is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access;
   function "=" (Left, Right : Display_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Display_Package_References."=";
   subtype Display_Access_Array_Access_Array is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access_Array;
   function "=" (Left, Right : Display_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Display_Package_References."=";
   subtype Display_Access_Array_Access_Array_Access is javax.microedition.lcdui.Display_Package_References.Display_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Display_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Display_Package_References."=";
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   function "=" (Left, Right : Displayable_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryMidlet'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.SET_DISPLAY := To_Unbounded_String ("setDisplay");
      This.SETTING_U := To_Unbounded_String ("Setting: ");
      This.U_DISPLAY_U := To_Unbounded_String (" Display: ");
      This.SETTING_NO_TITLE := To_Unbounded_String ("Setting: No Title, Display: ");
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.midletDestroyed := False;
   end Initialize_Fields;


   function getNullInstance return AllBinaryMidlet_Access is
   begin
        if (AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET := Java_Object_Access (AllBinaryMidlet_Package.Create);
        end if;
        return AllBinaryMidlet_Access (AllBinaryMidlet_Package.NULL_ALLBINARY_MIDLET);
   end getNullInstance;

   procedure Initialize (This : in out AllBinaryMidlet'Class) is
   begin
      MIDlet_Package.Initialize (This);
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.CONSTRUCTOR, AllBinaryMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("AllBinaryMidlet::AllBinaryMidlet"));
   end Initialize;

   function Create return AllBinaryMidlet_Access is
      This : constant AllBinaryMidlet_Access := new AllBinaryMidlet;
   begin
      AllBinaryMidlet_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setDisplay (This : in out AllBinaryMidlet; newDisplay_Param : access Displayable_Package.Displayable'Class) is
      newDisplay : constant Displayable_Access := Displayable_Access (newDisplay_Param);
      title : Unbounded_String;
      display : Display_Access;
   begin
        title := StringUtil_Package.getInstance.EMPTY_STRING;
        if (Java_Object_Access (newDisplay)) /= (Java_Object_Access (NullCanvas_Package.NULL_CANVAS)) then
            title := newDisplay.getTitle;
            if (title) /= (Null_Unbounded_String) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.SETTING_U).append (title).append (This.U_DISPLAY_U).append (StringUtil_Package.getInstance.toString (newDisplay)).toString, AllBinaryMidlet_Access'(This'Unchecked_Access), This.SET_DISPLAY);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.SETTING_NO_TITLE).append (StringUtil_Package.getInstance.toString (newDisplay)).toString, AllBinaryMidlet_Access'(This'Unchecked_Access), This.SET_DISPLAY);
            end if;
        end if;
        display := AllBinaryMidlet'Class (This).getDisplay;
        display.setCurrent (newDisplay);
   end setDisplay;

   function getDisplay (This : in out AllBinaryMidlet) return Display_Access is
   begin
        return Display_Package.getDisplay (AllBinaryMidlet_Access'(This'Unchecked_Access));
   end getDisplay;

   function getCurrentDisplayable (This : in out AllBinaryMidlet) return Displayable_Access is
   begin
        return Display_Package.getDisplay (AllBinaryMidlet_Access'(This'Unchecked_Access)).getCurrent;
   end getCurrentDisplayable;

   procedure setDestroyed (This : in out AllBinaryMidlet; destroyed : Boolean) is
   begin
        This.midletDestroyed := destroyed;
   end setDestroyed;

   function isDestroyed (This : in out AllBinaryMidlet) return Boolean is
   begin
        return This.midletDestroyed;
   end isDestroyed;

   --  throws MIDletStateChangeException
   procedure startApp (This : in out AllBinaryMidlet) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, AllBinaryMidlet_Access'(This'Unchecked_Access));
   end startApp;

   procedure pauseApp (This : in out AllBinaryMidlet) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, AllBinaryMidlet_Access'(This'Unchecked_Access));
   end pauseApp;

   procedure destroyAppInRunnable (This : in out AllBinaryMidlet; unconditional : Boolean; isProgress : Boolean) is
   begin
        null;
   end destroyAppInRunnable;

   procedure destroyApp (This : in out AllBinaryMidlet; unconditional : Boolean) is
      METHOD_NAME : Unbounded_String;
   begin
        METHOD_NAME := To_Unbounded_String ("AllBinaryMidlet::destroyApp");
        begin
            This.logUtil.putF (This.commonStrings.START, AllBinaryMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
            PreLogUtil_Package.put (Memory_Package.getInfo, AllBinaryMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
            AllBinaryMidlet'Class (This).setDestroyed (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryMidlet_Access'(This'Unchecked_Access), METHOD_NAME, e);
                end;
        end;
   end destroyApp;

   --  throws Exception
   procedure setStartStateHashtable (This : in out AllBinaryMidlet; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (hashtable)).toString, AllBinaryMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("setStartStateHashtable"));
        This.hashtable := hashtable;
   end setStartStateHashtable;

   --  throws Exception
   function getStartStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (StringUtil_Package.getInstance.toString (This.hashtable)).toString, AllBinaryMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("getStartStateHashtable"));
        return This.hashtable;
   end getStartStateHashtable;

   --  throws Exception
   function getCurrentStateHashtable (This : in out AllBinaryMidlet) return ABHashtable_Access is
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("getStateHashtable"));
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
   end getCurrentStateHashtable;

   procedure commandAction (This : in out AllBinaryMidlet; command_Param : access Command_Package.Command'Class; displayable_Param : access Displayable_Package.Displayable'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        null;
   end commandAction;

begin
   null;
   NULL_ALLBINARY_MIDLET := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.midlet.AllBinaryMidlet_Package;


