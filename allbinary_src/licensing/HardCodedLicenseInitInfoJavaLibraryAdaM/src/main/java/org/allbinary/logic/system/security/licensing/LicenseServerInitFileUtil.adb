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



package body org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package is

   procedure Initialize_Fields (This : in out LicenseServerInitFileUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseServerInitFileUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseServerInitFileUtil_Access is
      This : constant LicenseServerInitFileUtil_Access := new LicenseServerInitFileUtil;
   begin
      LicenseServerInitFileUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out LicenseServerInitFileUtil) is
   begin
        null;
   end init;

   procedure write (This : in out LicenseServerInitFileUtil) is
   begin
        null;
   end write;

end org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil_Package;


