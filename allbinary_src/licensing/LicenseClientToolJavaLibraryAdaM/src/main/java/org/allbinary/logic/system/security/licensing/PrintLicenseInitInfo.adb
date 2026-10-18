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


with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.io.file.FileFactory_Package; use org.allbinary.logic.io.file.FileFactory_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package is

   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package FileFactory_Package renames Standard.org.allbinary.logic.io.file.FileFactory_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out PrintLicenseInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PrintLicenseInitInfo'Class; options : Unbounded_String_Array_Access) is
   begin
      Initialize_Fields (This);
        LicenseInitInfoUtil_Package.getInstance.setFilePath ((PrintLicenseInitInfo_Package.PATH) + (PATH_GLOBALS_Package.getInstance.INIT_PATH));
   end Initialize;

   function Create (options : Unbounded_String_Array_Access) return PrintLicenseInitInfo_Access is
      This : constant PrintLicenseInitInfo_Access := new PrintLicenseInitInfo;
   begin
      PrintLicenseInitInfo_Package.Initialize (This.all, options);
      return This;
   end Create;

   --  throws Exception
   function getLicenseInitInfo (This : in out PrintLicenseInitInfo) return LicenseInitInfo_Access is
      licenseInitInfoUtil : LicenseInitInfoUtil_Access;
   begin
        licenseInitInfoUtil := LicenseInitInfoUtil_Package.getInstance;
        if FileFactory_Package.getInstance.isFile (licenseInitInfoUtil.getFilePath) then
            return licenseInitInfoUtil.read;
        else
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("No Licence File at: ") & Java_Image (licenseInitInfoUtil.getFilePath)));
            return LicenseInitInfo_Package.Create;
        end if;
   end getLicenseInitInfo;

   procedure printInitInfo (This : in out PrintLicenseInitInfo) is
      licenseInitInfo : LicenseInitInfo_Access;
      list : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        begin
            licenseInitInfo := PrintLicenseInitInfo'Class (This).getLicenseInitInfo;
            Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("License ID: ") & Java_Image (licenseInitInfo.getLicenseId)));
            list := licenseInitInfo.getServerList;
            size := list.size;
            for index in 0 .. (size) - 1 loop
                Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("Lic Serv: ") & Java_Image (list.get (index))));
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Ada.Text_IO.Put (Java_Image (To_Unbounded_String ("Error: ") & Java_Image (e)));
            Java_Print_Stack_Trace (e);
                end;
        end;
   end printInitInfo;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
      initInfo : PrintLicenseInitInfo_Access;
   begin
        initInfo := PrintLicenseInitInfo_Package.Create (args);
        initInfo.printInitInfo;
   end main;

begin
   null;
   PATH := To_Unbounded_String ("G:\mnt\bc\mydev\work\allbinary_src\licensing\data\");

end org.allbinary.logic.system.security.licensing.PrintLicenseInitInfo_Package;


