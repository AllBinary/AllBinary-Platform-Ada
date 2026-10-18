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


package body admin.tags.XmlOptionItemsTag_Package is

   procedure Initialize_Fields (This : in out XmlOptionItemsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlOptionItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        XmlOptionItemsTag'Class (This).setTagHelperFactory (XmlOptionItemsHelperFactory_Package.Create);
        XmlOptionItemsTag'Class (This).setTagRequestHelperFactory (XmlOptionItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return XmlOptionItemsTag_Access is
      This : constant XmlOptionItemsTag_Access := new XmlOptionItemsTag;
   begin
      XmlOptionItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

end admin.tags.XmlOptionItemsTag_Package;


