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


package body org.allbinary.bundle.logic.system.loader.CryptService_Package is

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
        This.logUtil.putF (To_Unbounded_String ("Set Globals: ") & Java_Image (URLGLOBALS.getWebappPath), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
   end Initialize;

   function Create return CryptService_Access is
      This : constant CryptService_Access := new CryptService;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getDecryptedInputStream (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; inputStream : InputStream_Access) return InputStream_Access is
      key : Unbounded_String;
      decrypted : Short_Short_Integer_Array_Access;
   begin
        begin
            key := AbKeys_Package.getInstance.getKey (abeClientInformation, name);
            decrypted := This.abCryptUtil.decrypt (inputStream, key);
            return ByteArrayInputStream_Package.Create (decrypted);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.showLicenseDialog (abeClientInformation, e);
                end;
        end;
        return null;
   end getDecryptedInputStream;

   procedure showLicenseDialog (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; e : Java_Throwable) is
      basicTextJDialog : BasicTextJDialog_Access;
      abeLicenseInterface : AbeLicenseInterface_Access;
   begin
        begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e2);
                    end;
            end;
            basicTextJDialog.addCloseListener (ExitCloseListener_Package.Create);
            basicTextJDialog.setVisible (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e3 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.INIT, e3);
                end;
        end;
   end showLicenseDialog;

   procedure getDecryptedInputStream (This : in out CryptService; abeClientInformation : AbeClientInformationInterface_Access; name : Unbounded_String; inputStream : InputStream_Access) is
      Java_Result : constant InputStream_Access := CryptService'Class (This).getDecryptedInputStream (abeClientInformation, name, inputStream);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDecryptedInputStream;

end org.allbinary.bundle.logic.system.loader.CryptService_Package;


