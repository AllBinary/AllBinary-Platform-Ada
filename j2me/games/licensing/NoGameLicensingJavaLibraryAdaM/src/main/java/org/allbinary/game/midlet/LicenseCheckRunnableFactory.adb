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


package body org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package is

   procedure Initialize_Fields (This : in out LicenseCheckRunnableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseCheckRunnableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseCheckRunnableFactory_Access is
      This : constant LicenseCheckRunnableFactory_Access := new LicenseCheckRunnableFactory;
   begin
      LicenseCheckRunnableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet : SpecialDemoGameMidlet_Access) return ABRunnable_Access is
   begin
        return NullABRunnable_Package.getInstance;
   end getInstance;

   procedure getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet : SpecialDemoGameMidlet_Access) is
      Java_Result : constant ABRunnable_Access := LicenseCheckRunnableFactory'Class (This).getInstance (specialDemoGameMidlet);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;


