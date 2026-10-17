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


package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package is

   procedure Initialize_Fields (This : in out EmailServerConfigurationMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfigurationMapping'Class; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end Initialize;

   function Create (emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) return EmailServerConfigurationMapping_Access is
      This : constant EmailServerConfigurationMapping_Access := new EmailServerConfigurationMapping;
   begin
      Initialize (This.all, emailServerConfigurationInterface);
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
        vector := BasicArrayListD_Package.Create;
        vector.add (This.emailServerConfigurationInterface.getSmtpServer);
        return vector;
   end toVector;

   procedure toHashMap (This : in out EmailServerConfigurationMapping) is
      Java_Result : constant HashMap_Access := EmailServerConfigurationMapping'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getKey (This : in out EmailServerConfigurationMapping) is
      Java_Result : constant Java_Object_Access := EmailServerConfigurationMapping'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure toVector (This : in out EmailServerConfigurationMapping) is
      Java_Result : constant BasicArrayList_Access := EmailServerConfigurationMapping'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;


