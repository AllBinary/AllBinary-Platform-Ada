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


with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package; use org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package_References;
with org.allbinary.game.input.mapping.PersistentInputMapping_Package; use org.allbinary.game.input.mapping.PersistentInputMapping_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
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
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
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
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package body org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package is

   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package PersistentInputMapping_Package renames Standard.org.allbinary.game.input.mapping.PersistentInputMapping_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
   subtype GameInputMapping_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access;
   function "=" (Left, Right : GameInputMapping_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array;
   function "=" (Left, Right : GameInputMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
   subtype GameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.GameInputMapping_Package_References."=";
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
   procedure Initialize_Fields (This : in out BasicInputMappingHelpPaintable'Class) is
   begin
      null;
      
      This.NONE := GameKey_Access (GameKeyFactory_Package.getInstance.NONE);
   end Initialize_Fields;


   procedure Initialize (This : in out BasicInputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        HelpPaintable_Package.Initialize (This, To_Unbounded_String ("Help Screen"), BasicColorFactory_Package.getInstance.BLACK, basicColor);
        Initialize_Fields (This);
        This.gameInputMappingArray := gameInputMappingArray;
        BasicInputMappingHelpPaintable'Class (This).update (This.NONE, This.NONE);
   end Initialize;

   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicInputMappingHelpPaintable_Access is
      This : constant BasicInputMappingHelpPaintable_Access := new BasicInputMappingHelpPaintable;
   begin
      BasicInputMappingHelpPaintable_Package.Initialize (This.all, gameInputMappingArray, basicColor_Param);
      return This;
   end Create;

   procedure update (This : in out BasicInputMappingHelpPaintable; selectedGameKey_Param : access GameKey_Package.GameKey'Class; selectedInput_Param : access Input_Package.Input'Class) is
      selectedGameKey : constant GameKey_Access := GameKey_Access (selectedGameKey_Param);
      selectedInput : constant Input_Access := Input_Access (selectedInput_Param);
      gameKeyMapping : PersistentInputMapping_Access;
      EQUAL : Unbounded_String;
      stringMaker : StringMaker_Access;
      size : Integer;
      keyInfo : Unbounded_String_Array_Access;
      gameInputMapping : GameInputMapping_Access;
      gameKey : GameKey_Access;
      list : BasicArrayList_Access;
      index : Integer;
   begin
        gameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        EQUAL := To_Unbounded_String (" = ");
        stringMaker := StringMaker_Package.Create;
        size := This.gameInputMappingArray'Length;
        keyInfo := new Unbounded_String_Array'(0 .. (size) - 1 => Null_Unbounded_String);
        gameInputMapping := null;
        gameKey := null;
        list := null;
        for index in 0 .. (size) - 1 loop
            gameInputMapping := This.gameInputMappingArray (index);
            gameKey := gameInputMapping.getGameKey;
            list := gameKeyMapping.getInputMapping.getMappedInput (gameKey);
            stringMaker.delete (0, stringMaker.length);
            keyInfo (index) := stringMaker.append (gameInputMapping.getName).append (EQUAL).append (BasicInputMappingHelpPaintable'Class (This).get (list)).toString;
        end loop;
        HelpPaintable_Package.HelpPaintable (This).setInputInfoP (keyInfo);
   end update;

   function get (This : in out BasicInputMappingHelpPaintable; keyList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String is
      keyList : constant BasicArrayList_Access := BasicArrayList_Access (keyList_Param);
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
      AND_Id : Unbounded_String;
      key : Input_Access;
      size : Integer;
      index : Integer;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        AND_Id := To_Unbounded_String ("and ");
        key := null;
        size := keyList.size;
        for index in 0 .. (size) - 1 loop
            key := Input_Access (keyList.objectArray (index));
            stringBuffer.append (key.getName);
            if ((index) + (1)) < (keyList.size) then
                if (keyList.size) = (2) then
                    stringBuffer.append (commonSeps.SPACE).append (AND_Id);
                else
                    if ((index) + (2)) = (keyList.size) then
                        stringBuffer.append (commonSeps.COMMA_SEP);
                        stringBuffer.append (AND_Id);
                    else
                        stringBuffer.append (commonSeps.COMMA_SEP);
                    end if;
                end if;
            end if;
        end loop;
        return stringBuffer.toString;
   end get;

   procedure get (This : in out BasicInputMappingHelpPaintable; keyList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Unbounded_String := BasicInputMappingHelpPaintable'Class (This).get (keyList_Param => keyList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package;


