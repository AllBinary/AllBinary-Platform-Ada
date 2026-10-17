-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationClientInformationFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InputAutomationClientInformationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputAutomationClientInformationFactory_Access is
      This : constant InputAutomationClientInformationFactory_Access := new InputAutomationClientInformationFactory;
   begin
      InputAutomationClientInformationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InputAutomationClientInformation_Access is
   begin
        return InputAutomationClientInformationFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := InputAutomationClientInformation_Package.Create;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;


