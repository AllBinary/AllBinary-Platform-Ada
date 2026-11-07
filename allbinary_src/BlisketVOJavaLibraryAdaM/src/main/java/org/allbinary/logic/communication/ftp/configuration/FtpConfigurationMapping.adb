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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package; use org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;

package body org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype FtpConfigurationInterface_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out FtpConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FtpConfigurationMapping'Class; ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) is
      ftpConfigurationInterface : constant FtpConfigurationInterface_Access := FtpConfigurationInterface_Access (ftpConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.ftpConfigurationInterface := ftpConfigurationInterface;
   end Initialize;

   function Create (ftpConfigurationInterface_Param : access FtpConfigurationInterface_Package.FtpConfigurationInterface'Class) return FtpConfigurationMapping_Access is
      This : constant FtpConfigurationMapping_Access := new FtpConfigurationMapping;
   begin
      FtpConfigurationMapping_Package.Initialize (This.all, ftpConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out FtpConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (FtpConfigurationData_Package.SERVER, Java_Box (This.ftpConfigurationInterface.getServer));
        hashMap.put (FtpConfigurationData_Package.USERNAME, Java_Box (This.ftpConfigurationInterface.getUserName));
        hashMap.put (FtpConfigurationData_Package.PASSWORD, Java_Box (This.ftpConfigurationInterface.getPassword));
        hashMap.put (FtpConfigurationData_Package.PATH, Java_Box (This.ftpConfigurationInterface.getPath));
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
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (This.ftpConfigurationInterface.getServer);
        vector.add (This.ftpConfigurationInterface.getUserName);
        vector.add (This.ftpConfigurationInterface.getPassword);
        vector.add (This.ftpConfigurationInterface.getPath);
        return vector;
   end toVector;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationMapping_Package;


