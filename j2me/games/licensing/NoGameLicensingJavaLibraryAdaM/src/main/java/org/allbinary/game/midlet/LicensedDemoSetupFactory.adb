-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.midlet.LicensedDemoSetupFactory_Package is

   procedure Initialize_Fields (This : in out LicensedDemoSetupFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicensedDemoSetupFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicensedDemoSetupFactory_Access is
      This : constant LicensedDemoSetupFactory_Access := new LicensedDemoSetupFactory;
   begin
      LicensedDemoSetupFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LicensedDemoSetupFactory) return DemoSetup_Access is
   begin
        return DemoSetup_Package.Create;
   end getInstance;

end org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;


