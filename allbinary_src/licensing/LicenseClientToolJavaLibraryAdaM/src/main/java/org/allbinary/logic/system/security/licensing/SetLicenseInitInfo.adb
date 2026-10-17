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


package body org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package is

   procedure Initialize_Fields (This : in out SetLicenseInitInfo'Class) is
   begin
      null;
      This.vector := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out SetLicenseInitInfo'Class; options : Unbounded_String_Array_Access) is
      index : Integer;
   begin
      Initialize_Fields (This);
        LicenseInitInfoUtil_Package.getInstance.setFilePath ((PrintLicenseInitInfo_Package.PATH) + (PATH_GLOBALS.getInstance.INIT_PATH));
        for index in 1 .. (options'Length) - 1 loop
            This.vector.add (options (index));
        end loop;
   end Initialize;

   function Create (options : Unbounded_String_Array_Access) return SetLicenseInitInfo_Access is
      This : constant SetLicenseInitInfo_Access := new SetLicenseInitInfo;
   begin
      SetLicenseInitInfo_Package.Initialize (This.all, options);
      return This;
   end Create;

   --  throws Exception
   function getLicenseInitInfo (This : in out SetLicenseInitInfo) return LicenseInitInfo_Access is
      licenseInitInfoUtil : LicenseInitInfoUtil_Access;
   begin
        licenseInitInfoUtil := LicenseInitInfoUtil_Package.getInstance;
        if FileFactory_Package.getInstance.isFile (licenseInitInfoUtil.INITFILENAME) then
            return licenseInitInfoUtil.read;
        else
            return LicenseInitInfo_Package.Create;
        end if;
   end getLicenseInitInfo;

   procedure createNewLicenseInitInfo (This : in out SetLicenseInitInfo; licenceServerVector : BasicArrayList_Access) is
      licenseInitInfo : LicenseInitInfo_Access;
      file : File_Access;
      reader : FileReader_Access;
      lineNumberReader : LineNumberReader_Access;
      line : Unbounded_String;
   begin
        begin
            if (licenceServerVector) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("null BasicArrayList Passed - Just Make Empty if you want")));
            end if;
            licenseInitInfo := This.getLicenseInitInfo;
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("License Serv Example: http://www.dartstatistics.com/LicServ/serverssl.php")));
            licenseInitInfo.clearServers;
            file := File_Package.Create (Java_Image (PrintLicenseInitInfo_Package.PATH) & To_Unbounded_String ("licenseservers.txt"));
            reader := FileReader_Package.Create (file);
            lineNumberReader := LineNumberReader_Package.Create (reader);
            while True loop
                line := lineNumberReader.readLine;
                if (line) /= (Null_Unbounded_String) then
                    licenseInitInfo.addServer (line);
                else
                    exit;
                end if;
            end loop;
            LicenseInitInfoUtil_Package.getInstance.write (licenseInitInfo);
            LicenseInitInfoUtil_Package.getInstance.read;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e)));
            Java_Print_Stack_Trace (e);
                end;
        end;
   end createNewLicenseInitInfo;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
      initInfo : SetLicenseInitInfo_Access;
   begin
        initInfo := SetLicenseInitInfo_Package.Create (args);
        initInfo.createNewLicenseInitInfo (BasicArrayListD_Package.Create);
   end main;

begin
   null;
   stdinput := BufferedReader_Package.Create (InputStreamReader_Package.Create (System_Package.in_Id));

end org.allbinary.logic.system.security.licensing.SetLicenseInitInfo_Package;


