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
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
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

package body org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package is

   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
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
   procedure Initialize_Fields (This : in out NumberTextFieldItemValidator'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out NumberTextFieldItemValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
      ValidatorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.textFieldItem := textFieldItem;
        This.min := min;
        This.max := max;
        This.maxChars := maxChars;
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; maxChars : Integer; min : Integer; max : Integer) return NumberTextFieldItemValidator_Access is
      This : constant NumberTextFieldItemValidator_Access := new NumberTextFieldItemValidator;
   begin
      NumberTextFieldItemValidator_Package.Initialize (This.all, textFieldItem_Param, maxChars, min, max);
      return This;
   end Create;

   function isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer) return Boolean is
   begin
        return BooleanFactory_Package.getInstance.TRUE;
   end isNumberValid;

   function toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer) return BasicArrayList_Access is
   begin
        return BasicArrayList_Access (BasicArrayListD_Package.Create);
   end toNumberVector;

   function isValid (This : in out NumberTextFieldItemValidator) return Boolean is
      result : Boolean;
      string_Id : Unbounded_String;
      textLength : Integer;
   begin
        result := BooleanFactory_Package.getInstance.TRUE;
        string_Id := This.textFieldItem.getString;
        textLength := Ada.Strings.Unbounded.Length (string_Id);
        if ((textLength) > (0)) and then ((textLength) < (This.maxChars)) then
            begin
                declare Java_Result renames Integer'Value (To_String (This.textFieldItem.getString)); pragma Unreferenced (Java_Result); begin null; end;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                result := BooleanFactory_Package.getInstance.FALSE;
                    end;
            end;
        else
            if (textLength) < (1) then
                result := BooleanFactory_Package.getInstance.FALSE;
            elsif (textLength) > (This.maxChars) then
                result := BooleanFactory_Package.getInstance.FALSE;
            end if;
        end if;
        return result;
   end isValid;

   function toList (This : in out NumberTextFieldItemValidator) return BasicArrayList_Access is
      list : BasicArrayList_Access;
      string_Id : Unbounded_String;
      textLength : Integer;
      label : Unbounded_String;
      name : Unbounded_String;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      stringMaker : StringMaker_Access;
      number : Integer;
   begin
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        string_Id := This.textFieldItem.getString;
        textLength := Ada.Strings.Unbounded.Length (string_Id);
        label := This.textFieldItem.getLabel;
        name := Unbounded_Slice (label, (0) + 1, (Ada.Strings.Unbounded.Length (label)) - (2));
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        stringMaker := StringMaker_Package.Create;
        if ((textLength) > (0)) and then ((textLength) < (This.maxChars)) then
            begin
                number := smallIntegerSingletonFactory.createInstance (Integer'Value (To_String (This.textFieldItem.getString)));
                if (Integer (number)) > (This.min) then
                    stringMaker.delete (0, stringMaker.length);
                    list.add (Java_Box (stringMaker.append (name).append (To_Unbounded_String (" is to small")).toString));
                elsif (Integer (number)) > (This.max) then
                    stringMaker.delete (0, stringMaker.length);
                    list.add (Java_Box (stringMaker.append (name).append (To_Unbounded_String (" is to large")).toString));
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                stringMaker.delete (0, stringMaker.length);
                list.add (Java_Box (stringMaker.append (name).append (To_Unbounded_String (" is not a number")).toString));
                    end;
            end;
        else
            if (textLength) < (1) then
                stringMaker.delete (0, stringMaker.length);
                list.add (Java_Box (stringMaker.append (name).append (To_Unbounded_String (" is to short")).toString));
            elsif (textLength) > (This.maxChars) then
                stringMaker.delete (0, stringMaker.length);
                list.add (Java_Box (stringMaker.append (name).append (To_Unbounded_String (" is to long")).toString));
            end if;
        end if;
        return list;
   end toList;

   procedure isNumberValid (This : in out NumberTextFieldItemValidator; value : Integer) is
      Java_Result : constant Boolean := NumberTextFieldItemValidator'Class (This).isNumberValid (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNumberValid;

   procedure toNumberVector (This : in out NumberTextFieldItemValidator; value : Integer) is
      Java_Result : constant BasicArrayList_Access := NumberTextFieldItemValidator'Class (This).toNumberVector (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toNumberVector;

end org.allbinary.graphics.form.item.validation.NumberTextFieldItemValidator_Package;


