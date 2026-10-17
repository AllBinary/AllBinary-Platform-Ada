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


package body org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package is

   procedure Initialize_Fields (This : in out FtpConfiguration'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out FtpConfiguration'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FtpConfiguration_Access is
      This : constant FtpConfiguration_Access := new FtpConfiguration;
   begin
      FtpConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out FtpConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.ftpServer := Unbounded_String (hashMap.get (FtpConfigurationData_Package.SERVER));
        This.ftpPath := Unbounded_String (hashMap.get (FtpConfigurationData_Package.PATH));
        This.ftpUserName := Unbounded_String (hashMap.get (FtpConfigurationData_Package.USERNAME));
        This.ftpPassword := Unbounded_String (hashMap.get (FtpConfigurationData_Package.PASSWORD));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return FtpConfiguration_Access is
      This : constant FtpConfiguration_Access := new FtpConfiguration;
   begin
      FtpConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getServer (This : in out FtpConfiguration) return Unbounded_String is
   begin
        return This.ftpServer;
   end getServer;

   function getPath (This : in out FtpConfiguration) return Unbounded_String is
   begin
        return This.ftpPath;
   end getPath;

   function getUserName (This : in out FtpConfiguration) return Unbounded_String is
   begin
        return This.ftpUserName;
   end getUserName;

   function getPassword (This : in out FtpConfiguration) return Unbounded_String is
   begin
        return This.ftpPassword;
   end getPassword;

   procedure setServer (This : in out FtpConfiguration; value : Unbounded_String) is
   begin
        This.ftpServer := value;
   end setServer;

   procedure setPath (This : in out FtpConfiguration; value : Unbounded_String) is
   begin
        This.ftpPath := value;
   end setPath;

   procedure setUserName (This : in out FtpConfiguration; value : Unbounded_String) is
   begin
        This.ftpUserName := value;
   end setUserName;

   procedure setPassword (This : in out FtpConfiguration; value : Unbounded_String) is
   begin
        This.ftpPassword := value;
   end setPassword;

end org.allbinary.logic.communication.ftp.configuration.FtpConfiguration_Package;


