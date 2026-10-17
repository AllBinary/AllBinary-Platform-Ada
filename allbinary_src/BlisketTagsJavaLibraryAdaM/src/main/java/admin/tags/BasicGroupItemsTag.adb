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


package body admin.tags.BasicGroupItemsTag_Package is

   procedure Initialize_Fields (This : in out BasicGroupItemsTag'Class) is
   begin
      null;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGroupItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (BasicGroupItemsHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (BasicGroupItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return BasicGroupItemsTag_Access is
      This : constant BasicGroupItemsTag_Access := new BasicGroupItemsTag;
   begin
      BasicGroupItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.BasicGroupItemsTag_Package;


