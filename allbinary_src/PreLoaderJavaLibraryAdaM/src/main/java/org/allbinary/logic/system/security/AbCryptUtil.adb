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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package; use org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package; use org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
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
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
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
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.system.security.AbCryptUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package AbCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
   package KeySpecFactory_Package renames Standard.org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   function "=" (Left, Right : StreamUtil_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreamUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.StreamUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AbCryptUtil'Class) is
   begin
      null;
      This.streamUtil := StreamUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AbCryptUtil_Access is
   begin
        return AbCryptUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbCryptUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbCryptUtil_Access is
      This : constant AbCryptUtil_Access := new AbCryptUtil;
   begin
      AbCryptUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function decrypt (This : in out AbCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; key : Unbounded_String) return Short_Short_Integer_Array_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      outputStream : ByteArrayOutputStream_Access;
      abCrypt : AbCrypt_Access;
   begin
        outputStream := null;
        begin
            outputStream := ByteArrayOutputStream_Access (This.streamUtil.get (inputStream, ByteArrayOutputStream_Package.Create, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            abCrypt := AbCrypt_Package.Create (KeySpecFactory_Package.getInstance.DESEDE);
            abCrypt.init (key);
            return abCrypt.decrypt (outputStream.toByteArray);
        end;
        --  finally
        begin
            This.streamUtil.close (outputStream);
            This.streamUtil.close (inputStream);
        end;
   end decrypt;

   procedure decrypt (This : in out AbCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; key : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCryptUtil'Class (This).decrypt (inputStream_Param => inputStream_Param, key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

begin
   null;
   instance := AbCryptUtil_Package.Create;

end org.allbinary.logic.system.security.AbCryptUtil_Package;


