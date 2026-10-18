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


with admin.taghelpers.AdminConfigurationHelperFactory_Package; use admin.taghelpers.AdminConfigurationHelperFactory_Package;
with admin.taghelpers.AdminConfigurationRequestHelperFactory_Package; use admin.taghelpers.AdminConfigurationRequestHelperFactory_Package;

package body admin.tags.AdminConfigurationTag_Package is

   package AdminConfigurationHelperFactory_Package renames Standard.admin.taghelpers.AdminConfigurationHelperFactory_Package;
   package AdminConfigurationRequestHelperFactory_Package renames Standard.admin.taghelpers.AdminConfigurationRequestHelperFactory_Package;
   procedure Initialize_Fields (This : in out AdminConfigurationTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdminConfigurationTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        AdminConfigurationTag'Class (This).setTagHelperFactory (AdminConfigurationHelperFactory_Package.Create);
        AdminConfigurationTag'Class (This).setTagRequestHelperFactory (AdminConfigurationRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return AdminConfigurationTag_Access is
      This : constant AdminConfigurationTag_Access := new AdminConfigurationTag;
   begin
      AdminConfigurationTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.AdminConfigurationTag_Package;


