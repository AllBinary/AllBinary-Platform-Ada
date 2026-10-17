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


package body admin.tags.UpdateOrderTag_Package is

   procedure Initialize_Fields (This : in out UpdateOrderTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateOrderTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (UpdateOrderHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (UpdateOrderHelperFactory_Package.Create);
   end Initialize;

   function Create return UpdateOrderTag_Access is
      This : constant UpdateOrderTag_Access := new UpdateOrderTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

end admin.tags.UpdateOrderTag_Package;


