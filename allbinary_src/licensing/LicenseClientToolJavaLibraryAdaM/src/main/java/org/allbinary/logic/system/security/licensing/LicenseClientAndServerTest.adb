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


package body org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package is

   procedure Initialize_Fields (This : in out LicenseClientAndServerTest'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.vector := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out LicenseClientAndServerTest'Class; options : Unbounded_String_Array_Access) is
      index : Integer;
      file : File_Access;
      reader : FileReader_Access;
      lineNumberReader : LineNumberReader_Access;
      line : Unbounded_String;
   begin
      Initialize_Fields (This);
        LicenseInitInfoUtil_Package.getInstance.setFilePath ((PrintLicenseInitInfo_Package.PATH) + (PATH_GLOBALS.getInstance.INIT_PATH));
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
      Initialize (This.all, options);
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
            list := BasicArrayListD_Package.Create;
            TESTING := To_Unbounded_String ("Testing with new licence:<br/>");
            PROCESSING := To_Unbounded_String ("Processing: <br/>");
            END_Id := To_Unbounded_String ("<br/>End<br/>");
            RESULT := To_Unbounded_String ("Test Result: ");
            size := This.vector.size;
            for index in 0 .. (size) - 1 loop
                stringBuffer.append (TESTING);
                serverName := Unbounded_String (This.vector.get (index));
                begin
                    licenseInitInfo := LicenseInitInfo_Package.Create;
                    licenseInitInfo.addServer (serverName);
                    LicenseInitInfoUtil_Package.getInstance.write (licenseInitInfo);
                    abeClientInformation := AbeClientInformationInterfaceFactory_Package.getInstance;
                    xmlRpcAbeLicenseClient := XmlRpcAbeLicenseRetrievalClient_Package.Create (abeClientInformation);
                    abeLicenseInterface := AbeLicenseInterface_Access (xmlRpcAbeLicenseClient.get (null));
                    if (abeLicenseInterface) /= (null) then
                        stringBuffer.append (PROCESSING);
                        stringBuffer.append (abeLicenseInterface.toString);
                    end if;
                    stringBuffer.append (END_Id);
                    This.logUtil.putF (RESULT & stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("test"));
                    stringBuffer.delete (0, stringBuffer.length);
                exception
                    when e : others =>
                    list.add (serverName);
                    This.logUtil.put (To_Unbounded_String ("Test Error: ") & stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("test"), e);
                end;
            end loop;
            This.logUtil.putF (To_Unbounded_String ("Total Servers Failed: ") & Java_Image (list.size) & To_Unbounded_String (" Failed Servers: ") & list.toString, This'Unchecked_Access, To_Unbounded_String ("test"));
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Test Error: ") & stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("test"), e);
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
            when e : others =>
            logUtil := LogUtil_Package.getInstance;
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, To_Unbounded_String ("main()"), To_Unbounded_String ("main()"), e);
        end;
   end main;

end org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package;


