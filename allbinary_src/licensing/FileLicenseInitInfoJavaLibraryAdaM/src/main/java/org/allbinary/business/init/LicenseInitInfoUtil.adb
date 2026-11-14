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
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfo_Package_References;
with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
with org.allbinary.util.BasicArrayList_Package;
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
with org.allbinary.logic.io.file.FilePathData_Package;
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
with org.allbinary.business.init.LicenseInitInfo_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.logic.io.path.PathUtil_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.globals.UrlGlobalsInterface_Package;

package body org.allbinary.business.init.LicenseInitInfoUtil_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbDataInputStream_Package renames Standard.org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package DatabaseEncoder_Package renames Standard.org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   function "=" (Left, Right : StringUtil_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringUtil_Package_References."=";
   subtype LicenseInitInfo_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access;
   function "=" (Left, Right : LicenseInitInfo_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array;
   function "=" (Left, Right : LicenseInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access_Array is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   subtype LicenseInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.LicenseInitInfo_Package_References.LicenseInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.LicenseInitInfo_Package_References."=";
   procedure Initialize_Fields (This : in out LicenseInitInfoUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.INITFILENAME := To_Unbounded_String ("licenseinitdata.dat");
      This.ABOUT := To_Unbounded_String ("about");
      This.PRIVACY_POLICY := To_Unbounded_String ("privacy_policy");
      This.filePath := This.stringUtil.EMPTY_STRING;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseInitInfoUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseInitInfoUtil_Access is
      This : constant LicenseInitInfoUtil_Access := new LicenseInitInfoUtil;
   begin
      LicenseInitInfoUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LicenseInitInfoUtil_Access is
   begin
        return LicenseInitInfoUtil_Package.instance;
   end getInstance;

   procedure setFilePath (This : in out LicenseInitInfoUtil; filePath : Unbounded_String) is
   begin
        This.filePath := filePath;
   end setFilePath;

   --  throws Exception
   procedure write (This : in out LicenseInitInfoUtil; initData_Param : access LicenseInitInfo_Package.LicenseInitInfo'Class) is
      initData : constant LicenseInitInfo_Access := LicenseInitInfo_Access (initData_Param);
      tsUtil : TsUtil_Access;
      dataOutputStream : AbDataOutputStream_Access;
      licenseIdCrypted : Short_Short_Integer_Array_Access;
      numberOfLicenseServers : Integer;
      licenseServerCrypted : Short_Short_Integer_Array_Access;
      index : Integer;
   begin
        if (This.filePath) = (This.stringUtil.EMPTY_STRING) then
            This.filePath := URLGLOBALS_Package.getMainPath & PATH_GLOBALS_Package.getInstance.INIT_PATH;
        end if;
        begin
            tsUtil := TsUtil_Package.getInstance;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstance (This.filePath, This.INITFILENAME);
            licenseIdCrypted := tsUtil.getByteArray (WeakCrypt_Package.Create (1).encrypt (initData.getLicenseId));
            dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (licenseIdCrypted));
            numberOfLicenseServers := initData.getNumberOfServers;
            dataOutputStream.writeInt (numberOfLicenseServers);
            licenseServerCrypted := null;
            for index in 0 .. (numberOfLicenseServers) - 1 loop
                licenseServerCrypted := tsUtil.getByteArray (WeakCrypt_Package.Create (3).encrypt (initData.getServer (index)));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (licenseServerCrypted));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Command Failed: ") & This.INITFILENAME, LicenseInitInfoUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("write"), e);
            FileStreamFactory_Package.getInstance.delete (This.filePath, This.INITFILENAME);
            Java_Throw (e);
                end;
        end;
   end write;

   --  throws Exception
   function read (This : in out LicenseInitInfoUtil) return LicenseInitInfo_Access is
   begin
        return LicenseInitInfoUtil'Class (This).readAgain (0);
   end read;

   --  throws Exception
   function readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) return LicenseInitInfo_Access is
      METHOD_NAME : Unbounded_String;
      fileStreamFactory : FileStreamFactory_Access;
      iFile : AbFileInputStream_Access;
      iData : AbDataInputStream_Access;
      initInfo : LicenseInitInfo_Access;
      decodedByteArray : Short_Short_Integer_Array_Access;
      licenseIdDecoded : Unbounded_String;
      numberOfLicenseServers : Integer;
      NEXT_FILE : Unbounded_String;
      licenseServerDecoded : Unbounded_String;
      index : Integer;
   begin
        METHOD_NAME := To_Unbounded_String ("readAgain");
        if (This.filePath) = (This.stringUtil.EMPTY_STRING) then
            This.filePath := URLGLOBALS_Package.getMainPath & PATH_GLOBALS_Package.getInstance.INIT_PATH;
        end if;
        begin
            This.logUtil.putF (To_Unbounded_String ("LicenseInitInfo File: ") & This.INITFILENAME, LicenseInitInfoUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            fileStreamFactory := FileStreamFactory_Package.getInstance;
            iFile := fileStreamFactory.getFileInputStreamInstance (This.filePath, This.INITFILENAME);
            if (iFile) /= (null) then
                iData := AbDataInputStream_Package.Create (iFile);
                initInfo := LicenseInitInfo_Package.Create;
                decodedByteArray := DatabaseEncoder_Package.decode (iData.readUTF);
                licenseIdDecoded := Java_New_String (decodedByteArray);
                initInfo.setLicenseId (WeakCrypt_Package.Create (1).decrypt (licenseIdDecoded));
                numberOfLicenseServers := iData.readInt;
                NEXT_FILE := StringMaker_Package.Create.append (CommonLabels_Package.getInstance.NEXT).append (To_Unbounded_String (" License Server From File: ")).toString;
                licenseServerDecoded := Null_Unbounded_String;
                for index in 0 .. (numberOfLicenseServers) - 1 loop
                    decodedByteArray := DatabaseEncoder_Package.decode (iData.readUTF);
                    licenseServerDecoded := Java_New_String (decodedByteArray);
                    initInfo.setServer (WeakCrypt_Package.Create (3).decrypt (licenseServerDecoded), index);
                    This.logUtil.putF (NEXT_FILE & initInfo.getServer (index), LicenseInitInfoUtil_Access'(This'Unchecked_Access), METHOD_NAME);
                end loop;
                return initInfo;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Load License InitInfo: ") & This.INITFILENAME));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            begin
                This.logUtil.put (To_Unbounded_String ("Command Failed: ") & This.INITFILENAME, LicenseInitInfoUtil_Access'(This'Unchecked_Access), METHOD_NAME, e);
            exception
                when Java_Occurrence : others =>
                    declare
                        e2 : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (To_Unbounded_String ("LicenseInitInfo Read Retry: ") & This.INITFILENAME, LicenseInitInfoUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("readAgain()"), e2);
                    end;
            end;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("LicenseInitInfo Read Error: ") & This.INITFILENAME));
                end;
        end;
   end readAgain;

   function getFilePath (This : in out LicenseInitInfoUtil) return Unbounded_String is
   begin
        return This.filePath;
   end getFilePath;

   procedure readAgain (This : in out LicenseInitInfoUtil; initializeCounter : Integer) is
      Java_Result : constant LicenseInitInfo_Access := LicenseInitInfoUtil'Class (This).readAgain (initializeCounter => initializeCounter);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readAgain;

begin
   null;
   instance := LicenseInitInfoUtil_Package.Create;

end org.allbinary.business.init.LicenseInitInfoUtil_Package;


