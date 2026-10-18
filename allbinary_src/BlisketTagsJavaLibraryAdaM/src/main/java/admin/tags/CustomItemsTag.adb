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


with admin.taghelpers.CustomItemsHelperFactory_Package; use admin.taghelpers.CustomItemsHelperFactory_Package;
with admin.taghelpers.CustomItemsRequestHelperFactory_Package; use admin.taghelpers.CustomItemsRequestHelperFactory_Package;

package body admin.tags.CustomItemsTag_Package is

   package CustomItemsHelperFactory_Package renames Standard.admin.taghelpers.CustomItemsHelperFactory_Package;
   package CustomItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.CustomItemsRequestHelperFactory_Package;
   procedure Initialize_Fields (This : in out CustomItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        CustomItemsTag'Class (This).setTagHelperFactory (CustomItemsHelperFactory_Package.Create);
        CustomItemsTag'Class (This).setTagRequestHelperFactory (CustomItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return CustomItemsTag_Access is
      This : constant CustomItemsTag_Access := new CustomItemsTag;
   begin
      CustomItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.CustomItemsTag_Package;


