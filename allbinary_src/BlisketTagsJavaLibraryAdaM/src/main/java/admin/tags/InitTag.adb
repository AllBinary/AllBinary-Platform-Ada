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


package body admin.tags.InitTag_Package is

   procedure Initialize_Fields (This : in out InitTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InitTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (InitHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (InitHelperFactory_Package.Create);
   end Initialize;

   function Create return InitTag_Access is
      This : constant InitTag_Access := new InitTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

end admin.tags.InitTag_Package;


