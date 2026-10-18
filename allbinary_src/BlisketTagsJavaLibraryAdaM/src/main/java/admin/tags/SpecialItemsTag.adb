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


with admin.taghelpers.SpecialItemsHelperFactory_Package; use admin.taghelpers.SpecialItemsHelperFactory_Package;
with admin.taghelpers.SpecialItemsRequestHelperFactory_Package; use admin.taghelpers.SpecialItemsRequestHelperFactory_Package;

package body admin.tags.SpecialItemsTag_Package is

   package SpecialItemsHelperFactory_Package renames Standard.admin.taghelpers.SpecialItemsHelperFactory_Package;
   package SpecialItemsRequestHelperFactory_Package renames Standard.admin.taghelpers.SpecialItemsRequestHelperFactory_Package;
   procedure Initialize_Fields (This : in out SpecialItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        SpecialItemsTag'Class (This).setTagHelperFactory (SpecialItemsHelperFactory_Package.Create);
        SpecialItemsTag'Class (This).setTagRequestHelperFactory (SpecialItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return SpecialItemsTag_Access is
      This : constant SpecialItemsTag_Access := new SpecialItemsTag;
   begin
      SpecialItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.SpecialItemsTag_Package;


