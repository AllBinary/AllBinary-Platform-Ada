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


package body org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package is

   procedure Initialize_Fields (This : in out FtpConfigurationData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FtpConfigurationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FtpConfigurationData_Access is
      This : constant FtpConfigurationData_Access := new FtpConfigurationData;
   begin
      FtpConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("FTP_NAME");
   SERVER := To_Unbounded_String ("FTP_SERVER");
   PATH := To_Unbounded_String ("FTP_PATH");
   USERNAME := To_Unbounded_String ("FTP_USERNAME");
   PASSWORD := To_Unbounded_String ("FTP_PASSWORD");

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;


