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


package body org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out ServiceClientInformationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ServiceClientInformationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ServiceClientInformationInterfaceFactory_Access is
      This : constant ServiceClientInformationInterfaceFactory_Access := new ServiceClientInformationInterfaceFactory;
   begin
      ServiceClientInformationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbeClientInformationInterface_Access is
   begin
        return ServiceClientInformationInterfaceFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := TestClientInformation_Package.Create;

end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;


