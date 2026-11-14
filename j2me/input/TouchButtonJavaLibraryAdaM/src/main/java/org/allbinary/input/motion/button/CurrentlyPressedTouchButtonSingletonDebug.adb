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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonStrings_Package;
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
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
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
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   function "=" (Left, Right : TouchButtonInput_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonInput_Package_References."=";
   procedure Initialize_Fields (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class) is
   begin
      null;
      This.string_Id := StringUtil_Package.getInstance.EMPTY_STRING;
      This.listString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.appendText := StringUtil_Package.getInstance.EMPTY_STRING;
      This.PRESSED_AND_FIRED := To_Unbounded_String ("pressed & fired");
      This.PRESSED_AND_NOT_FIRED := To_Unbounded_String ("pressed in button but not fired");
      This.ASSOCIATED_RELEASED_AND_FIRED := To_Unbounded_String ("assoc. rel & fired");
      This.RELEASED_AND_FIRED := To_Unbounded_String ("rel & fired 1");
      This.RELEASED_AND_FIRED_2 := To_Unbounded_String ("rel & fired 2");
      This.RELEASED_AND_NOT_FIRED := To_Unbounded_String ("rel & not fired");
   end Initialize_Fields;

   procedure Initialize (This : in out CurrentlyPressedTouchButtonSingletonDebug'Class) is
   begin
      CurrentlyPressedTouchButtonSingleton_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CurrentlyPressedTouchButtonSingletonDebug_Access is
      This : constant CurrentlyPressedTouchButtonSingletonDebug_Access := new CurrentlyPressedTouchButtonSingletonDebug;
   begin
      CurrentlyPressedTouchButtonSingletonDebug_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CurrentlyPressedTouchButtonSingleton_Access is
   begin
        return CurrentlyPressedTouchButtonSingleton_Access (CurrentlyPressedTouchButtonSingletonDebug_Package.instanceC);
   end getInstance;

   procedure appendTouchButtonInput (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (touchButtonInput.toString);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (append);
        This.appendText := stringBuffer.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
   end appendTouchButtonInput;

   procedure append (This : in out CurrentlyPressedTouchButtonSingletonDebug; append : Unbounded_String) is
   begin
        This.appendText := StringMaker_Package.Create.append (This.appendText).append (append).toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
   end append;

   procedure clearLog (This : in out CurrentlyPressedTouchButtonSingletonDebug; x : Integer; y : Integer) is
   begin
        This.appendText := StringMaker_Package.Create.append (GPoint_Package.toStringStatic (x, y, 0)).append (CommonSeps_Package.getInstance.SPACE).toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
   end clearLog;

   procedure releaseAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug) is
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).append (This.RELEASED_AND_NOT_FIRED);
   end releaseAndNotFired;

   procedure releaseAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).appendTouchButtonInput (This.RELEASED_AND_FIRED, touchButtonInput);
   end releaseAndFired;

   procedure releaseAndFired2 (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).appendTouchButtonInput (This.RELEASED_AND_FIRED_2, touchButtonInput);
   end releaseAndFired2;

   procedure releaseAndFiredAssociated (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).appendTouchButtonInput (This.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput);
   end releaseAndFiredAssociated;

   procedure pressedAndFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).appendTouchButtonInput (This.PRESSED_AND_FIRED, touchButtonInput);
   end pressedAndFired;

   procedure pressedAndNotFired (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingletonDebug'Class (This).appendTouchButtonInput (This.PRESSED_AND_NOT_FIRED, touchButtonInput);
   end pressedAndNotFired;

   function removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) return TouchButtonInput_Access is
      touchButtonInput : TouchButtonInput_Access;
   begin
        touchButtonInput := CurrentlyPressedTouchButtonSingleton_Package.CurrentlyPressedTouchButtonSingleton (This).removeAt (index);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
        return touchButtonInput;
   end removeAt;

   function remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) return Boolean is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
      isRemoved : Boolean;
   begin
        isRemoved := CurrentlyPressedTouchButtonSingleton_Package.CurrentlyPressedTouchButtonSingleton (This).remove (touchButtonInput);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
        return isRemoved;
   end remove;

   procedure add (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      touchButtonInput : constant TouchButtonInput_Access := TouchButtonInput_Access (touchButtonInput_Param);
   begin
        CurrentlyPressedTouchButtonSingleton_Package.CurrentlyPressedTouchButtonSingleton (This).add (touchButtonInput);
        This.listString := This.list.toString;
        This.string_Id := StringMaker_Package.Create.append (This.listString).append (This.appendText).toString;
   end add;

   function toString (This : in out CurrentlyPressedTouchButtonSingletonDebug) return Unbounded_String is
   begin
        return This.string_Id;
   end toString;

   procedure removeAt (This : in out CurrentlyPressedTouchButtonSingletonDebug; index : Integer) is
      Java_Result : constant TouchButtonInput_Access := CurrentlyPressedTouchButtonSingletonDebug'Class (This).removeAt (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeAt;

   procedure remove (This : in out CurrentlyPressedTouchButtonSingletonDebug; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class) is
      Java_Result : constant Boolean := CurrentlyPressedTouchButtonSingletonDebug'Class (This).remove (touchButtonInput_Param => touchButtonInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end remove;

begin
   null;
   instanceC := CurrentlyPressedTouchButtonSingletonDebug_Package.Create;

end org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingletonDebug_Package;


