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


package body org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package is

   procedure Initialize_Fields (This : in out FtpConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FtpConfigurationMapping'Class; ftpConfigurationInterface : FtpConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.ftpConfigurationInterface := ftpConfigurationInterface;
   end Initialize;

   function Create (ftpConfigurationInterface : FtpConfigurationInterface_Access) return FtpConfigurationMapping_Access is
      This : constant FtpConfigurationMapping_Access := new FtpConfigurationMapping;
   begin
      FtpConfigurationMapping_Package.Initialize (This.all, ftpConfigurationInterface);
      return This;
   end Create;

   function toHashMap (This : in out FtpConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (FtpConfigurationData_Package.SERVER, This.ftpConfigurationInterface.getServer);
        hashMap.put (FtpConfigurationData_Package.USERNAME, This.ftpConfigurationInterface.getUserName);
        hashMap.put (FtpConfigurationData_Package.PASSWORD, This.ftpConfigurationInterface.getPassword);
        hashMap.put (FtpConfigurationData_Package.PATH, This.ftpConfigurationInterface.getPath);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out FtpConfigurationMapping) return Java_Object_Access is
   begin
        return FtpConfigurationData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out FtpConfigurationMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.ftpConfigurationInterface.getServer);
        vector.add (This.ftpConfigurationInterface.getUserName);
        vector.add (This.ftpConfigurationInterface.getPassword);
        vector.add (This.ftpConfigurationInterface.getPath);
        return vector;
   end toVector;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;


