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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.FormType_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.allbinary.graphics.form.FormType_Package;
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
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
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

package body org.allbinary.graphics.form.FormTypeFactory_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype FormType_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access;
   function "=" (Left, Right : FormType_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array;
   function "=" (Left, Right : FormType_Access_Array) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access;
   function "=" (Left, Right : FormType_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access_Array is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array;
   function "=" (Left, Right : FormType_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   subtype FormType_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormType_Package_References.FormType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormType_Package_References."=";
   procedure Initialize_Fields (This : in out FormTypeFactory'Class) is
   begin
      null;
      This.UNK := To_Unbounded_String ("Unknown FormType");
      This.NULL_FORM_TYPE := FormType_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
      This.TEMP_HORIZONTAL_FORM := FormType_Package.Create (To_Unbounded_String ("TempHorizontal"));
      This.HORIZONTAL_FORM := FormType_Package.Create (To_Unbounded_String ("Horizontal"));
      This.VERTICAL_CENTER_FORM := FormType_Package.Create (To_Unbounded_String ("Vertical"));
   end Initialize_Fields;

   procedure Initialize (This : in out FormTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FormTypeFactory_Access is
      This : constant FormTypeFactory_Access := new FormTypeFactory;
   begin
      FormTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FormTypeFactory_Access is
   begin
        return FormTypeFactory_Access (FormTypeFactory_Package.instance);
   end getInstance;

   function getFormType (This : in out FormTypeFactory) return FormType_Access is
      displayInfo : DisplayInfoSingleton_Access;
      formType : FormType_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        formType := null;
        if displayInfo.isPortrait then
            formType := This.VERTICAL_CENTER_FORM;
        else
            formType := This.HORIZONTAL_FORM;
        end if;
        return formType;
   end getFormType;

begin
   null;
   instance := FormTypeFactory_Package.Create;

end org.allbinary.graphics.form.FormTypeFactory_Package;


