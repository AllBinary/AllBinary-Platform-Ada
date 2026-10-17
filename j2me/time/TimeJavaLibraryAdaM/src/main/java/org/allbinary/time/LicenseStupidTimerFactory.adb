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


package body org.allbinary.time.LicenseStupidTimerFactory_Package is

   procedure Initialize_Fields (This : in out LicenseStupidTimerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseStupidTimerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseStupidTimerFactory_Access is
      This : constant LicenseStupidTimerFactory_Access := new LicenseStupidTimerFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return StupidTimer_Access is
   begin
        return LicenseStupidTimerFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant StupidTimer_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StupidTimer_Package.Create;

end org.allbinary.time.LicenseStupidTimerFactory_Package;


