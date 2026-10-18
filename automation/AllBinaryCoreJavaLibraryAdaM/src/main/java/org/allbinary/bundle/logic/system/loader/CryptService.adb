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


with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;
with org.allbinary.gui.dialog.ExitCloseListener_Package; use org.allbinary.gui.dialog.ExitCloseListener_Package;
with org.allbinary.logic.system.security.AbKeys_Package; use org.allbinary.logic.system.security.AbKeys_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeNoLicense_Package; use org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body org.allbinary.bundle.logic.system.loader.CryptService_Package is

   package Globals_Package renames Standard.org.allbinary.globals.Globals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package BasicTextJDialog_Package renames Standard.org.allbinary.gui.dialog.BasicTextJDialog_Package;
   package ExitCloseListener_Package renames Standard.org.allbinary.gui.dialog.ExitCloseListener_Package;
   package AbKeys_Package renames Standard.org.allbinary.logic.system.security.AbKeys_Package;
   package AbeLicenseInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;
   package AbeLicenseInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
   package AbeNoLicense_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out CryptService'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abCryptUtil := AbCryptUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CryptService'Class) is
   begin
      Initialize_Fields (This);
        Globals_Package.getInstance.init (This.all'Tag.getClassLoader, To_Unbounded_String ("./"));
        This.logUtil.putF (To_Unbounded_String ("Set Globals: ") & Java_Image (URLGLOBALS_Package.getWebappPath), CryptService_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return CryptService_Access is
      This : constant CryptService_Access := new CryptService;
   begin
      CryptService_Package.Initialize (This.all);
      return This;
   end Create;

   function getDecryptedInputStream (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; inputStream_Param : access InputStream_Package.InputStream'Class) return InputStream_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      key : Unbounded_String;
      decrypted : Short_Short_Integer_Array_Access;
   begin
        begin
            key := AbKeys_Package.getInstance.getKey (abeClientInformation, name);
            decrypted := This.abCryptUtil.decrypt (inputStream, key);
            return InputStream_Access (ByteArrayInputStream_Package.Create (decrypted));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            CryptService'Class (This).showLicenseDialog (abeClientInformation, e);
                end;
        end;
        return null;
   end getDecryptedInputStream;

   procedure showLicenseDialog (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; e_Param : access Java_Throwable_Object'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      e : constant Java_Throwable := Java_Throwable (e_Param);
      basicTextJDialog : BasicTextJDialog_Access;
      abeLicenseInterface : AbeLicenseInterface_Access;
   begin
        begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CryptService_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
            basicTextJDialog := BasicTextJDialog_Package.Create (Java_Get_Message (e));
            begin
                abeLicenseInterface := AbeLicenseInterfaceFactory_Package.getInstance.getLicenseInstance (abeClientInformation);
                if (abeLicenseInterface) /= (AbeNoLicense_Package.getInstance) then
                    if abeLicenseInterface.isValid then
                        basicTextJDialog.setText (To_Unbounded_String ("Subscription Invalid"));
                    end if;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CryptService_Access'(This'Unchecked_Access), This.commonStrings.INIT, e2);
                    end;
            end;
            basicTextJDialog.addCloseListener (ExitCloseListener_Package.Create);
            basicTextJDialog.setVisible (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e3 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CryptService_Access'(This'Unchecked_Access), This.commonStrings.INIT, e3);
                end;
        end;
   end showLicenseDialog;

   procedure getDecryptedInputStream (This : in out CryptService; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; inputStream_Param : access InputStream_Package.InputStream'Class) is
      Java_Result : constant InputStream_Access := CryptService'Class (This).getDecryptedInputStream (abeClientInformation_Param, name, inputStream_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDecryptedInputStream;

end org.allbinary.bundle.logic.system.loader.CryptService_Package;


