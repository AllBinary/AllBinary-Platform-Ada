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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package is

   procedure Initialize_Fields (This : in out UserEmailEventConfigurationData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventConfigurationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserEmailEventConfigurationData_Access is
      This : constant UserEmailEventConfigurationData_Access := new UserEmailEventConfigurationData;
   begin
      UserEmailEventConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("EMAIL_EVENT_CONFIGURATION_NAME");
   LISTENER_CLASSPATH := To_Unbounded_String ("EMAIL_EVENT_CONFIGURATION_LISTENER_CLASSPATH");

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;


