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


package body org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package is

   procedure Initialize_Fields (This : in out EmailServerConfigurationData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailServerConfigurationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EmailServerConfigurationData_Access is
      This : constant EmailServerConfigurationData_Access := new EmailServerConfigurationData;
   begin
      EmailServerConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("EMAIL_SERVER_CONFIGURATION_NAME");
   SERVER := To_Unbounded_String ("EMAIL_SERVER_CONFIGURATION_SERVER");
   ACCOUNT := To_Unbounded_String ("EMAIL_SERVER_CONFIGURATION_ACCOUNT");
   PASSWORD := To_Unbounded_String ("EMAIL_SERVER_CONFIGURATION_PASSWORD");

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;


