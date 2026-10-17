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


package body org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package is

   procedure Initialize_Fields (This : in out AdminConfigurationData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AdminConfigurationData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AdminConfigurationData_Access is
      This : constant AdminConfigurationData_Access := new AdminConfigurationData;
   begin
      AdminConfigurationData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   CONTEXTNAME := To_Unbounded_String ("Admin");

end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationData_Package;


