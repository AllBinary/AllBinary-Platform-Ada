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


with admin.taghelpers.PermissionItemsHelperFactory_Package; use admin.taghelpers.PermissionItemsHelperFactory_Package;
with admin.taghelpers.PermissionItemsRequestHelperFactory_Package; use admin.taghelpers.PermissionItemsRequestHelperFactory_Package;

package body admin.tags.PermissionItemsTag_Package is

   package PermissionItemsHelperFactory_Package renames Standard.admin.taghelpers.PermissionItemsHelperFactory_Package;
   package PermissionItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.PermissionItemsRequestHelperFactory_Package;
   procedure Initialize_Fields (This : in out PermissionItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PermissionItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        PermissionItemsTag'Class (This).setTagHelperFactory (PermissionItemsHelperFactory_Package.Create);
        PermissionItemsTag'Class (This).setTagRequestHelperFactory (PermissionItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return PermissionItemsTag_Access is
      This : constant PermissionItemsTag_Access := new PermissionItemsTag;
   begin
      PermissionItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.PermissionItemsTag_Package;


