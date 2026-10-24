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


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package; use org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.logic.system.security.licensing.BasicArrayListD_Package; use org.allbinary.logic.system.security.licensing.BasicArrayListD_Package;
with org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package; use org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterface_Package;

package body org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package is

   package File_Package renames Standard.java.io.File_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package XmlRpcAbeLicenseRetrievalClient_Package renames Standard.org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   procedure Initialize_Fields (This : in out LicenseClientAndServerTest'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseClientAndServerTest'Class; options : Unbounded_String_Array_Access) is
      index : Integer;
      file : File_Access;
      reader : FileReader_Access;
      lineNumberReader : LineNumberReader_Access;
      line : Unbounded_String;
   begin
      Initialize_Fields (This);
        LicenseInitInfoUtil_Package.getInstance.setFilePath ((PrintLicenseInitInfo_Package.PATH) + (PATH_GLOBALS_Package.getInstance.INIT_PATH));
        for index in 1 .. (options'Length) - 1 loop
            This.vector.add (options (index));
        end loop;
        if (options'Length) < (2) then
            file := File_Package.Create (Java_Image (PrintLicenseInitInfo_Package.PATH) & To_Unbounded_String ("testlicenseservers.txt"));
            reader := FileReader_Package.Create (file);
            lineNumberReader := LineNumberReader_Package.Create (reader);
            while True loop
                line := lineNumberReader.readLine;
                if (line) /= (Null_Unbounded_String) then
                    This.vector.add (line);
                else
                    exit;
                end if;
            end loop;
        end if;
   end Initialize;

   function Create (options : Unbounded_String_Array_Access) return LicenseClientAndServerTest_Access is
      This : constant LicenseClientAndServerTest_Access := new LicenseClientAndServerTest;
   begin
      LicenseClientAndServerTest_Package.Initialize (This.all, options);
      return This;
   end Create;

   procedure test (This : in out LicenseClientAndServerTest) is
      stringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      TESTING : Unbounded_String;
      PROCESSING : Unbounded_String;
      END_Id : Unbounded_String;
      RESULT : Unbounded_String;
      size : Integer;
      serverName : Unbounded_String;
      licenseInitInfo : LicenseInitInfo_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      xmlRpcAbeLicenseClient : XmlRpcAbeLicenseRetrievalClient_Access;
      abeLicenseInterface : AbeLicenseInterface_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        begin
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            TESTING := To_Unbounded_String ("Testing with new licence:<br/>");
            PROCESSING := To_Unbounded_String ("Processing: <br/>");
            END_Id := To_Unbounded_String ("<br/>End<br/>");
            RESULT := To_Unbounded_String ("Test Result: ");
            size := This.vector.size;
            for index in 0 .. (size) - 1 loop
                stringBuffer.append (TESTING);
                serverName := Java_Unbox (This.vector.get (index));
                begin
                    licenseInitInfo := LicenseInitInfo_Package.Create;
                    licenseInitInfo.addServer (serverName);
                    LicenseInitInfoUtil_Package.getInstance.write (licenseInitInfo);
                    abeClientInformation := AbeClientInformationInterface_Access (AbeClientInformationInterfaceFactory_Package.getInstance);
                    xmlRpcAbeLicenseClient := XmlRpcAbeLicenseRetrievalClient_Package.Create (abeClientInformation);
                    abeLicenseInterface := AbeLicenseInterface_Access (xmlRpcAbeLicenseClient.get (null));
                    if (abeLicenseInterface) /= (null) then
                        stringBuffer.append (PROCESSING);
                        stringBuffer.append (Java_Object'Class (abeLicenseInterface.all).toString);
                    end if;
                    stringBuffer.append (END_Id);
                    This.logUtil.putF (RESULT & stringBuffer.toString, LicenseClientAndServerTest_Access'(This'Unchecked_Access), To_Unbounded_String ("test"));
                    stringBuffer.delete (0, stringBuffer.length);
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    list.add (serverName);
                    This.logUtil.put (To_Unbounded_String ("Test Error: ") & stringBuffer.toString, LicenseClientAndServerTest_Access'(This'Unchecked_Access), To_Unbounded_String ("test"), e);
                        end;
                end;
            end loop;
            This.logUtil.putF (To_Unbounded_String ("Total Servers Failed: ") & Java_Image (list.size) & To_Unbounded_String (" Failed Servers: ") & list.toString, LicenseClientAndServerTest_Access'(This'Unchecked_Access), To_Unbounded_String ("test"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Test Error: ") & stringBuffer.toString, LicenseClientAndServerTest_Access'(This'Unchecked_Access), To_Unbounded_String ("test"), e);
                end;
        end;
   end test;

   procedure main (args : Unbounded_String_Array_Access) is
      licensingTest : LicenseClientAndServerTest_Access;
      logUtil : LogUtil_Access;
   begin
        begin
            licensingTest := LicenseClientAndServerTest_Package.Create (args);
            licensingTest.test;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, Java_Box (To_Unbounded_String ("main()")), To_Unbounded_String ("main()"), e);
                end;
        end;
   end main;

end org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package;


