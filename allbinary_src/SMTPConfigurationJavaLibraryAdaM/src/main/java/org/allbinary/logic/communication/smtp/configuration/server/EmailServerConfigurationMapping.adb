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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package is

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
   subtype EmailServerConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out EmailServerConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfigurationMapping'Class; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) is
      emailServerConfigurationInterface : constant EmailServerConfigurationInterface_Access := EmailServerConfigurationInterface_Access (emailServerConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end Initialize;

   function Create (emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) return EmailServerConfigurationMapping_Access is
      This : constant EmailServerConfigurationMapping_Access := new EmailServerConfigurationMapping;
   begin
      EmailServerConfigurationMapping_Package.Initialize (This.all, emailServerConfigurationInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out EmailServerConfigurationMapping) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (EmailServerConfigurationData_Package.SERVER, This.emailServerConfigurationInterface.getSmtpServer);
        hashMap.put (EmailServerConfigurationData_Package.ACCOUNT, This.emailServerConfigurationInterface.getAccountName);
        hashMap.put (EmailServerConfigurationData_Package.PASSWORD, This.emailServerConfigurationInterface.getPassword);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function getKey (This : in out EmailServerConfigurationMapping) return Java_Object_Access is
   begin
        return EmailServerConfigurationData_Package.NAME;
   end getKey;

   --  throws Exception
   function toVector (This : in out EmailServerConfigurationMapping) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (This.emailServerConfigurationInterface.getSmtpServer);
        return vector;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;


