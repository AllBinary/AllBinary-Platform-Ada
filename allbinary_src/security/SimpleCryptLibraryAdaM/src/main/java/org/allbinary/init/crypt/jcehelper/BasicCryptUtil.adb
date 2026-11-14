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


with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package is

   package ByteArrayInputStream_Package renames Standard.java.io.ByteArrayInputStream_Package;
   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
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
   subtype CryptInterface_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access;
   function "=" (Left, Right : CryptInterface_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   subtype CryptInterface_Access_Array_Access_Array_Access is org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References.CryptInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CryptInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.crypt.jcehelper.CryptInterface_Package_References."=";
   procedure Initialize_Fields (This : in out BasicCryptUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.XML_START := To_Unbounded_String ("<?xml");
   end Initialize_Fields;

   procedure Initialize (This : in out BasicCryptUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicCryptUtil_Access is
      This : constant BasicCryptUtil_Access := new BasicCryptUtil;
   begin
      BasicCryptUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicCryptUtil_Access is
   begin
        return BasicCryptUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) return InputStream_Access is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      cryptInterface : constant CryptInterface_Access := CryptInterface_Access (cryptInterface_Param);
      buffer : ByteArrayOutputStream_Access;
      ch : Integer;
      decrypted : Short_Short_Integer_Array_Access;
      decryptedString : Unbounded_String;
      index : Integer;
   begin
        buffer := ByteArrayOutputStream_Package.Create;
        ch := 0;
        while True loop
            ch := inputStream.read;
            if (ch) = (-(1)) then
                exit;
            end if;
            buffer.write (ch);
        end loop;
        decrypted := cryptInterface.decrypt (buffer.toByteArray);
        decryptedString := Java_New_String (decrypted);
        index := Java_Index_Of (decryptedString, Java_Image (This.XML_START));
        if (index) > (0) then
            decryptedString := Unbounded_Slice (decryptedString, (index) + 1, Ada.Strings.Unbounded.Length (decryptedString));
        end if;
        return InputStream_Access (ByteArrayInputStream_Package.Create (This.tsUtil.getByteArray (decryptedString)));
   end getDecryptedInputStream;

   procedure getDecryptedInputStream (This : in out BasicCryptUtil; inputStream_Param : access InputStream_Package.InputStream'Class; cryptInterface_Param : access CryptInterface_Package.CryptInterface'Class) is
      Java_Result : constant InputStream_Access := BasicCryptUtil'Class (This).getDecryptedInputStream (inputStream_Param => inputStream_Param, cryptInterface_Param => cryptInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDecryptedInputStream;

begin
   null;
   instance := BasicCryptUtil_Package.Create;

end org.allbinary.init.crypt.jcehelper.BasicCryptUtil_Package;


