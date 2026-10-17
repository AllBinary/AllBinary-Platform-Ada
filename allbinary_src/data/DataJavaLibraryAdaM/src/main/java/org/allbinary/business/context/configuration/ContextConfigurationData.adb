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


package body org.allbinary.business.context.configuration.ContextConfigurationData_Package is

   procedure Initialize_Fields (This : in out ContextConfigurationData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("CONTEXT_CONFIGURATION_NAME");
      This.UNCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.UNCRYPTED_EXTENSION;
      This.ENCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.ENCRYPTED_EXTENSION;
   end Initialize_Fields;


   function getInstance return ContextConfigurationData_Access is
   begin
        return ContextConfigurationData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ContextConfigurationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ContextConfigurationData_Access is
      This : constant ContextConfigurationData_Access := new ContextConfigurationData;
   begin
      ContextConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := ContextConfigurationData_Package.Create;

end org.allbinary.business.context.configuration.ContextConfigurationData_Package;


