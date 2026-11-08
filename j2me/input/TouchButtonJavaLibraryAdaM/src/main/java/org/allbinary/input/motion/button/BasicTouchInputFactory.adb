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


with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package; use org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayListS_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
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
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.input.motion.button.BasicTouchInputFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
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
   procedure Initialize_Fields (This : in out BasicTouchInputFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      
      
      
      
      
      
      This.initialized := False;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return BasicTouchInputFactory_Access is
   begin
        if (BasicTouchInputFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            BasicTouchInputFactory_Package.instance := Java_Object_Access (BasicTouchInputFactory_Package.Create);
        end if;
        return BasicTouchInputFactory_Access (BasicTouchInputFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BasicTouchInputFactory'Class) is
      MAX : Integer;
   begin
      Initialize_Fields (This);
        MAX := InputFactory_Package.getInstance.MAX;
        This.SPECIAL_BUTTON_SEVEN_TESTING_ONLY := TouchButtonInput_Package.Create ((MAX) - (41), To_Unbounded_String ("Button 7 - Testing Only May Cross Over Key Values"));
        This.SPECIAL_BUTTON_EIGHT_TESTING_ONLY := TouchButtonInput_Package.Create ((MAX) - (42), To_Unbounded_String ("Button 8 - Testing Only May Cross Over Key Values"));
        This.SPECIAL_BUTTON_SIX := TouchButtonInput_Package.Create ((MAX) - (30), To_Unbounded_String ("Button 6"));
        This.SPECIAL_BUTTON_FIVE := TouchButtonInput_Package.Create ((MAX) - (31), To_Unbounded_String ("Button 5"));
        This.SPECIAL_BUTTON_FOUR := TouchButtonInput_Package.Create ((MAX) - (32), To_Unbounded_String ("Button 4"));
        This.SPECIAL_BUTTON_THREE := TouchButtonInput_Package.Create ((MAX) - (33), To_Unbounded_String ("Button 3"));
        This.SPECIAL_BUTTON_TWO := TouchButtonInput_Package.Create ((MAX) - (34), To_Unbounded_String ("Button 2"));
        This.SPECIAL_BUTTON_ONE := TouchButtonInput_Package.Create ((MAX) - (35), To_Unbounded_String ("Button 1"));
        This.UP := TouchButtonInput_Package.Create ((MAX) - (36), To_Unbounded_String ("Up Button"));
        This.LEFT := TouchButtonInput_Package.Create ((MAX) - (37), To_Unbounded_String ("Left Button"));
        This.RIGHT := TouchButtonInput_Package.Create ((MAX) - (38), To_Unbounded_String ("Right Button"));
        This.DOWN := TouchButtonInput_Package.Create ((MAX) - (39), To_Unbounded_String ("Down Button"));
        This.NONE := TouchButtonInput_Package.Create ((MAX) - (40), To_Unbounded_String ("No Button"));
   end Initialize;

   function Create return BasicTouchInputFactory_Access is
      This : constant BasicTouchInputFactory_Access := new BasicTouchInputFactory;
   begin
      BasicTouchInputFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        if not (This.initialized) then
            This.initialized := True;
            This.list.add (Java_Object_Access (This.UP));
            This.list.add (Java_Object_Access (This.LEFT));
            This.list.add (Java_Object_Access (This.RIGHT));
            This.list.add (Java_Object_Access (This.DOWN));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_TWO));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_FOUR));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_THREE));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_ONE));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_FIVE));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_SIX));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_SIX));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_SEVEN_TESTING_ONLY));
            This.list.add (Java_Object_Access (This.SPECIAL_BUTTON_EIGHT_TESTING_ONLY));
            BasicTouchInputFactory'Class (This).updateAllFromList (This.list, inputToGameKeyMapping);
        end if;
   end init;

   procedure updateAll (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
   begin
        BasicTouchInputFactory'Class (This).updateAllFromList (This.list, inputToGameKeyMapping);
   end updateAll;

   procedure updateAllFromList (This : in out BasicTouchInputFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      inputToGameKeyMapping : constant InputToGameKeyMapping_Access := InputToGameKeyMapping_Access (inputToGameKeyMapping_Param);
      touchButtonInput : TouchButtonInput_Access;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).appendint (list.size).toString, BasicTouchInputFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("updateAll"));
        touchButtonInput := null;
        for index in reverse 0 .. (list.size) - (1) loop
            touchButtonInput := TouchButtonInput_Access (list.objectArray (index));
            touchButtonInput.update (inputToGameKeyMapping);
        end loop;
   end updateAllFromList;

   function getList (This : in out BasicTouchInputFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.button.BasicTouchInputFactory_Package;


