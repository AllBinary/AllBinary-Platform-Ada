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


with org.allbinary.graphics.form.item.ABTextFieldItem_Package; use org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;
with org.allbinary.logic.control.validate.ValidatorBase_Package; use org.allbinary.logic.control.validate.ValidatorBase_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.graphics.form.item.ABStringComponent_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.graphics.form.item.CustomCustomItem_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
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
with org.allbinary.logic.util.visitor.Visitor_Package;

package body org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package is

   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype ABTextFieldItem_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access;
   function "=" (Left, Right : ABTextFieldItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
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
   procedure Initialize_Fields (This : in out TextFieldItemValidator'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TextFieldItemValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
      ValidatorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.textFieldItem := textFieldItem;
        This.min := min;
        This.max := max;
        This.allowOnEmpty := allowOnEmpty;
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) return TextFieldItemValidator_Access is
      This : constant TextFieldItemValidator_Access := new TextFieldItemValidator;
   begin
      TextFieldItemValidator_Package.Initialize (This.all, textFieldItem_Param, min, max, allowOnEmpty);
      return This;
   end Create;

   function isValid (This : in out TextFieldItemValidator) return Boolean is
      booleanFactory : BooleanFactory_Access;
      result : Boolean;
      string_Id : Unbounded_String;
      textLength : Integer;
   begin
        booleanFactory := BooleanFactory_Package.getInstance;
        result := booleanFactory.TRUE;
        string_Id := This.textFieldItem.getString;
        textLength := Ada.Strings.Unbounded.Length (string_Id);
        if ((((textLength) = (0)) and then (This.allowOnEmpty))) or else (((textLength) > (This.min)) and then ((textLength) < (This.max))) then
            null;
        else
            if (textLength) < (This.min) then
                result := booleanFactory.FALSE;
            elsif (textLength) > (This.max) then
                result := booleanFactory.FALSE;
            end if;
        end if;
        return result;
   end isValid;

   function toList (This : in out TextFieldItemValidator) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      string_Id : Unbounded_String;
      textLength : Integer;
      label : Unbounded_String;
      name : Unbounded_String;
   begin
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        string_Id := This.textFieldItem.getString;
        textLength := Ada.Strings.Unbounded.Length (string_Id);
        if ((textLength) > (This.min)) and then ((textLength) < (This.max)) then
            null;
        else
            label := This.textFieldItem.getLabel;
            name := Unbounded_Slice (label, (0) + 1, (Ada.Strings.Unbounded.Length (label)) - (2));
            if (textLength) < (This.min) then
                list.add (Java_Box (StringMaker_Package.Create.append (name).append (To_Unbounded_String (" is to short")).toString));
            elsif (textLength) > (This.max) then
                list.add (Java_Box (StringMaker_Package.Create.append (name).append (To_Unbounded_String (" is to long")).toString));
            end if;
        end if;
        return list;
   end toList;

end org.allbinary.graphics.form.item.validation.TextFieldItemValidator_Package;


