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
with org.allbinary.TsUtil_Package_References;
with org.allbinary.init.crypt.jcehelper.CryptInterface_Package; use org.allbinary.init.crypt.jcehelper.CryptInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.bouncycastle.jce.provider.BouncyCastleProvider_Package; use org.bouncycastle.jce.provider.BouncyCastleProvider_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package; use org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References;
with org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package; use org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package; use org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
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
with org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BouncyCastleProvider_Package renames Standard.org.bouncycastle.jce.provider.BouncyCastleProvider_Package;
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
   subtype BaseSecretComposite_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access;
   function "=" (Left, Right : BaseSecretComposite_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array;
   function "=" (Left, Right : BaseSecretComposite_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access_Array is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   subtype BaseSecretComposite_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References.BaseSecretComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseSecretComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package_References."=";
   procedure Initialize_Fields (This : in out AbCrypt'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.secretComposite := BaseSecretComposite_Access (BaseSecretComposite_Package.NULL_SECRET_COMPOSITE);
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbCrypt'Class; algorithm : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.algorithm := algorithm;
   end Initialize;

   function Create (algorithm : Unbounded_String) return AbCrypt_Access is
      This : constant AbCrypt_Access := new AbCrypt;
   begin
      AbCrypt_Package.Initialize (This.all, algorithm);
      return This;
   end Create;

   procedure init (This : in out AbCrypt; keyAsString : Unbounded_String) is
      commonStrings : CommonStrings_Access;
      key : Short_Short_Integer_Array_Access;
      keySpec : KeySpec_Access;
      keyFactory : SecretKeyFactory_Access;
      secretKey : SecretKey_Access;
      cipher : Cipher_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            begin
                Security_Package.addProvider (BouncyCastleProvider_Package.Create);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, AbCrypt_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                    end;
            end;
            key := This.tsUtil.getByteArray (keyAsString);
            keySpec := KeySpecFactory_Package.getInstance.getInstance (This.algorithm, key);
            keyFactory := SecretKeyFactory_Package.getInstance (This.algorithm);
            secretKey := keyFactory.generateSecret (keySpec);
            cipher := Cipher_Package.getInstance (This.algorithm);
            This.secretComposite := BaseSecretComposite_Access (SecretComposite_Package.Create (secretKey, cipher, key));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("init Failed"), AbCrypt_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

   function encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return This.secretComposite.encrypt (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Encrypt Failed"), AbCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("encrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end encrypt;

   function decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) return Short_Short_Integer_Array_Access is
   begin
        begin
            return This.secretComposite.decrypt (array_Id);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("decrypt Failed"), AbCrypt_Access'(This'Unchecked_Access), To_Unbounded_String ("decrypt"), e);
            return NullUtil_Package.getInstance.NULL_BYTE_ARRAY;
                end;
        end;
   end decrypt;

   procedure encrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).encrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end encrypt;

   procedure decrypt (This : in out AbCrypt; array_Id : Short_Short_Integer_Array_Access) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbCrypt'Class (This).decrypt (array_Id => array_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end decrypt;

end org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;


