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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.java.byteutil.ByteUtil_Package; use org.allbinary.logic.java.byteutil.ByteUtil_Package;
with org.allbinary.logic.java.byteutil.ByteUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
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
with org.microemu.MIDletAccess_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype ByteUtil_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access;
   function "=" (Left, Right : ByteUtil_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array;
   function "=" (Left, Right : ByteUtil_Access_Array) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access;
   function "=" (Left, Right : ByteUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array_Access_Array is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ByteUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   subtype ByteUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.byteutil.ByteUtil_Package_References.ByteUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ByteUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.byteutil.ByteUtil_Package_References."=";
   procedure Initialize_Fields (This : in out BasicCrypt'Class) is
   begin
      null;
      This.byteUtil := ByteUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicCrypt'Class; keyAsString : Unbounded_String) is
      key : Short_Short_Integer_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        key := NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
        begin
            key := TsUtil_Package.getInstance.getByteArray (keyAsString);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("AbCrypt(alg,key)"), e);
                end;
        end;
        This.key := key;
   end Initialize;

   function Create (keyAsString : Unbounded_String) return BasicCrypt_Access is
      This : constant BasicCrypt_Access := new BasicCrypt;
   begin
      BasicCrypt_Package.Initialize (This.all, keyAsString);
      return This;
   end Create;

   function encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return BasicCrypt'Class (This).mutilate (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end encrypt;

   function decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return BasicCrypt'Class (This).mutilate (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), BasicCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("decrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end decrypt;

   function mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
      array_Id : Short_Short_Integer_Array_Access := array_Id_Param;
      value : Short_Short_Integer;
      index : Integer;
   begin
        value := 0;
        for index in 0 .. (This.key'Length) - 1 loop
            value := This.key (index);
            array_Id := This.byteUtil.xor_Id (array_Id, value);
        end loop;
        return array_Id;
   end mutilate;

   procedure encrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).encrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out BasicCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).decrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

   procedure mutilate (This : in out BasicCrypt; array_Id_Param : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := BasicCrypt'Class (This).mutilate (array_Id_Param => array_Id_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end mutilate;

end org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt_Package;


